

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