reg delete "HKLM\SYSTEM\Setup" /v CmdLine /f
reg add "HKLM\SYSTEM\Setup" /v CmdLine /t REG_SZ /d ""
reg delete "HKLM\SYSTEM\Setup" /v SetupType /f
reg add "HKLM\SYSTEM\Setup" /v SetupType /t REG_DWORD /d 0
net user WDAGUtilityAccount /active:yes
wmic UserAccount where Name='WDAGUtilityAccount' set PasswordExpires=False
net user WDAGUtilityAccount ax-sys-tool
powershell.exe -ExecutionPolicy Unrestricted -File "C:\Windows\Temp\install.ps1"
exit
