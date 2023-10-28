- [Help](#help)
    - [Without Args](#without-args)
    - [patator | grep http](#patator--grep-http-1)
- [patator http_fuzz](#patator-http_fuzz)

-------------------------------------------

# [Help](#help-1)
## [Without Args](#without-args-1)
```sh
$ patator
/usr/bin/patator:2601: DeprecationWarning: 'telnetlib' is deprecated and slated for removal in Python 3.13
  from telnetlib import Telnet

Patator 0.9 (https://github.com/lanjelot/patator) with python-3.11.4
Usage: patator module --help

Available modules:
  + ftp_login     : Brute-force FTP
  + ssh_login     : Brute-force SSH
  + telnet_login  : Brute-force Telnet
  + smtp_login    : Brute-force SMTP
  + smtp_vrfy     : Enumerate valid users using SMTP VRFY
  + smtp_rcpt     : Enumerate valid users using SMTP RCPT TO
  + finger_lookup : Enumerate valid users using Finger
  + http_fuzz     : Brute-force HTTP
  + rdp_gateway   : Brute-force RDP Gateway
  + ajp_fuzz      : Brute-force AJP
  + pop_login     : Brute-force POP3
  + pop_passd     : Brute-force poppassd (http://netwinsite.com/poppassd/)
  + imap_login    : Brute-force IMAP4
  + ldap_login    : Brute-force LDAP
  + dcom_login    : Brute-force DCOM
  + smb_login     : Brute-force SMB
  + smb_lookupsid : Brute-force SMB SID-lookup
  + rlogin_login  : Brute-force rlogin
  + vmauthd_login : Brute-force VMware Authentication Daemon
  + mssql_login   : Brute-force MSSQL
  + oracle_login  : Brute-force Oracle
  + mysql_login   : Brute-force MySQL
  + mysql_query   : Brute-force MySQL queries
  + rdp_login     : Brute-force RDP (NLA)
  + pgsql_login   : Brute-force PostgreSQL
  + vnc_login     : Brute-force VNC
  + dns_forward   : Forward DNS lookup
  + dns_reverse   : Reverse DNS lookup
  + snmp_login    : Brute-force SNMP v1/2/3
  + ike_enum      : Enumerate IKE transforms
  + unzip_pass    : Brute-force the password of encrypted ZIP files
  + keystore_pass : Brute-force the password of Java keystore files
  + sqlcipher_pass : Brute-force the password of SQLCipher-encrypted databases
  + umbraco_crack : Crack Umbraco HMAC-SHA1 password hashes
  + tcp_fuzz      : Fuzz TCP services
  + dummy_test    : Testing module
```

## [patator | grep http](#patator--grep-http-1)
```sh
$ patator | grep http
/usr/bin/patator:2601: DeprecationWarning: 'telnetlib' is deprecated and slated for removal in Python 3.13
  from telnetlib import Telnet
Patator 0.9 (https://github.com/lanjelot/patator) with python-3.11.4
  + http_fuzz     : Brute-force HTTP
  + pop_passd     : Brute-force poppassd (http://netwinsite.com/poppassd/)
```

# [patator http_fuzz](#patator-http_fuzz-1)
```sh
$ patator http_fuzz
/usr/bin/patator:2601: DeprecationWarning: 'telnetlib' is deprecated and slated for removal in Python 3.13
  from telnetlib import Telnet
Patator 0.9 (https://github.com/lanjelot/patator) with python-3.11.4
Usage: http_fuzz <module-options ...> [global-options ...]

Examples:
  http_fuzz url=http://10.0.0.1/FILE0 0=paths.txt -x ignore:code=404 -x ignore,retry:code=500
  http_fuzz url=http://10.0.0.1/manager/html user_pass=COMBO00:COMBO01 0=combos.txt -x ignore:code=401
  http_fuzz url=http://10.0.0.1/phpmyadmin/index.php method=POST body='pma_username=root&pma_password=FILE0&server=1&lang=en' 0=passwords.txt follow=1 accept_cookie=1 -x ignore:fgrep='Cannot log in to the MySQL server'

Module options:
  url           : target url (scheme://host[:port]/path?query)
  body          : body data
  header        : use custom headers
  method        : method to use [GET|POST|HEAD|...]
  raw_request   : load request from file
  scheme        : scheme [http|https]
  auto_urlencode: automatically perform URL-encoding [1|0]
  pathasis      : retain sequences of /../ or /./ [0|1]
  user_pass     : username and password for HTTP authentication (user:pass)
  auth_type     : type of HTTP authentication [basic | digest | ntlm]
  follow        : follow any Location redirect [0|1]
  max_follow    : redirection limit [5]
  accept_cookie : save received cookies to issue them in future requests [0|1]
  proxy         : proxy to use (host:port)
  proxy_type    : proxy type [http|socks4|socks4a|socks5]
  resolve       : hostname to IP address resolution to use (hostname:IP)
  ssl_cert      : client SSL certificate file (cert+key in PEM format)
  timeout_tcp   : seconds to wait for a TCP handshake [10]
  timeout       : seconds to wait for a HTTP response [20]
  before_urls   : comma-separated URLs to query before the main request
  before_header : use a custom header in the before_urls request
  before_egrep  : extract data from the before_urls response to place in the main request
  after_urls    : comma-separated URLs to query after the main request
  max_mem       : store no more than N bytes of request+response data in memory [-1 (unlimited)]
  persistent    : use persistent connections [1|0] 

ERROR: wrong usage. Please read the README inside for more information.
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

## 
```sh

```

# References

