- [id](#id)
- [nl /etc/passwd](#nl-etcpasswd)
- [hostname](#hostname)
- [OS Version & Architecture](#os-version--architecture)
- [References](#references)

-------------------------------------------

## [id](#id-1)
```sh
user@debian:~$ id
uid=1000(user) gid=1000(user) groups=1000(user),24(cdrom),25(floppy),29(audio),30(dip),44(video),46(plugdev)
user@debian:~$
```

## [nl /etc/passwd](#nl-etcpasswd-1)
```sh
user@debian:~$ nl /etc/passwd
     1  root:x:0:0:root:/root:/bin/bash
     2  daemon:x:1:1:daemon:/usr/sbin:/bin/sh
     3  bin:x:2:2:bin:/bin:/bin/sh
     4  sys:x:3:3:sys:/dev:/bin/sh
     5  sync:x:4:65534:sync:/bin:/bin/sync
     6  games:x:5:60:games:/usr/games:/bin/sh
     7  man:x:6:12:man:/var/cache/man:/bin/sh
     8  lp:x:7:7:lp:/var/spool/lpd:/bin/sh
     9  mail:x:8:8:mail:/var/mail:/bin/sh
    10  news:x:9:9:news:/var/spool/news:/bin/sh
    11  uucp:x:10:10:uucp:/var/spool/uucp:/bin/sh
    12  proxy:x:13:13:proxy:/bin:/bin/sh
    13  www-data:x:33:33:www-data:/var/www:/bin/sh
    14  backup:x:34:34:backup:/var/backups:/bin/sh
    15  list:x:38:38:Mailing List Manager:/var/list:/bin/sh
    16  irc:x:39:39:ircd:/var/run/ircd:/bin/sh
    17  gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/bin/sh
    18  nobody:x:65534:65534:nobody:/nonexistent:/bin/sh
    19  libuuid:x:100:101::/var/lib/libuuid:/bin/sh
    20  Debian-exim:x:101:103::/var/spool/exim4:/bin/false
    21  sshd:x:102:65534::/var/run/sshd:/usr/sbin/nologin
    22  user:x:1000:1000:user,,,:/home/user:/bin/bash
    23  statd:x:103:65534::/var/lib/nfs:/bin/false
    24  mysql:x:104:106:MySQL Server,,,:/var/lib/mysql:/bin/false
user@debian:~$ 
```

## [hostname](#hostname-1)
```sh
user@debian:~$ hostname
debian
```

## [OS Version & Architecture](#os-version--architecture-1)
```sh
user@debian:~$ nl /etc/issue
     1  Debian GNU/Linux 6.0 \n \l

user@debian:~$ nl /etc/os-release
nl: /etc/os-release: No such file or directory

user@debian:~$ ls -lh /etc/*e
-rw-r--r-- 1 root root   44 May 15  2020 /etc/adjtime
-rw-r--r-- 1 root root    7 May 12  2017 /etc/hostname
-rw-r--r-- 1 root root   28 Jun 11  2014 /etc/issue
-rw-r--r-- 1 root root  14K May 15  2020 /etc/ld.so.cache
-rw-r--r-- 1 root root 3.5K May 12  2017 /etc/localtime
-rw-r--r-- 1 root root  111 Mar 24  2014 /etc/magic.mime
-rw-r--r-- 1 root root   19 May 12  2017 /etc/mailname
-rw-r--r-- 1 root root  823 Aug  6  2010 /etc/profile
-rw-r--r-- 1 root root   11 May 12  2017 /etc/timezone
user@debian:~$ 
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



Basic Linux Privilege Escalation (13) | https://blog.g0tmi1k.com/2011/08/basic-linux-privilege-escalation/

Privilege Escalation (9) | https://sushant747.gitbooks.io/total-oscp-guide/content/privilege_escalation_-_linux.html

Privilege Escalation on Linux Platform (7) | Jie Liau | Mar 27, 2020 | https://jieliau.medium.com/privilege-escalation-on-linux-platform-8b3fbd0b1dd4

# REVIEW

Linux Privilege Escalation Guide(Updated for 2023) | Rashid-Feroze | March 20, 2023 | https://payatu.com/blog/a-guide-to-linux-privilege-escalation/
