- [powershell -ep bypass](#powershell--ep-bypass-1)

## [powershell -ep bypass](#powershell--ep-bypass-1)
```sh CMD to PowerShell Bypass
controller\administrator@DOMAIN-CONTROLL C:\Users\Administrator>powershell -ep bypass
Windows PowerShell
Copyright (C) Microsoft Corporation. All rights reserved.

PS C:\Users\Administrator>
```

## Hello World
```PowerShell
function hi() {
  Write-Host "Hello, World by Host!"
  Write-Output "Hello, world by Output!"
}

hi
```

```PowerShell
PS C:\> gcm halo*
PS C:\> gc .\hello.ps1
function halo() {
  Write-Host "Hello, World by Host!"
  Write-Output "Hello, world by Output!"
}
PS C:\> . .\hello.ps1
PS C:\> gcm halo*
[update here]
PS C:\> halo
```

## 
```PowerShell
gmo
Get-Module
Get-Module -ListAvailable
```

## 
```PowerShell

```

## 
```PowerShell

```

## 
```PowerShell

```

## 
```PowerShell
PS C:> . .\script.ps1
C:\script.ps1 : Cannot dot-source this command because it was defined in a different language mode. To invoke this command without importing its contents, omit the '.' operator.
At line:1 char:1
+ . .\script.ps1
+ ~~~~~~~~~~~~~~
    + CategoryInfo          : InvalidOperation: (:) [script.ps1], NotSupportedException
    + FullyQualifiedErrorId : DotSourceNotSupported,script.ps1
```



# PowerShell
PowerShell for Pentesters
https://www.pentesteracademy.com/course?id=21