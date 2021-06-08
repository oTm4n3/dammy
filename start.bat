@echo off
net config server /srvcomment:"Windows Server 2019 By oTm4n3" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
net user administrator 6812wW  /add >nul
net localgroup administrators oTm4n3 /add >nul
net user administrator /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant oTm4n3:F >nul
ICACLS C:\Windows\installer /grant oTm4n3:F >nul
echo Success!
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Failed to retreive NGROK authtoken - check again your authtoken"
echo Runneradmin Has Been Hacked By oTm4n3 !
echo congregation ! , You have 3 Year RDP !
echo Username: oTm4n3
echo Password: 6812wW
echo Drob Tabon wana nkhales :) !
echo You can login now.
ping -n 10 127.0.0.1 >nul
