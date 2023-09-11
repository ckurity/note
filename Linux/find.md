# Linux find

### [find active.htb -type f -exec file {} +](#find-activehtb--type-f--exec-file-1)

```
find / -name *flag*.txt 2>/dev/null

find / -name *flag*.txt -exec ls -lh {} + 2>/dev/null

find / -name *flag*.txt -exec cat {} + 2>/dev/null
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

find /mnt -type d
find /mnt -type d -writable