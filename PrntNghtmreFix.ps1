$Path = "C:\Windows\System32\spool\drivers"

$Acl = Get-Acl $Path

$Ar = New-Object  System.Security.AccessControl.FileSystemAccessRule("System", "Modify", "ContainerInherit, ObjectInherit", "None", "Deny")

$Acl = (Get-Item $path).GetAccessControl('Access')

Set-Acl $Path $Acl
