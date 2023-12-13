- [Manual Enumeration](#manual-enumeration)
    - [Current User](#current-user)
    - [List Users](#list-users)
    - [Hostname](#hostname)
    - [OS Version & Architecture](#os-version--architecture)
    - [Running Processes & Services](#running-processes--services)
    - [Networking Info](#networking-info)
    - [Firewall Status & Rules](#firewall-status--rules)
- [References](#references)

-------------------------------------------

## Info Gathering
```sh
Get-WmiObject win32_service | Select-Object name, state, pathname | Where-Object {$_.state -like 'running'}
```

# [Manual Enumeration](#manual-enumeration-1)
## [Current User](#current-user-1)
```sh
Windows     : whoami
Windows CMD : net user %user%
PowerShell  : [Security.Principal.WindowsIdentity]::GetCurrent()
PowerShell  : $env:USERNAME
PowerShell  : (whoami).split('\')[1]
Linux       : id
```

## [List Users](#list-users-1)
```sh
Windows     : net user
PowerShell  : Get-LocalUser
Windows     : wmic useraccount where Disabled="FALSE" get Name,Disabled
Linux       : nl /etc/passwd
```

```sh
PS C:\> Get-LocalUser      

Name               Enabled Description
----               ------- -----------
Administrator      False   Built-in account for administering the computer/domain
DefaultAccount     False   A user account managed by the system.
Guest              False   Built-in account for guest access to the computer/domain
ckurity            True
WDAGUtilityAccount False   A user account managed and used by the system for Windows Defender Application Guard scenarios.
```

## [Hostname](#hostname-1)
```sh
Windows CMD : hostname
PowerShell  : hostname
Linux       : hostname
```

## [OS Version & Architecture](#os-version--architecture-1)
```sh
Windows CMD : systeminfo | findstr /C:'OS'
Windows CMD : systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
PowerShell  : (Get-CimInstance Win32_OperatingSystem).Caption
Linux       : nl /etc/issue
Linux       : nl /etc/os-release
```

```sh Get-WmiObject & Get-CimInstance
PS C:\> Get-WmiObject Win32_OperatingSystem

SystemDirectory : C:\Windows\system32
Organization    :
BuildNumber     : 19045
RegisteredUser  : ckurity
SerialNumber    : 1337
Version         : 10.0.19045

PS C:\> (Get-CimInstance Win32_OperatingSystem).Caption
Microsoft Windows 10 Pro

PS C:\> (Get-CimInstance Win32_OperatingSystem).Version
10.0.19045

PS C:\> (Get-CimInstance Win32_OperatingSystem).OSArchitecture
64-bit

PS C:\> Get-CimInstance Win32_OperatingSystem

SystemDirectory     Organization BuildNumber RegisteredUser SerialNumber            Version
---------------     ------------ ----------- -------------- ------------            -------   
C:\Windows\system32              19045       ckurity        1337                    10.0.19045
```

```sh systeminfo
PS C:\> systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
OS Name:                   Microsoft Windows 10 Pro                           
OS Version:                10.0.19045 N/A Build 19045
PS C:\>

PS C:\> systeminfo | findstr /C:'OS'
OS Name:                   Microsoft Windows 10 Pro                           
OS Version:                10.0.19045 N/A Build 19045
OS Manufacturer:           Microsoft Corporation
OS Configuration:          Standalone Workstation
OS Build Type:             Multiprocessor Free
BIOS Version:              innotek GmbH VirtualBox, 1/12/2006
PS C:\>
```

```sh Linux
$ nl /etc/issue
     1  Kali GNU/Linux Rolling \n \l

$ nl /etc/os-release
     1  PRETTY_NAME="Kali GNU/Linux Rolling"
     2  NAME="Kali GNU/Linux"
     3  VERSION_ID="2023.3"
     4  VERSION="2023.3"
     5  VERSION_CODENAME=kali-rolling
     6  ID=kali
     7  ID_LIKE=debian
     8  HOME_URL="https://www.kali.org/"
     9  SUPPORT_URL="https://forums.kali.org/"
    10  BUG_REPORT_URL="https://bugs.kali.org/"
    11  ANSI_COLOR="1;31"
```

## [Running Processes & Services](#running-processes--services-1)
```sh
Windows CMD : tasklist /svc | more
PowerShell  : 
Linux       : 
```

```sh
PS C:\> tasklist | more     

Image Name                     PID Session Name        Session#    Mem Usage
========================= ======== ================ =========== ============
System Idle Process              0 Services                   0          8 K
System                           4 Services                   0        144 K
Registry                       108 Services                   0     72,212 K
smss.exe                       376 Services                   0      1,224 K
csrss.exe                      476 Services                   0      5,528 K

PS C:\> tasklist /svc | more

Image Name                     PID Services
========================= ======== ============================================
System Idle Process              0 N/A
System                           4 N/A
Registry                       108 N/A
smss.exe                       376 N/A
csrss.exe                      476 N/A
```

```sh
PS C:\Users\user\a> Get-WmiObject win32_service | Select-Object name, state, pathname | Where-Object {$_.state -like 'running'}

name                   state   pathname                                                             
----                   -----   --------                                                             
AmazonSSMAgent         Running "C:\Program Files\Amazon\SSM\amazon-ssm-agent.exe"                   
AWSLiteAgent           Running C:\Program Files\Amazon\XenTools\LiteAgent.exe                       
BFE                    Running C:\Windows\system32\svchost.exe -k LocalServiceNoNetworkFirewall -p  
BrokerInfrastructure   Running C:\Windows\system32\svchost.exe -k DcomLaunch -p                     
Browser                Running C:\Windows\System32\svchost.exe -k netsvcs -p
```

```sh
$ ps aux | more    
USER         PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
root           1  0.0  0.2  22300 13440 ?        Ss   14:54   0:03 /lib/systemd/systemd --system --deserialize=40 splash
root           2  0.0  0.0      0     0 ?        S    14:54   0:00 [kthreadd]
root           3  0.0  0.0      0     0 ?        I<   14:54   0:00 [rcu_gp]
```

# [Networking Info](#networking-info-1)
PWK 2.0 page 517
```sh
Windows     : ipconfig /all
PowerShell  : 
Linux       : ip a
Linux       : ifconfig
```

## 
```sh
Windows     : route print
Windows     : netstat -rn
PowerShell  : 
Linux       : route
```


## 
```sh
Windows     : netstat -ano
Windows CMD : 
PowerShell  : 
Linux       : ss -anp
```

# [Firewall Status & Rules](#firewall-status--rules)
PWK 2.0 page 522
```sh
Windows     : netsh advfirewall firewall show rule name=all
PowerShell  : 
Linux       : sudo iptables -L
Linux       : sudo iptables -vL --line-number
```

## Scheduled Tasks
PWK 2.0 page 524
```sh
Windows     : schtasks /query /fo list /v
PowerShell  : 
Linux       : ls -lh /etc/cron*
Linux       : crontab -l
```

schtasks: This is the command itself used to manage tasks.
/query: This parameter instructs schtasks to query the Task Scheduler.
/fo list: This parameter specifies that the output should be formatted as a list, making it easier to read.
/v: This parameter requests a detailed (verbose) display, showing additional information about each task.

## [Installed Applications & Patch Levels](#installed-applications--patch-levels)
PWK 2.0 page 526
```sh
Windows     : wmic product get name, version, vendor
PowerShell  : 
Linux       : 
```


## 
```sh
Windows CMD : 
PowerShell  : 
Linux       : 
```

## 
```sh
Windows CMD : 
PowerShell  : 
Linux       : 
```


## 
```sh
Windows CMD : 
PowerShell  : 
Linux       : 
```

## 
```sh
Windows CMD : 
PowerShell  : 
Linux       : 
```


## 
```sh
Windows CMD : 
PowerShell  : 
Linux       : 
```

## 
```sh
Windows CMD : 
PowerShell  : 
Linux       : 
```


## 
```sh
Windows CMD : 
PowerShell  : 
Linux       : 
```

## 
```sh
Windows CMD : 
PowerShell  : 
Linux       : 
```


## 
```sh
Windows CMD : 
PowerShell  : 
Linux       : 
```

## 
```sh
Windows CMD : 
PowerShell  : 
Linux       : 
```

# [References](#references-1)

PWK 2.0 page 512 - 

https://www.windows-commandline.com/find-windows-os-version-from-command/