- 
- [References](#references)

-------------------------------------------

## [Get specific computer that shows all properties]
```sh
Get-ADComputer -Identity "User01-SRV1" -Properties *
```

## [Get all computers with a name starting with a particular string]
```sh
Get-ADComputer -Filter 'Name -like "User01*"' -Properties IPv4Address | 
    Format-Table Name, DNSHostName, IPv4Address -AutoSize

name        dnshostname            ipv4address
----        -----------            -----------
User01-SRV1 User01-SRV1.User01.com 10.194.99.181
User01-SRV2 User01-SRV2.User01.com 10.194.100.3
```

## [Gets all computers that have changed their password in specific time frame]
```sh
$Date = [DateTime]::Today.AddDays(-90) 
Get-ADComputer -Filter 'PasswordLastSet -ge $Date' -Properties PasswordLastSet | 
    Format-Table Name, PasswordLastSet

Name                                                      PasswordLastSet
----                                                      ---------------
USER01-SRV4                                               3/12/2009 6:40:37 PM
USER01-SRV5                                               3/12/2009 7:05:45 PM
```

## [Get computer accounts in a specific location using an LDAPFilter]
```sh
Get-ADComputer -LDAPFilter "(name=*laptop*)" -SearchBase "CN=Computers,DC= User01,DC=com"

name
----
pattiful-laptop
davidche-laptop
```

## [Get all computer accounts using a filter]
```sh
Get-ADComputer -Filter *
```

## [Get all computers with a name starting with Computer01 or Computer02]
```sh
Get-ADComputer -Filter 'Name -like "Computer01*" -or Name -like "Computer02*"' -Properties IPv4Address |
    Format-Table Name, DNSHostName, IPv4Address -AutoSize

name        dnshostname            ipv4address
----        -----------            -----------
Computer01-SRV1 Computer01-SRV1.Computer01.com 10.194.99.181
Computer02-SRV2 Computer02-SRV2.Computer02.com 10.194.100.3
```

## [Get all computers with a name starting with a string AND password last set before 30 days]
```sh
$Date = [DateTime]::Today.AddDays(-30)
Get-ADComputer -Filter 'Name -like "Computer01*" -and PasswordLastSet -ge $Date' -Properties IPv4Address | 
    Format-Table Name, DNSHostName, IPv4Address -AutoSize

name        dnshostname            ipv4address
----        -----------            -----------
Computer01-SRV1 Computer01-SRV1.Computer01.com 10.194.99.181
```

## 
```sh
Get-ADComputer -identity EXCHKNOX -Properties LastLogonDate,IPv4Address,OperatingSystemVersion,OperatingSystem,WhenCreated
```

## 
```sh

```

## 
```sh

```

# [References](#references-1)

https://learn.microsoft.com/en-us/powershell/module/activedirectory/get-adcomputer?view=windowsserver2022-ps

https://blog.netwrix.com/2023/05/25/using-get-adcomputer-cmdlet-in-powershell/