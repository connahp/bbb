

tzutil /s "SE Asia Standard Time"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
REG ADD HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System\CredSSP\Parameters\ /v AllowEncryptionOracle /t REG_DWORD /d 2
Reg Add "HKCU\SOFTWARE\Microsoft\Windows\DWM" /v ColorPrevalence /t REG_DWORD /d 1 /f
Reg Add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v ColorPrevalence /t REG_DWORD /d 1 /f
certutil -urlcache -split -f https://raw.githubusercontent.com/dungphanx2/chay1/main/curl.exe
certutil -urlcache -split -f https://raw.githubusercontent.com/dungphanx2/chay1/main/7z.dll
certutil -urlcache -split -f https://raw.githubusercontent.com/dungphanx2/chay1/main/7z.exe
certutil -urlcache -split -f https://raw.githubusercontent.com/dungphanx2/chay1/main/FshareSetup_5.3.0.174.exe
certutil -urlcache -split -f https://raw.githubusercontent.com/dungphanx2/chay1/main/winrar-x64-600.exe
certutil -urlcache -split -f https://raw.githubusercontent.com/dungphanx2/chay1/main/nircmd.exe
curl -LJOk https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip
7z x ngrok-stable-windows-amd64.zip


cd C:\Users\Administrator\Desktop
curl -LJOk https://raw.githubusercontent.com/dungphanx2/chay1/main/ChromeSetup.exe
curl -LJOk https://raw.githubusercontent.com/dungphanx2/chay1/main/FshareSetup_5.3.0.174.exe
curl -LJOk https://raw.githubusercontent.com/dungphanx2/chay1/main/winrar-x64-600.exe
curl -LJOk https://raw.githubusercontent.com/dungphanx2/chay1/main/anti-close.bat
start ChromeSetup.exe
start FshareSetup_5.3.0.174.exe
start winrar-x64-600.exe
cls
@echo off
set /p id="Paste NGROK AUTHTOKEN (Ctrl+V): "
ngrok authtoken %id%
start ngrok tcp 3389
start anti-close.bat
net start audiosrv
taskkill /f /im sqlservr.exe
taskkill /f /im Batch.exe
taskkill /f /im w3wp.exe
taskkill /f /im explorer.exe
start explorer.exe
exit
