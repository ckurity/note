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

## 
```sh

```

# [References](#references-1)

