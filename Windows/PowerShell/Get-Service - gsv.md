- [gsv sshd](#gsv-sshd)
- [gsv sshd | fl](#gsv-sshd--fl)
- [gsv sshd | fl *](#gsv-sshd--fl-1)
- [(gsv sshd).StartType](#gsv-sshdstarttype)
- [gsv sshd | Select-Object StartType](#gsv-sshd--select-object-starttype)
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

## 
```sh

```

## 
```sh

```

## 
```sh

```

## 
```sh

```

# [References](#references-1)

