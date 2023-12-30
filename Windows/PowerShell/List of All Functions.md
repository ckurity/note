https://devblogs.microsoft.com/scripting/powertip-obtain-a-list-of-all-functions-in-powershell/


```sh
ls function:
```

```sh
PS C:\PC10> dir function: | sls inv

Invoke-Kerberoast
Invoke-RevertToSelf
Invoke-UserImpersonation
```

```sh
PS C:\PC10> dir function: | sls get-d

Get-Domain
Get-DomainComputer
Get-DomainController
Get-DomainDFSShare
Get-DomainDNSRecord
Get-DomainDNSZone
Get-DomainFileServer
Get-DomainForeignGroupMember
Get-DomainForeignUser
Get-DomainGPO
Get-DomainGPOComputerLocalGroupMapping
Get-DomainGPOLocalGroup
Get-DomainGPOUserLocalGroupMapping
Get-DomainGroup
Get-DomainGroupMember
Get-DomainGroupMemberDeleted
Get-DomainGUIDMap
Get-DomainManagedSecurityGroup
Get-DomainObject
Get-DomainObjectAcl
Get-DomainObjectAttributeHistory
Get-DomainObjectLinkedAttributeHistory
Get-DomainOU
Get-DomainPolicyData
Get-DomainSearcher
Get-DomainSID
Get-DomainSite
Get-DomainSPNTicket
Get-DomainSubnet
Get-DomainTrust
Get-DomainTrustMapping
Get-DomainUser
Get-DomainUserEvent
```

```sh

```
