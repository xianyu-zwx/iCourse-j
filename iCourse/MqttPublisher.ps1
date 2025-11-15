<#
.SYNOPSIS
MQTT Message Publish Script (Stable Version)
Supports fixed/increment/cycle modes, no encoding issues, with logging/statistics/retry.
Press Ctrl+C to exit gracefully.
#>

###########################################################################
# [Core Configuration] Modify before running
###########################################################################
# Basic Connection Settings
$mosquittoPubPath = "D:\Program Files\mosquitto\mosquitto_pub.exe"
$broker = "127.0.0.1"
$port = 1883
$attendanceTopic = "/classroom/face"
$environmentTopic = "/classroom/sensors"
$intervalSeconds = 1
$qosLevel = 0  # 与ESP32保持一致的QoS级别

# Function Switches
$enableAttendanceMsg = $true
$enableEnvironmentMsg = $true
$enableLogToFile = $true
$enableDebugMode = $false

# Attendance Message Config
$faceId_Init = 1
$faceId_IsIncrement = $false
$deviceId_Init = 1
$deviceId_IsIncrement = $false
$deviceId_Format = "D3"
$visualMode_Options = @(0, 1)  # 修正为数字类型，与ESP32的visualMode保持一致
$visualMode_InitIndex = 0
$visualMode_IsCycle = $false

# Environment Message Config
$temp_Min = 15.0
$temp_Max = 30.0
$humidity_Min = 30.0
$humidity_Max = 80.0
$co2_Min = 400
$co2_Max = 2000
$light_Options = @("good", "bad")  # 字符串类型，对应ESP32的light_condition

# Log Config
$logDir = ".\mqtt_publish_logs"
$logFileName = "mqtt_pub_$(Get-Date -Format 'yyyyMMdd_HHmmss').log"
$logFilePath = Join-Path $logDir $logFileName

###########################################################################
# Global Variables (Fixed Initialization)
###########################################################################
$global:statistic = @{
    TotalSend = 0
    Success = 0
    Failed = 0
    AttendanceCount = 0
    EnvironmentCount = 0
}
# Fix: Compress Ticks to Int32 range with modulo
$tickMod = [int]((Get-Date).Ticks % [Int32]::MaxValue)
$global:currentValues = @{
    FaceId = $faceId_Init
    DeviceId = $deviceId_Init
    VisualModeIndex = $visualMode_InitIndex
    Random = New-Object System.Random($tickMod)
}

###########################################################################
# Utility Functions
###########################################################################
<# Function: Log Output #>
function Write-Log {
    param(
        [string]$Message,
        [ValidateSet("Info", "Error", "Debug", "Success")]$Level = "Info"
    )
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss.fff"
    $logLine = "[$timestamp] [$Level] $Message"

    # Console Output
    switch ($Level) {
        "Info" { Write-Host $logLine -ForegroundColor Gray }
        "Success" { Write-Host $logLine -ForegroundColor Green }
        "Error" { Write-Host $logLine -ForegroundColor Red }
        "Debug" { if ($enableDebugMode) { Write-Host $logLine -ForegroundColor Cyan } }
    }

    # File Output (UTF-8)
    if ($enableLogToFile) {
        if (-not (Test-Path $logDir)) {
            New-Item -Path $logDir -ItemType Directory -Force | Out-Null
        }
        Add-Content -Path $logFilePath -Value $logLine -Encoding UTF8 -Force
    }
}

<# Function: Config Validation #>
function Test-Config {
    $isValid = $true

    # Check mosquitto_pub Path
    if (-not (Test-Path $mosquittoPubPath -PathType Leaf)) {
        Write-Log "mosquitto_pub.exe not found. Path: $mosquittoPubPath" "Error"
        $isValid = $false
    }

    # Check Port Range
    if ($port -lt 1 -or $port -gt 65535) {
        Write-Log "Invalid port (1-65535). Current: $port" "Error"
        $isValid = $false
    }

    # Check Interval
    if ($intervalSeconds -lt 0.1) {
        Write-Log "Invalid interval (min 0.1s). Current: $intervalSeconds" "Error"
        $isValid = $false
    }

    # Check QoS Level
    if ($qosLevel -notin 0,1,2) {
        Write-Log "Invalid QoS (0/1/2). Current: $qosLevel" "Error"
        $isValid = $false
    }

    # Check Non-Negative Init Values
    if ($faceId_Init -lt 0 -or $deviceId_Init -lt 0) {
        Write-Log "faceId/deviceId init value cannot be negative" "Error"
        $isValid = $false
    }

    # Check VisualMode Index
    if ($visualMode_InitIndex -lt 0 -or $visualMode_InitIndex -ge $visualMode_Options.Count) {
        Write-Log "Invalid visualMode index (0-$($visualMode_Options.Count-1))" "Error"
        $isValid = $false
    }

    return $isValid
}

<# Function: Generate Next Values #>
function Get-NextValues {
    # FaceId
    $nextFaceId = if ($faceId_IsIncrement) { $global:currentValues.FaceId + 1 } else { $global:currentValues.FaceId }

    # DeviceId (With Format)
    $nextDeviceId = if ($deviceId_IsIncrement) { $global:currentValues.DeviceId + 1 } else { $global:currentValues.DeviceId }
    $formattedDeviceId = $nextDeviceId.ToString($deviceId_Format)

    # VisualMode
    $nextVisualIndex = if ($visualMode_IsCycle) {
        ($global:currentValues.VisualModeIndex + 1) % $visualMode_Options.Count
    } else {
        $global:currentValues.VisualModeIndex
    }
    $currentVisual = $visualMode_Options[$nextVisualIndex]

    # Update Global Values
    $global:currentValues.FaceId = $nextFaceId
    $global:currentValues.DeviceId = $nextDeviceId
    $global:currentValues.VisualModeIndex = $nextVisualIndex

    return @{
        FaceId = $nextFaceId
        FormattedDeviceId = $formattedDeviceId
        VisualMode = $currentVisual
    }
}

<# Function: Send MQTT Message (With Retry) #>
function Send-MqttMessage {
    param(
        [string]$Topic,
        [string]$Message,
        [string]$MsgType
    )
    $maxRetry = 3
    $retryCount = 0
    $isSuccess = $false

    while ($retryCount -lt $maxRetry -and -not $isSuccess) {
        try {
            $processStartInfo = New-Object System.Diagnostics.ProcessStartInfo
            $processStartInfo.FileName = $mosquittoPubPath
            $processStartInfo.Arguments = "-h $broker -p $port -t `"$Topic`" -m `"$Message`" -q $qosLevel"
            $processStartInfo.RedirectStandardError = $true
            $processStartInfo.UseShellExecute = $false
            $processStartInfo.CreateNoWindow = $true

            $process = [System.Diagnostics.Process]::Start($processStartInfo)
            $process.WaitForExit()
            $errorMsg = $process.StandardError.ReadToEnd()

            if ($process.ExitCode -eq 0) {
                $isSuccess = $true
                Write-Log "[$MsgType] Success | Topic: $Topic | Msg: $Message" "Success"
                Write-Log "[$MsgType] Cmd: $($processStartInfo.Arguments)" "Debug"
            } else {
                $retryCount++
                Write-Log "[$MsgType] Failed (Retry $retryCount/$maxRetry) | Error: $errorMsg" "Error"
                if ($retryCount -lt $maxRetry) { Start-Sleep -Milliseconds 500 }
            }
        }
        catch {
            $retryCount++
            Write-Log "[$MsgType] Exception (Retry $retryCount/$maxRetry) | Msg: $($_.Exception.Message)" "Error"
            if ($retryCount -lt $maxRetry) { Start-Sleep -Milliseconds 500 }
        }
    }

    # Update Statistics
    $global:statistic.TotalSend++
    if ($isSuccess) {
        $global:statistic.Success++
        if ($MsgType -eq "Attendance") { $global:statistic.AttendanceCount++ }
        if ($MsgType -eq "Environment") { $global:statistic.EnvironmentCount++ }
    } else {
        $global:statistic.Failed++
    }

    return $isSuccess
}

###########################################################################
# Main Program
###########################################################################
# 1. Initialization Check
Write-Log "=== MQTT Publisher Started ===" "Info"
if (-not (Test-Config)) {
    Write-Log "Config validation failed. Exit." "Error"
    exit 1
}

# 2. Show Config
Write-Log "=== Running Config ===" "Info"
$faceIdMode = if ($faceId_IsIncrement) { "Increment" } else { "Fixed" }
$deviceIdMode = if ($deviceId_IsIncrement) { "Increment" } else { "Fixed" }
$attendanceStatus = if ($enableAttendanceMsg) { "Enabled" } else { "Disabled" }
$environmentStatus = if ($enableEnvironmentMsg) { "Enabled" } else { "Disabled" }
$logStatus = if ($enableLogToFile) { "Enabled (Path: $logFilePath)" } else { "Disabled" }
$debugStatus = if ($enableDebugMode) { "Enabled" } else { "Disabled" }

Write-Log "Broker: ${broker}:${port} | QoS: ${qosLevel} | Interval: ${intervalSeconds}s" "Info"
Write-Log "Attendance: ${attendanceStatus} | FaceId: ${faceIdMode} (${faceId_Init}) | DeviceId: ${deviceIdMode} (${deviceId_Init}) (Format: ${deviceId_Format})" "Info"
Write-Log "Environment: ${environmentStatus} | Temp: ${temp_Min}-${temp_Max}℃ | Humidity: ${humidity_Min}-${humidity_Max}% | CO2: ${co2_Min}-${co2_Max}ppm" "Info"
Write-Log "Log: ${logStatus} | Debug: ${debugStatus}" "Info"
Write-Log "====================================`n" "Info"

# 3. Ctrl+C Handler
[console]::TreatControlCAsInput = $true
$running = $true
Write-Log "Start sending (Press Ctrl+C to exit)..." "Info"

try {
    while ($running) {
        # Check Ctrl+C
        if ([console]::KeyAvailable) {
            $key = [console]::ReadKey($true)
            if ($key.Key -eq "C" -and $key.Modifiers -eq "Control") {
                Write-Log "`nCtrl+C detected. Exit..." "Info"
                $running = $false
                break
            }
        }

        # Get Next Values
        $values = Get-NextValues

        # -------------------------- 修正：考勤消息（手动拼接JSON）--------------------------
        if ($enableAttendanceMsg) {
            $faceId = $values.FaceId
            $deviceId = $values.FormattedDeviceId  # 格式化后的设备ID（字符串类型，如"001"）
            $timestamp = [int][double]::Parse((Get-Date -UFormat %s))  # 时间戳（数字类型）
            $visualMode = [int]$values.VisualMode  # 视觉模式（数字类型，与ESP32一致）

            # 手动拼接JSON，强制字符串字段带双引号，数字字段无引号
            $attendanceMsg = @"
{""deviceId"":"$deviceId",""faceId"":$faceId,""timestamp"":$timestamp,""visualMode"":$visualMode}
"@
            Send-MqttMessage -Topic $attendanceTopic -Message $attendanceMsg -MsgType "Attendance"
        }

        # -------------------------- 修正：环境消息（手动拼接JSON）--------------------------
        if ($enableEnvironmentMsg) {
            # 生成随机环境数据（数字类型）
            $temp = [math]::Round($global:currentValues.Random.NextDouble() * ($temp_Max - $temp_Min) + $temp_Min, 1)
            $humidity = [math]::Round($global:currentValues.Random.NextDouble() * ($humidity_Max - $humidity_Min) + $humidity_Min, 1)
            $co2 = $global:currentValues.Random.Next($co2_Min, $co2_Max + 1)
            $light = $light_Options[$global:currentValues.Random.Next($light_Options.Count)]  # 光照状态（字符串类型）

            # 手动拼接JSON，字段名对齐ESP32（light_condition），字符串带引号
            $environmentMsg = @"
{""temperature"":$temp,""humidity"":$humidity,""co2"":$co2,""light_condition"":""$light""}
"@
            Send-MqttMessage -Topic $environmentTopic -Message $environmentMsg -MsgType "Environment"
        }

        # Wait Interval
        if (-not $enableAttendanceMsg -and -not $enableEnvironmentMsg) {
            Write-Log "No messages enabled. Exit." "Error"
            $running = $false
        } else {
            Start-Sleep -Seconds $intervalSeconds
        }
    }
}
catch {
    Write-Log "Runtime Exception: $($_.Exception.Message)" "Error"
    Write-Log "StackTrace: $($_.Exception.StackTrace)" "Debug"
}
finally {
    # Show Statistics
    Write-Log "`n=== Send Statistics ===" "Info"
    Write-Log "Total: ${global:statistic.TotalSend} | Success: ${global:statistic.Success} | Failed: ${global:statistic.Failed}" "Info"
    Write-Log "Attendance: ${global:statistic.AttendanceCount} | Environment: ${global:statistic.EnvironmentCount}" "Info"
    if ($enableLogToFile) { Write-Log "Log saved to: ${logFilePath}" "Info" }
    Write-Log "=== Script Stopped ===" "Info"
}