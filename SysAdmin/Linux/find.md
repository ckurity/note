# Linux find

- [Linux find](#linux-find)
    - [Common Usage](#common-usage)
    - [Examples](#examples)
        - [find active.htb -type f -exec file {} +](#find-activehtb--type-f--exec-file)
        - [Find files, but not ext '*.txt' or '*.ini'](#find-mnt--type-f---name-txt---name-ini-2devnull--exec-ls--lh)

### Common Usage
```
find / -name *flag*.txt 2>/dev/null
find / -name *flag*.txt -exec ls -lh {} + 2>/dev/null
find / -name *flag*.txt -exec cat {} + 2>/dev/null

find /mnt -type d
find /mnt -type d -writable

find /mnt
find /mnt 2>/dev/null
find /mnt -type f 2>/dev/null
find /mnt -type f -name '*.txt' 2>/dev/null
find /mnt -type f -name '*.txt' 2>/dev/null -exec ls -lh {} +
```

## Examples

### find the files equal to or greater than 2 MB
```sh
find . -type f -size +2M
```
### find active.htb -type f -exec file {} +
```
$ find active.htb -type f -exec file {} +
active.htb/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/MACHINE/Preferences/Groups/Groups.xml:            XML 1.0 document, ASCII text, with very long lines (480), with CRLF line terminators
active.htb/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/MACHINE/Microsoft/Windows NT/SecEdit/GptTmpl.inf: Unicode text, UTF-16, little-endian text, with CRLF line terminators
active.htb/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/MACHINE/Registry.pol:                             data
active.htb/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/Group Policy/GPE.INI:                             ASCII text, with CRLF line terminators
active.htb/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/GPT.INI:                                          ASCII text, with CRLF line terminators
active.htb/Policies/{6AC1786C-016F-11D2-945F-00C04fB984F9}/MACHINE/Microsoft/Windows NT/SecEdit/GptTmpl.inf: Unicode text, UTF-16, little-endian text, with CRLF line terminators
active.htb/Policies/{6AC1786C-016F-11D2-945F-00C04fB984F9}/GPT.INI:                                          ASCII text, with CRLF line terminators
```

### find /mnt -type f ! -name '*.txt' ! -name '*.ini' 2>/dev/null -exec ls -lh {} +
```
$ find /mnt -type f ! -name '*.txt' ! -name '*.ini' 2>/dev/null -exec ls -lh {} +
-rwxr-xr-x 1 root root 1.5K Apr  9  2020 '/mnt/edgar.jacobs/Desktop/Microsoft Edge.lnk'
-rwxr-xr-x 1 root root  23K Aug 10  2020  /mnt/edgar.jacobs/Desktop/Phishing_Attempt.xlsx
-rwxr-xr-x 1 root root 1.5K Apr  7  2020 '/mnt/sierra.frye/Desktop/Microsoft Edge.lnk'
```