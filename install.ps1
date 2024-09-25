$SID = New-Object System.Security.Principal.SecurityIdentifier('S-1-5-32-544')
$AdminGroup = (( $SID.Translate([System.Security.Principal.NTAccount]) ).Value).Split("\")[1]
net localgroup $AdminGroup /add WDAGUtilityAccount
