@echo off

rem https://github.com/FerrousInk/AX-SYS-Tool
rem AX-SYS Version 6

xcopy install.cmd C:\Windows\Temp\ /Y /-I
xcopy install.ps1 C:\Windows\Temp\ /Y /-I
reg load "HKLM\AX-SYS-SYSTEM" C:\Windows\System32\config\system
reg delete "HKLM\AX-SYS-SYSTEM\Setup" /v CmdLine /f
reg add "HKLM\AX-SYS-SYSTEM\Setup" /v CmdLine /t REG_SZ /d "C:\Windows\System32\cmd.exe /c C:\Windows\Temp\install.cmd"
reg delete "HKLM\AX-SYS-SYSTEM\Setup" /v SetupType /f
reg add "HKLM\AX-SYS-SYSTEM\Setup" /v SetupType /t REG_DWORD /d 2
exit
