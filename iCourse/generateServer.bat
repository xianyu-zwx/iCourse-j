@echo off
chcp 65001
cd iCourse-admin
set TargetFile=.\target

if exist %TargetFile% (
    echo "准备开始删除文件夹%TargetFile%"
    rmdir /s /q %TargetFile%
	echo "文件夹%TargetFile%删除操作完成"
) else (
  echo "文件夹%TargetFile%不存在"
)



echo "开始生成jar包"
mvn -q package

echo "工程的jar包文件制作完成"
pause

   
pause
