- 
- [References](#references)

-------------------------------------------

## 
```sh

```

## 
```sh
$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp"
$portNumber = Get-ItemProperty -Path $registryPath -Name "PortNumber"
$portNumber.PortNumber
```

## 
```sh
PS C:\> # View the value of "PortNumber" under the "RDP-Tcp" key
PS C:\> $registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp"
PS C:\> $portNumber = Get-ItemProperty -Path $registryPath -Name "PortNumber"
PS C:\> $portNumber.PortNumber
3389
PS C:\>
```

## [View the values of the "RDP-Tcp" key]
```sh
$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp"
$key = Get-Item -LiteralPath $registryPath
Get-ItemProperty -Path $key.PSPath
```

## 
```sh
PS C:\> # View the values of the "RDP-Tcp" key
PS C:\> $registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp"
PS C:\> $key = Get-Item -LiteralPath $registryPath
PS C:\> Get-ItemProperty -Path $key.PSPath


AudioEnumeratorDll           : rdpendp.dll
Callback                     : 0
CallbackNumber               :
CdClass                      : 0
CdDLL                        :
CdFlag                       : 0
CdName                       :
CfgDll                       : RDPCFGEX.DLL
ColorDepth                   : 5
Comment                      :
Domain                       :
DrawGdiplusSupportLevel      : 1
fAllowSecProtocolNegotiation : 1
fAutoClientDrives            : 1
fAutoClientLpts              : 1
fDisableAudioCapture         : 0
fDisableCam                  : 0
fDisableCcm                  : 0
fDisableCdm                  : 0
fDisableClip                 : 0
fDisableCpm                  : 0
fDisableEncryption           : 1
fDisableExe                  : 0
fDisableLPT                  : 0
fEnableWinStation            : 1
fForceClientLptDef           : 1
fHomeDirectoryMapRoot        : 0
fInheritAutoClient           : 1
fInheritAutoLogon            : 1
fInheritCallback             : 0
fInheritCallbackNumber       : 1
fInheritColorDepth           : 0
fInheritInitialProgram       : 1
fInheritMaxDisconnectionTime : 1
fInheritMaxIdleTime          : 1
fInheritMaxSessionTime       : 1
fInheritReconnectSame        : 1
fInheritResetBroken          : 1
fInheritSecurity             : 0
fInheritShadow               : 1
fLogonDisabled               : 0
fPromptForPassword           : 0
fReconnectSame               : 0
fResetBroken                 : 0
fUseDefaultGina              : 0
InitialProgram               :
InputBufferLength            : 2048
InteractiveDelay             : 50
KeepAliveTimeout             : 0
KeyboardLayout               : 0
LanAdapter                   : 0
LoadableProtocol_Object      : {5828227c-20cf-4408-b73f-73ab70b8849f}
MaxConnectionTime            : 0
MaxDisconnectionTime         : 0
MaxIdleTime                  : 0
MaxInstanceCount             : 4294967295
MinEncryptionLevel           : 2
NWLogonServer                :
OutBufCount                  : 6
OutBufDelay                  : 100
OutBufLength                 : 530
Password                     :
PdClass                      : 2
PdClass1                     : 11
PdDLL                        : tdtcp
PdDLL1                       : tssecsrv
PdFlag                       : 78
PdFlag1                      : 0
PdName                       : tcp
PdName1                      : tssecsrv
PortNumber                   : 3389
SecurityLayer                : 2
SelectNetworkDetect          : 1
SelectTransport              : 2
Shadow                       : 1
UserAuthentication           : 1
Username                     :
WdFlag                       : 54
WdName                       : Microsoft RDP 8.0
WdPrefix                     : RDP
WebSocketListenerPort        : 3387
WebSocketTlsListenerPort     : 3392
WFProfilePath                :
WorkDirectory                :
PSPath                       : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\
                               Terminal Server\WinStations\RDP-Tcp
PSParentPath                 : Microsoft.PowerShell.Core\Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\
                               Terminal Server\WinStations
PSChildName                  : RDP-Tcp
PSProvider                   : Microsoft.PowerShell.Core\Registry



PS C:\>
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

## 
```sh

```

## 
```sh

```

# [References](#references-1)

