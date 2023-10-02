

### [GenericAll on User](https://www.ired.team/offensive-security-experiments/active-directory-kerberos-abuse/abusing-active-directory-acls-aces#genericall-on-user)
```
Get-ObjectAcl -SamAccountName delegate -ResolveGUIDs | ? {$_.ActiveDirectoryRights -eq "GenericAll"} | tee Get-ObjectAcl-GenericAll_on_User.txt
```

### nothing? hmmm
https://github.com/mantvydasb/RedTeaming-Tactics-and-Techniques
```
*Evil-WinRM* PS C:\Users\svc-alfresco\Documents> Get-ObjectAcl -SamAccountName delegate -ResolveGUIDs | ? {$_.ActiveDirectoryRights -eq "GenericAll"} 
*Evil-WinRM* PS C:\Users\svc-alfresco\Documents>
```

### 
```
*Evil-WinRM* PS C:\Users\svc-alfresco\Documents> Get-ObjectAcl | tee Get-ObjectAcl.txt

# <this will take some time to execute>

*Evil-WinRM* PS C:\Users\svc-alfresco\Documents> download Get-ObjectAcl.txt
                                        
Info: Downloading C:\Users\svc-alfresco\Documents\Get-ObjectAcl.txt to Get-ObjectAcl.txt
Progress: 42% : |▓▓▓▒░░░░░░|

# <this will take some time to download, 48M on Forest box alone>
```


### Grep can't be used in Unicode text, convert it to ASCII
```
$ file Get-ObjectAcl.txt             
Get-ObjectAcl.txt: Unicode text, UTF-16, little-endian text, with CRLF line terminators

$ iconv -f UTF-16LE -t ASCII//TRANSLIT//IGNORE -o output.txt Get-ObjectAcl.txt

$ ls -lh
total 71M
-rw-r--r-- 1 kali kali 48M Aug 31 10:48 Get-ObjectAcl.txt
-rw-r--r-- 1 kali kali 24M Aug 31 10:54 output.txt

$ file *
Get-ObjectAcl.txt: Unicode text, UTF-16, little-endian text, with CRLF line terminators
output.txt:        ASCII text, with CRLF line terminators
```

### 
```
$ sort -u output.txt| g ActiveDirectoryRights |nl
     1  ActiveDirectoryRights  : -1
     2  ActiveDirectoryRights  : CreateChild
     3  ActiveDirectoryRights : CreateChild
     4  ActiveDirectoryRights  : CreateChild, DeleteChild
     5  ActiveDirectoryRights : CreateChild, DeleteChild
     6  ActiveDirectoryRights  : CreateChild, DeleteChild, ListChildren
     7  ActiveDirectoryRights : CreateChild, DeleteChild, ListChildren, ReadProperty, DeleteTree, ExtendedRight, Delete, GenericWrite, WriteDacl, WriteOwner
     8  ActiveDirectoryRights  : CreateChild, DeleteChild, ListChildren, ReadProperty, WriteProperty, ListObject
     9  ActiveDirectoryRights : CreateChild, DeleteChild, Self, WriteProperty, DeleteTree, Delete, GenericRead, WriteDacl, WriteOwner
    10  ActiveDirectoryRights : CreateChild, DeleteChild, Self, WriteProperty, ExtendedRight, Delete, GenericRead, WriteDacl, WriteOwner
    11  ActiveDirectoryRights : CreateChild, DeleteChild, Self, WriteProperty, ExtendedRight, GenericRead, WriteDacl, WriteOwner
    12  ActiveDirectoryRights : CreateChild, Self, WriteProperty, ExtendedRight, Delete, GenericRead, WriteDacl, WriteOwner
    13  ActiveDirectoryRights : CreateChild, Self, WriteProperty, ExtendedRight, GenericRead, WriteDacl, WriteOwner
    14  ActiveDirectoryRights : CreateChild, Self, WriteProperty, GenericRead
    15  ActiveDirectoryRights : CreateChild, Self, WriteProperty, GenericRead, WriteDacl, WriteOwner
    16  ActiveDirectoryRights  : Delete
    17  ActiveDirectoryRights  : DeleteChild
    18  ActiveDirectoryRights : DeleteChild
    19  ActiveDirectoryRights : DeleteTree
    20  ActiveDirectoryRights : DeleteTree, Delete
    21  ActiveDirectoryRights : DeleteTree, GenericRead
    22  ActiveDirectoryRights  : DeleteTree, WriteDacl
    23  ActiveDirectoryRights  : ExtendedRight
    24  ActiveDirectoryRights  : GenericAll
    25  ActiveDirectoryRights : GenericAll
    26  ActiveDirectoryRights  : GenericRead
    27  ActiveDirectoryRights : GenericRead
    28  ActiveDirectoryRights : ListChildren
    29  ActiveDirectoryRights : ReadControl
    30  ActiveDirectoryRights  : ReadProperty
    31  ActiveDirectoryRights : ReadProperty
    32  ActiveDirectoryRights : ReadProperty, GenericExecute
    33  ActiveDirectoryRights : ReadProperty, ReadControl
    34  ActiveDirectoryRights  : ReadProperty, WriteProperty
    35  ActiveDirectoryRights  : ReadProperty, WriteProperty, ExtendedRight
    36  ActiveDirectoryRights : ReadProperty, WriteProperty, GenericExecute
    37  ActiveDirectoryRights  : ReadProperty, WriteProperty, ListObject, Delete
    38  ActiveDirectoryRights  : Self
    39  ActiveDirectoryRights  : WriteDacl
    40  ActiveDirectoryRights  : WriteProperty
```


### 
```
$ v output.txt| g 'ActiveDirectoryRights  : WriteDacl' |nl
     1    1693  ActiveDirectoryRights  : WriteDacl
     2    4099  ActiveDirectoryRights  : WriteDacl
     3    6099  ActiveDirectoryRights  : WriteDacl
[ snip ]
   271  566446  ActiveDirectoryRights  : WriteDacl
   272  568503  ActiveDirectoryRights  : WriteDacl
   273  570576  ActiveDirectoryRights  : WriteDacl
        
```


### 
```

```

### 
```

```

### 
```
*Evil-WinRM* PS C:\Users\svc-alfresco\Documents> Get-ObjectAcl -SamAccountName delegate -ResolveGUIDs | ? {$_.ActiveDirectoryRights -eq "GenericAll"} | tee Get-ObjectAcl-v2.txt
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
