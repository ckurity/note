# PowerView

### TL;DR
```

```

### 
```
PS C:\> Get-DomainUser
Exception calling "FindAll" with "0" argument(s): "Unknown error (0x80005000)"
At C:\PowerView.ps1:5253 char:20
+             else { $Results = $UserSearcher.FindAll() }
+                    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : NotSpecified: (:) [], MethodInvocationException
    + FullyQualifiedErrorId : COMException
```

### 
```

```

### 
```

```

### Examples
```

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

### 
```

```

### 
```
$ cat PowerView.ps1 | g ^funct |nl
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