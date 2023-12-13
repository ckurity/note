- [Change a Windows User Password](#change-a-windows-user-password)
- [Add a New Windows User](#add-a-new-windows-user)
- [Alternative](#alternative)

## [View Current Users]
```sh
net user
Get-LocalUser
wmic useraccount where Disabled="FALSE" get Name,Disabled

wmic useraccount where Disabled="FALSE" get Domain,Name,LocalAccount,Lockout,PasswordChangeable,PasswordExpires,PasswordRequired

wmic useraccount where Disabled="FALSE" get Domain,Name,LocalAccount,Lockout,PasswordChangeable,PasswordExpires,PasswordRequired,sid
```

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

```sh
C:\Users\user\a>wmic useraccount where Disabled="FALSE" get Name,Disabled

Disabled  Name   
FALSE     admin  
FALSE     user

C:\Users\user\a>wmic useraccount where Disabled="FALSE" get Domain,Name,LocalAccount,Lockout,PasswordChangeable,PasswordExpires,PasswordRequired

Domain           LocalAccount  Lockout  Name   PasswordChangeable  PasswordExpires  PasswordRequired  
WIN-QBA94KB3IOF  TRUE          FALSE    admin  TRUE                TRUE             TRUE              
WIN-QBA94KB3IOF  TRUE          FALSE    user   TRUE                TRUE             TRUE

C:\Users\user\a>wmic useraccount where Disabled="FALSE" get Domain,Name,LocalAccount,Lockout,PasswordChangeable,PasswordExpires,PasswordRequired,sid
Domain           LocalAccount  Lockout  Name   PasswordChangeable  PasswordExpires  PasswordRequired  SID                                             
WIN-QBA94KB3IOF  TRUE          FALSE    admin  TRUE                TRUE             TRUE              S-1-5-21-3025105784-3259396213-1915610826-1001  
WIN-QBA94KB3IOF  TRUE          FALSE    user   TRUE                TRUE             TRUE              S-1-5-21-3025105784-3259396213-1915610826-1000
```