function sendGetRequest() {
    // 发送 GET 请求到相对路径
    $.get("/course/getLatestEnvironmentData", {
    })
        .done(function(data) {
            // 请求成功，处理响应数据
                // 更新环境数据显示
                $('#env-temp').text(data.temperature + '°C');
                $('#env-humi').text(data.humidity + '%');
                $('#env-co2').text(data.co2 + ' ppm');
                $('#env-light').text(data.lightCondition);
            initCharts();
            console.log(data);
        })
        .fail(function(xhr, status, error) {
            // 请求失败，显示错误信息
            $("#errorMessage").text(`错误: ${status} - ${error}`);
            if (status === "error" && xhr.status === 0) {
                $("#errorMessage").append("<br>可能是由于跨域请求限制，请在服务器环境下运行此示例。");
            }
            $("#errorContainer").removeClass("hidden");
        })
        .always(function() {
            // 请求完成，无论成功或失败都隐藏加载指示器
            $("#loadingIndicator").addClass("hidden");
        });
}

// 图表初始化
function initCharts() {
    // 考勤统计饼图
    const attendanceCtx = document.getElementById('attendanceChart')?.getContext('2d');
    if (attendanceCtx) {
        window.attendanceChart = new Chart(attendanceCtx, {
            type: 'doughnut',
            data: {
                labels: ['正常', '迟到', '早退', '缺勤'],
                datasets: [{
                    data: [75, 10, 5, 10],
                    backgroundColor: [
                        '#64ffda',
                        '#f8e16c',
                        '#ffa62b',
                        '#ff6b6b'
                    ],
                    borderWidth: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'right',
                        labels: {
                            color: '#ccd6f6',
                            font: {
                                size: 12
                            }
                        }
                    },
                    tooltip: {
                        backgroundColor: 'rgba(10, 25, 47, 0.9)',
                        titleColor: '#64ffda',
                        bodyColor: '#ccd6f6',
                        borderColor: 'rgba(100, 255, 218, 0.2)',
                        borderWidth: 1
                    }
                }
            }
        });
    }

    // 每日考勤饼图
    const dailyAttendanceCtx = document.getElementById('dailyAttendanceChart')?.getContext('2d');
    if (dailyAttendanceCtx) {
        window.dailyAttendanceChart = new Chart(dailyAttendanceCtx, {
            type: 'pie',
            data: {
                labels: ['已到', '迟到', '缺勤'],
                datasets: [{
                    data: [80, 7, 13],
                    backgroundColor: [
                        '#64ffda',
                        '#f8e16c',
                        '#ff6b6b'
                    ],
                    borderWidth: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'right',
                        labels: {
                            color: '#ccd6f6',
                            font: {
                                size: 12
                            }
                        }
                    }
                }
            }
        });
    }

    // 雷达图表
    const radarCtx = document.getElementById('radarChart')?.getContext('2d');
    if (radarCtx) {
        window.radarChart = new Chart(radarCtx, {
            type: 'line',
            data: {
                labels: ['14:20', '14:25', '14:30', '14:35', '14:40', '14:45', '14:50'],
                datasets: [
                    {
                        label: '心率 (BPM)',
                        data: [70, 71, 72, 73, 72, 71, 70],
                        borderColor: '#64ffda',
                        backgroundColor: 'rgba(100, 255, 218, 0.1)',
                        tension: 0.4,
                        fill: true
                    },
                    {
                        label: '呼吸率 (BPM)',
                        data: [15, 16, 16, 17, 16, 16, 15],
                        borderColor: '#f8e16c',
                        backgroundColor: 'rgba(248, 225, 108, 0.1)',
                        tension: 0.4,
                        fill: true
                    }
                ]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                scales: {
                    x: {
                        grid: {
                            color: 'rgba(204, 214, 246, 0.1)'
                        },
                        ticks: {
                            color: '#8892b0'
                        }
                    },
                    y: {
                        grid: {
                            color: 'rgba(204, 214, 246, 0.1)'
                        },
                        ticks: {
                            color: '#8892b0'
                        }
                    }
                },
                plugins: {
                    legend: {
                        labels: {
                            color: '#ccd6f6'
                        }
                    }
                }
            }
        });
    }
}


function sendModifyStudentMessage(data){
    var stuNo = data.field.stuNo;
    if (!stuNo) {
        console.log("学号异常");
        layer.msg('学号异常，请刷新页面重试', {icon: 2});
        return false;
    }

    $.ajax({
        url: '/course/student/updateStu',
        type: 'POST',
        contentType: 'application/json', // 设置请求头为 JSON
        data: JSON.stringify(data.field), // 将数据转换为 JSON 字符串
        dataType: 'text', // 明确告知 jQuery 响应是普通文本
        success: function(res) {
            console.log(res);
            if (res === 'success') {

                // 关键：获取当前 layer 弹出层的索引并关闭
                var index = parent.layer.getFrameIndex(window.name);

                // 先提示成功，再关闭
                parent.layer.msg('修改成功', {icon: 1}, function() {
                    parent.layer.close(index); // 关闭当前弹出层
                    // parent.refreshStudentList(); // 刷新父页面数据（可选）
                });
            } else {
                layer.msg('修改失败：' + res, {icon: 2});
            }
        },
        error: function(xhr, status, error) {
            console.log('请求失败：', xhr); // 添加详细日志
            console.log('状态码：', xhr.status);
            console.log('状态文本：', xhr.statusText);
            console.log('错误信息：', error);
            console.log('响应内容：', xhr.responseText);
            layer.msg('请求失败：' + xhr.statusText, {icon: 2});
            layer.msg('请求失败：' + xhr.statusText, {icon: 2});
        }
    });

    // headers = {'Content-Type': 'application/json'}
    //
    // // 提交更新请求
    // $.post('/course/student/updateStu', data.field, headers, function(res) {
    //     if (res === 'success') {
    //         layer.msg('修改成功', {icon: 1}, function() {
    //             window.location.href = '/course/stuInfo.html'; // 跳转回学生列表
    //         });
    //     } else {
    //         layer.msg('修改失败：' + res, {icon: 2});
    //     }
    // }).fail(function(xhr) {
    //     layer.msg('请求失败：' + xhr.statusText, {icon: 2});
    // });
    return false;
}
