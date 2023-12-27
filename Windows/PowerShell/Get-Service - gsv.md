- [gsv sshd](#gsv-sshd)
- [gsv sshd | fl](#gsv-sshd--fl)
- [gsv sshd | fl *](#gsv-sshd--fl-1)
- [(gsv sshd).StartType](#gsv-sshdstarttype)
- [gsv sshd | Select-Object StartType](#gsv-sshd--select-object-starttype)
- 
- [References](#references)

-------------------------------------------

## 
```sh
gsv sshd
gsv sshd | fl
gsv sshd | fl *
```

## [gsv sshd](#gsv-sshd)
```sh
PS C:\> gsv sshd

Status   Name               DisplayName
------   ----               -----------
Running  sshd               OpenSSH SSH Server
```

## [gsv sshd | fl](#gsv-sshd--fl)
```sh
PS C:\> gsv sshd | fl

Name                : sshd
DisplayName         : OpenSSH SSH Server
Status              : Running
DependentServices   : {}
ServicesDependedOn  : {}
CanPauseAndContinue : False
CanShutdown         : False
CanStop             : True
ServiceType         : Win32OwnProcess
```

## [gsv sshd | fl *](#gsv-sshd--fl-1)
```sh
PS C:\> gsv sshd | fl *

Name                : sshd
RequiredServices    : {}
CanPauseAndContinue : False
CanShutdown         : False
CanStop             : True
DisplayName         : OpenSSH SSH Server
DependentServices   : {}
MachineName         : .
ServiceName         : sshd
ServicesDependedOn  : {}
ServiceHandle       : SafeServiceHandle
Status              : Running
ServiceType         : Win32OwnProcess
StartType           : Automatic
Site                :
Container           :
```

## [(gsv sshd).StartType](#gsv-sshdstarttype)
```sh
PS C:\> (gsv sshd).StartType
Automatic
```

## [gsv sshd | Select-Object StartType](#gsv-sshd--select-object-starttype)
```sh
PS C:\> gsv sshd | Select-Object StartType

StartType
---------
Automatic
```

## [gsv sshd | fl DisplayName, StartType, Status](#gsv-sshd--fl-displayname-starttype-status)
```sh
PS C:\> gsv sshd | fl DisplayName, StartType, Status

DisplayName : OpenSSH SSH Server
StartType   : Automatic
Status      : Running

PS C:\> Get-Service sshd | Format-List DisplayName, StartType, Status

DisplayName : OpenSSH SSH Server
StartType   : Automatic
Status      : Running
```

```sh
PS C:\> (gsv sshd) | select DisplayName, StartType, Status

DisplayName        StartType  Status
-----------        ---------  ------
OpenSSH SSH Server Automatic Running

PS C:\> (gsv sshd) | select DisplayName, StartType, Status | fl

DisplayName : OpenSSH SSH Server
StartType   : Automatic
Status      : Running
```

## [Alternative](#alternative)
```sh CMD Only
sc qc daclsvc
sc query daclsvc
```

```sh CMD Only
C:\Users\user>sc qc daclsvc
[SC] QueryServiceConfig SUCCESS

SERVICE_NAME: daclsvc
        TYPE               : 10  WIN32_OWN_PROCESS
        START_TYPE         : 3   DEMAND_START
        ERROR_CONTROL      : 1   NORMAL
        BINARY_PATH_NAME   : "C:\Program Files\DACL Service\daclservice.exe"
        LOAD_ORDER_GROUP   :
        TAG                : 0
        DISPLAY_NAME       : DACL Service
        DEPENDENCIES       :
        SERVICE_START_NAME : LocalSystem

C:\Users\user>sc query daclsvc

SERVICE_NAME: daclsvc
        TYPE               : 10  WIN32_OWN_PROCESS
        STATE              : 1  STOPPED
        WIN32_EXIT_CODE    : 1077  (0x435)
        SERVICE_EXIT_CODE  : 0  (0x0)
        CHECKPOINT         : 0x0
        WAIT_HINT          : 0x0
```

## 
```sh
PS C:\Users\user> gsv daclsvc | fl *

Name                : daclsvc
RequiredServices    : {}
CanPauseAndContinue : False
CanShutdown         : False
CanStop             : False
DisplayName         : DACL Service
DependentServices   : {}
MachineName         : .
ServiceName         : daclsvc
ServicesDependedOn  : {}
ServiceHandle       :
Status              : Stopped
ServiceType         : Win32OwnProcess
Site                :
Container           :
```

# [References](#references-1)

