### [locate smtp enum](#locate-smtp-enum-1)
### [smtp-user-enum.pl usage](#smtp-user-enumpl-usage-1)
### [Example](#example-1)
### [smtp-user-enum.pl -U users.txt -t $ip](#smtp-user-enumpl--u-userstxt--t-ip-1)
### [smtp-user-enum.pl -U users.txt -t $ip -M EXPN](#smtp-user-enumpl--u-userstxt--t-ip--m-expn-1)

### locate smtp enum
```
$ locate smtp enum
/usr/share/kali-menu/applications/kali-smtp-user-enum.desktop
/usr/share/legion/scripts/smtp-user-enum.pl
/usr/share/metasploit-framework/modules/auxiliary/scanner/smtp/smtp_enum.rb
/usr/share/nmap/scripts/smtp-enum-users.nse
```

### smtp-user-enum.pl usage
```
$ /usr/share/legion/scripts/smtp-user-enum.pl
smtp-user-enum v1.2 ( http://pentestmonkey.net/tools/smtp-user-enum )

Usage: smtp-user-enum.pl [options] ( -u username | -U file-of-usernames ) ( -t host | -T file-of-targets )

options are:
        -m n     Maximum number of processes (default: 5)
        -M mode  Method to use for username guessing EXPN, VRFY or RCPT (default: VRFY)
        -u user  Check if user exists on remote system
        -f addr  MAIL FROM email address.  Used only in "RCPT TO" mode (default: user@example.com)
        -D dom   Domain to append to supplied user list to make email addresses (Default: none)
                 Use this option when you want to guess valid email addresses instead of just usernames
                 e.g. "-D example.com" would guess foo@example.com, bar@example.com, etc.  Instead of 
                      simply the usernames foo and bar.
        -U file  File of usernames to check via smtp service
        -t host  Server host running smtp service
        -T file  File of hostnames running the smtp service
        -p port  TCP port on which smtp service runs (default: 25)
        -d       Debugging output
        -t n     Wait a maximum of n seconds for reply (default: 5)
        -v       Verbose
        -h       This help message

Also see smtp-user-enum-user-docs.pdf from the smtp-user-enum tar ball.

Examples:

$ smtp-user-enum.pl -M VRFY -U users.txt -t 10.0.0.1
$ smtp-user-enum.pl -M EXPN -u admin1 -t 10.0.0.1
$ smtp-user-enum.pl -M RCPT -U users.txt -T mail-server-ips.txt
$ smtp-user-enum.pl -M EXPN -D example.com -U users.txt -t 10.0.0.1
```

### Example

### smtp-user-enum.pl -U users.txt -t $ip
```
$ /usr/share/legion/scripts/smtp-user-enum.pl -U users.txt -t $ip
Starting smtp-user-enum v1.2 ( http://pentestmonkey.net/tools/smtp-user-enum )

 ----------------------------------------------------------
|                   Scan Information                       |
 ----------------------------------------------------------

Mode ..................... VRFY
Worker Processes ......... 5
Usernames file ........... users.txt
Target count ............. 1
Username count ........... 9
Target TCP port .......... 25
Query timeout ............ 5 secs
Target domain ............ 

######## Scan started at Wed Sep  6 08:39:31 2023 #########
######## Scan completed at Wed Sep  6 08:39:34 2023 #########
0 results.

9 queries in 3 seconds (3.0 queries / sec)
```

### smtp-user-enum.pl -U users.txt -t $ip -M EXPN
```
$ /usr/share/legion/scripts/smtp-user-enum.pl -U users.txt -t $ip -M EXPN
Starting smtp-user-enum v1.2 ( http://pentestmonkey.net/tools/smtp-user-enum )

 ----------------------------------------------------------
|                   Scan Information                       |
 ----------------------------------------------------------

Mode ..................... EXPN
Worker Processes ......... 5
Usernames file ........... users.txt
Target count ............. 1
Username count ........... 9
Target TCP port .......... 25
Query timeout ............ 5 secs
Target domain ............ 

######## Scan started at Wed Sep  6 08:44:37 2023 #########
######## Scan completed at Wed Sep  6 08:44:40 2023 #########
0 results.

9 queries in 3 seconds (3.0 queries / sec)
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