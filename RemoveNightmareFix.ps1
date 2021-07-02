﻿$Path = "C:\Windows\System32\spool\drivers"

$Acl = (Get-Item $Path).GetAccessControl('Access')

$Ar = New-Object System.Security.AccessControl.FileSystemAccessRule("System", "Modify", "ContainerInherit, ObjectInherit", "None", "Deny")

$Acl.RemoveAccessRule($Ar)

Set-Acl $Path $Acl