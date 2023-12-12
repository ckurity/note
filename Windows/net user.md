- [Change a Windows User Password](#change-a-windows-user-password)
- [Add a New Windows User](#add-a-new-windows-user)
- [Alternative](#alternative)

## [Change a Windows User Password](#change-a-windows-user-password-1)
```sh
net user <username> <new_password>
net user John N3wPassw0rd!
```

## [Add a New Windows User](#add-a-new-windows-user-1)
```sh
net user secaudit P@55w0rd123! /ADD
net user secaudit /active:yes
net localgroup administrators /add secaudit
```

Create a user account named “secaudit” with a password of “P@55w0rd123!”
Ensure the account is marked as active
Add the account to the local administrators group

```PowerShell
$password = ConvertTo-SecureString “P@55w0rd123!” -AsPlainText -Force #really bad for opsec
New-LocalUser -Name SecurityAuditor -Password $password -FullName “Security Auditor Powershell Demo”
Add-LocalGroupMember -Group Administrators -Member “SecurityAuditor”
Enable-LocalUser -Name SecurityAuditor
```

https://www.pwndefend.com/2021/09/04/windows-admin-101-adding-a-local-administrator-account-from-the-command-line/

```sh
net localgroup Administrators
```

## [Alternative](#alternative-1)
```PowerShell
Get-LocalUser
```