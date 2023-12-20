- [Check OpenSSH Installation Status](#check-openssh-installation-status)
- [Installation](#installation)
- [Start the sshd Service](#start-the-sshd-service)
- [Get-Service sshd](#get-service-sshd)
- [References](#references)

-------------------------------------------

## 
```sh
1. Open Settings.
2. Click on Apps.
3. Click on Optional features.
4. Click on Add a feature.
5. Scroll down and select OpenSSH Server.
6. Click on Install.
```

## [Check OpenSSH Installation Status](#check-openssh-installation-status)
```sh
Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'
```

```sh
PS C:\Users\fcastle> Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'

Name  : OpenSSH.Client~~~~0.0.1.0
State : Installed

Name  : OpenSSH.Server~~~~0.0.1.0
State : NotPresent
```

## [Installation](#installation)
```sh
# Install the OpenSSH Client
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0

# Install the OpenSSH Server
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
```

## [Start the sshd Service](#start-the-sshd-service)
```sh
# Start the sshd service
Start-Service sshd

# OPTIONAL but recommended:
Set-Service -Name sshd -StartupType 'Automatic'

# Confirm the Firewall rule is configured. It should be created automatically by setup. Run the following to verify
if (!(Get-NetFirewallRule -Name "OpenSSH-Server-In-TCP" -ErrorAction SilentlyContinue | Select-Object Name, Enabled)) {
    Write-Output "Firewall Rule 'OpenSSH-Server-In-TCP' does not exist, creating it..."
    New-NetFirewallRule -Name 'OpenSSH-Server-In-TCP' -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
} else {
    Write-Output "Firewall rule 'OpenSSH-Server-In-TCP' has been created and exists."
}
```

## 
```sh
# Uninstall the OpenSSH Client
Remove-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0

# Uninstall the OpenSSH Server
Remove-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
```

## [Get-Service sshd](#get-service-sshd)
```sh
Get-Service sshd
Get-Service -Name sshd
```

```sh
PS C:\ProgramData\ssh> Get-Service sshd

Status   Name               DisplayName
------   ----               -----------
Running  sshd               OpenSSH SSH Server
```

```sh
PS C:\> (Get-Service sshd).StartType
Automatic
PS C:\>
```

```sh
Set-Service sshd -StartupType Manual
Set-Service sshd -StartupType Automatic
Set-Service sshd -Status Running
Set-Service sshd -Status Stopped
```

## 
```sh
PS C:\> Get-Service sshd | Format-List *

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

## 
```sh
Get-Service sshd | fl
Get-Service sshd | fl *
Get-Service sshd | Format-List *
(Get-Service sshd).StartType
```

# [References](#references-1)

https://learn.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse?tabs=powershell#install-openssh-for-windows