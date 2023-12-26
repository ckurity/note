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

```sh
lunar\thm@LUNDC C:\Users\thm>set u
USER=lunar\thm
USERDOMAIN=LUNAR
USERNAME=thm
USERPROFILE=C:\Users\thm

lunar\thm@LUNDC C:\Users\thm>net user %USERNAME%
User name                    thm 
Full Name                    Try THM. Hack Me
Comment
User's comment
Country/region code          000 (System Default)
Account active               Yes
Account expires              Never

Password last set            1/14/2022 11:54:49 AM
Password expires             Never
Password changeable          1/14/2022 11:54:49 AM
Password required            Yes
User may change password     Yes

Workstations allowed         All
Logon script
User profile
Home directory
Last logon                   12/20/2023 2:23:04 PM

Logon hours allowed          All

Local Group Memberships      *Backup Operators     *Remote Desktop Users
Global Group memberships     *Domain Users
The command completed successfully.
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
```PowerShell Only
Get-LocalUser
```

```sh CMD Only
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