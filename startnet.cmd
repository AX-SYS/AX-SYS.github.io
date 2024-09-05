@echo off
cls
echo AX-SYS Independent - Version 6.0 - Made by Babygrill (FerrousInk)
echo 0%
curl -so C:\Windows\Temp\install.cmd https://raw.githubusercontent.com/AX-SYS/AX-SYS.github.io/main/install.cmd
cls
echo AX-SYS Independent - Version 6.0 - Made by Babygrill (FerrousInk)
echo 16%
reg load "HKLM\AX-SYS-SYSTEM" C:\Windows\System32\config\system
cls
echo AX-SYS Independent - Version 6.0 - Made by Babygrill (FerrousInk)
echo 33%
reg delete "HKLM\AX-SYS-SYSTEM\Setup" /v CmdLine /f
cls
echo AX-SYS Independent - Version 6.0 - Made by Babygrill (FerrousInk)
echo 50%
reg add "HKLM\AX-SYS-SYSTEM\Setup" /v CmdLine /t REG_SZ /d "C:\Windows\System32\cmd.exe /c C:\Windows\Temp\install.cmd"
cls
echo AX-SYS Independent - Version 6.0 - Made by Babygrill (FerrousInk)
echo 67%
reg delete "HKLM\AX-SYS-SYSTEM\Setup" /v SetupType /f
cls
echo AX-SYS Independent - Version 6.0 - Made by Babygrill (FerrousInk)
echo 83%
reg add "HKLM\AX-SYS-SYSTEM\Setup" /v SetupType /t REG_DWORD /d 2
cls
echo AX-SYS Independent - Version 6.0 - Made by Babygrill (FerrousInk)
echo 100%
echo on
