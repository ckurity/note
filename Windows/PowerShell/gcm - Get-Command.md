```
gcm | sls get-dom
. .\PowerView.ps1
```

```
# BEFORE
PS C:\> gcm | sls get-dom
PS C:\> . .\PowerView.ps1

# AFTER
PS C:\> gcm | sls get-dom

Get-DomainPolicy
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


PS C:\>
```

```
PS C:\> gcm Invoke-ShareFinder

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Alias           Invoke-ShareFinder
```