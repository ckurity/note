- 
- [References](#references)

-------------------------------------------

Q: Get-Acl syntax similar to "Find-InterestingDomainAcl -ResolveGUIDs"

B: While Get-ACL doesn't have a direct equivalent to the -ResolveGUIDs switch, here's a PowerShell approach that combines Get-ACL with other cmdlets to achieve similar functionality:

## 
```PowerShell
Get-Acl -Path "AD:\$PathToObject" |
    ForEach-Object {
        $_.Access |
            Where-Object { $_.IdentityReference -notlike "*BUILTIN*" } |
            ForEach-Object {
                # Resolve GUIDs to names
                try {
                    $resolvedIdentity = (Get-ADObject $_.IdentityReference).Name
                } catch {
                    $resolvedIdentity = $_.IdentityReference
                }

                # Display object details and resolved permissions
                Write-Output "Object: $($_.Path)"
                Write-Output "IdentityReference: $resolvedIdentity"
                Write-Output "ActiveDirectoryRights: $($_.ActiveDirectoryRights)"
                Write-Output "---"
            }
    }
```

Explanation:
1.	Retrieve ACLs:
o	Get-Acl -Path "AD:\$PathToObject" fetches the ACL for the specified Active Directory object.

2.	Filter Non-Built-In Entries:
o	Where-Object { $_.IdentityReference -notlike "*BUILTIN*" } filters Access entries to exclude those associated with built-in accounts or groups.
3.	Resolve GUIDs:
o	try-catch block attempts to resolve GUIDs to names using Get-ADObject. If resolution fails, the original GUID is used.
4.	Output Information:
o	Write-Output commands display the object's path, resolved identity reference, and ActiveDirectoryRights for each filtered entry.
Remember:
•	Replace $PathToObject with the actual path to the AD object you want to analyze.
•	This approach involves iterating through objects and resolving GUIDs, potentially affecting performance in large-scale scenarios.
•	For comprehensive domain-wide analysis with GUI-based visualization and advanced features, consider tools like BloodHound or third-party ACL auditing solutions.

## 
```sh
PS C:\> Get-Acl -Path "AD:\CN=hr,CN=Users,DC=AOC,DC=local"

Path                                                                                               Owner             Access
----                                                                                               -----             ------
Microsoft.ActiveDirectory.Management.dll\ActiveDirectory:://RootDSE/CN=hr,CN=Users,DC=AOC,DC=local AOC\Domain Admins NT AUTHORITY\SELF Allo...

PS C:\>

$PathToObject = Get-Acl -Path "AD:\CN=hr,CN=Users,DC=AOC,DC=local"
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

