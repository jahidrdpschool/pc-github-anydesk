@echo off

:START_ANYDESK
anydesk --start
ping 127.0.0.1 -n 4 > nul

for /f "delims=" %%i in ('"C:\ProgramData\chocolatey\lib\anydesk.portable\tools\AnyDesk.exe" --get-id') do (
    set ID=%%i
)

if "%ID%"=="" (
    taskkill /f /im anydesk.exe > nul
    goto START_ANYDESK
)

if "%ID%"=="0" (
    taskkill /f /im anydesk.exe > nul
    goto START_ANYDESK
)

echo jahidhasan | anydesk --set-password
echo ..........................................................
echo .... Update These YML Codes - https://bit.ly/3o0BUdm .....
echo ..........................................................
echo ......#####...######...####....####...##.......####.......
echo ......##..##....##....##......##..##..##......##..##......
echo ......##..##....##.....####...######..##......######......
echo ......##..##....##........##..##..##..##......##..##......
echo ......#####...######...####...##..##..######..##..##......
echo ..........................................................
echo ..Youtube Video Tutorial - https://youtu.be/P-ctz1CuPi0 ..
echo ..........................................................
echo AnyDesk ID is: %ID%
echo AnyDesk Password: disalardp
echo You can login now!
