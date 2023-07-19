## TLDR
```
New-Item -ItemType File -Path $PROFILE.CurrentUserAllHosts -Force
notepad $PROFILE.CurrentUserAllHosts
```
```
Set-Alias a alias
Set-Alias c cls
Remove-Item -Path Alias:h
Set-Alias h hostname
Set-Alias i ipconfig
Set-Alias p powershell
# Set-Alias i "netsh i i sh con Ethernet" # troubleshoot this
```

```
alias h
Set-Alias h hostname
```

Open PowerShell as an administrator

Create a new profile file

In the text editor, add the following lines for each alias you want to create:

Set-Alias alias_name command_name
```
PS C:\Users\Administrator> New-Item -ItemType File -Path $PROFILE.CurrentUserAllHosts -Force


    Directory: C:\Users\Administrator\Documents\WindowsPowerShell


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----         7/19/2023   2:19 AM              0 profile.ps1

PS C:\Users\Administrator> notepad $PROFILE.CurrentUserAllHosts
PS C:\Users\Administrator>
PS C:\Users\Administrator> cat $PROFILE.CurrentUserAllHosts
Set-Alias c cls
PS C:\Users\Administrator>
```
```
PS C:\> alias h

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Alias           h -> Get-History
```

## Check PowerShell Version
```
PS C:\> $PSVersionTable

Name                           Value
----                           -----
PSVersion                      5.1.20348.558
PSEdition                      Desktop
PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0...}
BuildVersion                   10.0.20348.558
CLRVersion                     4.0.30319.42000
WSManStackVersion              3.0
PSRemotingProtocolVersion      2.3
SerializationVersion           1.1.0.1


PS C:\>
```
## Remove alias in PowerShell Version 5
```
PS C:\> alias h

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Alias           h -> Get-History


PS C:\> Remove-Item -Path Alias:h
PS C:\> alias h
alias : This command cannot find a matching alias because an alias with the name 'h' does not exist.
At line:1 char:1
+ alias h
+ ~~~~~~~
    + CategoryInfo          : ObjectNotFound: (h:String) [Get-Alias], ItemNotFoundException
    + FullyQualifiedErrorId : ItemNotFoundException,Microsoft.PowerShell.Commands.GetAliasCommand

PS C:\>
```
