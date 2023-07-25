[Change the Powershell $profile directory](https://serverfault.com/questions/195397/change-the-powershell-profile-directory)

```
PS H:\> $profile
H:\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
```

```
<username>$> $profile | select *

AllUsersAllHosts       : C:\Windows\System32\WindowsPowerShell\v1.0\profile.ps1
AllUsersCurrentHost    : C:\Windows\System32\WindowsPowerShell\v1.0\Microsoft.PowerShell_profile.ps1
CurrentUserAllHosts    : C:\Users\<username>\Documentos\WindowsPowerShell\profile.ps1
CurrentUserCurrentHost : C:\Users\<username>\Documentos\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
Length                 : <will vary>
```

```
```