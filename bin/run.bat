@echo off
echo.
echo [信息] 使用Jar命令运行Web工程。
echo.

cd %~dp0
cd ../ruoyi-admin/target

set JAVA_OPTS=-Xms256m -Xmx1024m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=512m
if not defined LOG_PATH set LOG_PATH=%~dp0..\logs

java -jar %JAVA_OPTS% ruoyi-admin.jar

cd bin
pause