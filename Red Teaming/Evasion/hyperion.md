- 
- [References](#references)

-------------------------------------------

## 
```sh
kali:~$ cd /usr/share/windows-resources/
kali:/usr/share/windows-resources$ ls -lh
total 32K
drwxr-xr-x  7 root root 4.0K Mar 10  2023 binaries
drwxr-xr-x  2 root root 4.0K Mar 10  2023 dbd
drwxr-xr-x  4 root root 4.0K Sep 17 23:20 hyperion 👈 
drwxr-xr-x  4 root root 4.0K Mar 10  2023 mimikatz
lrwxrwxrwx  1 root root   20 Mar  3  2023 powershell-empire -> ../powershell-empire
drwxr-xr-x 11 root root 4.0K Mar 10  2023 powersploit
drwxr-xr-x  2 root root 4.0K Mar 10  2023 sbd
drwxr-xr-x  3 root root 4.0K Dec 26 21:57 shellter
drwxr-xr-x  2 root root 4.0K Mar 10  2023 wce
kali:/usr/share/windows-resources$ cd hyperion
kali:/usr/share/windows-resources/hyperion$ ls -lh
total 256K
drwxr-xr-x 3 root root 4.0K Sep 17 23:20 Fasm
-rwxr-xr-x 1 root root 246K Aug 30 16:33 hyperion.exe
drwxr-xr-x 5 root root 4.0K Mar 10  2023 Src
```

## 
```sh
$ wine hyperion.exe                    
Hyperion PE-Crypter
Version 2.0 by Christian Ammann
Http://www.phobosys.de/hyperion

Usage: hyperion.exe <options> <infile> <outfile>
List of available options:
  -k <size>      Length of random AES key in bytes.
                 Default value is 6.
  -s <size>      Each byte of the key has a range between
                 0 and <size-1>. Default value is 4.
  -l, --logile   The packed executable generates a log.txt
                 on startup for debugging purpose
  -v, --verbose  Print verbose informations while running.
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

## 
```sh

```

# [References](#references-1)

PWK 1.0 page 322 - 323

https://www.kali.org/tools/hyperion/
https://github.com/jivoi/pentest/blob/master/shell/hyperion_crypter.sh