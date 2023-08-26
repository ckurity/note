```
wmic useraccount where disabled=true get caption,disabled
```
```
wmic useraccount where disabled=true get caption,disabled,name
```
```
wmic useraccount get caption,disabled
```
```
wmic useraccount
```

https://www.windows-commandline.com/enable-disable-user-account-command/

### HTB Forest; Access denied
```
C:\Users\svc-alfresco\Documents>wmic useraccount
wmic useraccount
ERROR:
Description = Access denied
```
