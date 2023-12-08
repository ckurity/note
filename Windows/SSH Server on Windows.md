- 
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

## 
```sh
Get-WindowsCapability -Online | Where-Object Name -like 'OpenSSH*'
```

```sh
Name  : OpenSSH.Client~~~~0.0.1.0
State : NotPresent

Name  : OpenSSH.Server~~~~0.0.1.0
State : NotPresent
```

## 
```sh
# Install the OpenSSH Client
Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0

# Install the OpenSSH Server
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
```

## 
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

## 
```sh
Get-Service sshd
Get-Service -Name sshd
```

## 
```sh
PS C:\ProgramData\ssh> Get-Service sshd        

Status   Name               DisplayName
------   ----               -----------
Running  sshd               OpenSSH SSH Server
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

https://learn.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse?tabs=powershell#install-openssh-for-windows