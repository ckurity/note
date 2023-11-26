- [/t and /d flags](#t-and-d-flags)

# registry / regedit

### TL;DR

### PowerShell
```sh
ls 'HKLM:\software\microsoft\windows nt\currentversion\winlogon'

Get-ItemProperty -Path 'HKLM:\software\microsoft\windows nt\currentversion\winlogon'
gp -pa 'HKLM:\software\microsoft\windows nt\currentversion\winlogon'
```

### CMD
```sh
reg query 'HKLM\software\microsoft\windows nt\currentversion\winlogon'
```

## 
```sh
reg query 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp'

reg query 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' /v PortNumber

reg add 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' /v PortNumber /t REG_DWORD /d 1337 /f
```

## 
Hex = 0xd3d
Dec = 3389
```sh
PS C:\> reg query 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' /v PortNumber

HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp
    PortNumber    REG_DWORD    0xd3d
```

```sh
C:\>sc query TermService

SERVICE_NAME: TermService
        TYPE               : 30  WIN32
        STATE              : 4  RUNNING
                                (STOPPABLE, NOT_PAUSABLE, ACCEPTS_SHUTDOWN)
        WIN32_EXIT_CODE    : 0  (0x0)
        SERVICE_EXIT_CODE  : 0  (0x0)
        CHECKPOINT         : 0x0
        WAIT_HINT          : 0x0

C:\>sc qc TermService
[SC] QueryServiceConfig SUCCESS

SERVICE_NAME: TermService
        TYPE               : 20  WIN32_SHARE_PROCESS
        START_TYPE         : 3   DEMAND_START
        ERROR_CONTROL      : 1   NORMAL
        BINARY_PATH_NAME   : C:\Windows\System32\svchost.exe -k NetworkService
        LOAD_ORDER_GROUP   :
        TAG                : 0
        DISPLAY_NAME       : Remote Desktop Services
        DEPENDENCIES       : RPCSS
        SERVICE_START_NAME : NT Authority\NetworkService
```

```sh
C:\>net sess
System error 5 has occurred.

Access is denied.


C:\>
C:\>sc stop TermService && sc start TermService
[SC] OpenService FAILED 5:

Access is denied.
```

```sh
C:\>net sess
There are no entries in the list.


C:\>sc stop TermService && sc start TermService
[SC] ControlService FAILED 1051:

A stop control has been sent to a service that other running services are dependent on.
```

### Examples
```

```

## 
```sh
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

## 
```sh
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

## 
```sh
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

## [/t and /d flags](#t-and-d-flags-1)
```sh
The /t and /d flags are used with the reg command to specify the type and data of a registry entry.

The /t flag specifies the type of the registry entry. The following are the valid types of registry entries:
REG_SZ: A string value.
REG_DWORD: A 32-bit integer value.
REG_BINARY: A binary value.
REG_EXPAND_SZ: An expandable string value. This type of value can contain environment variables that will be expanded when the value is read.
REG_MULTI_SZ: A multiple-string value. This type of value can contain multiple strings, separated by null characters.
```

## 
```sh

```
