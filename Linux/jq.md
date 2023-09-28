# jq

- [jq](#jq)
- [TL;DR](#tldr)
- [View Data](#view-data)
  - [Show All JSON Data with jq](#show-all-json-data-with-jq)
  - [Show Array 0 Only](#show-array-0-only)
  - [Show Array 0,1,2 Only](#show-array-012-only)
  - [Extract the property names from the objects within the JSON array](#extract-the-property-names-from-the-objects-within-the-json-array)
    - [jq '.[0] | keys[]'](#jq-0--keys)
      - [raw data](#raw-data)
  - [Extract "email"](#extract-email)
    - [Extract all data from "email" "okent@megacorp.htb"](#extract-all-data-from-email-okentmegacorphtb)
  - [Extract "position"](#extract-position)
    - [Extract all data from "position" "Assistant Manager"](#extract-all-data-from-position-assistant-manager)
- [CME -M spider_plus](#cme--m-spider_plus)
  - [Show all Keys](#show-all-keys)                                 # jq keys
  - [View files inside](#view-files-inside)                         # jq .NETLOGON
  - [View files only](#view-files-only)
  - [Show all Shares](#cat-101011129json--jq-map_valueskeys-nl)
- [BEST tips from ChatGPT](#best-tips-from-chatgpt)
  - [Shares & File](#shares--file)
  - [Shares, File & Size](#size)
  - [Certain data only](#certain-data-only)
- [BloodHound json data](#bloodhound-json-data)
  - [samaccountname](#samaccountname)
    - [jq keys](#jq-keys)
    - [jq '.data | keys'](#jq-data--keys)
    - [jq '.data[0] | keys'](#jq-data0--keys)
    - [jq '.data[0].Properties'](#jq-data0properties)
    - [jq '.data[0].Properties.samaccountname'](#jq-data0propertiessamaccountname)
    - [jq .data[].Properties.samaccountname](#jq-datapropertiessamaccountname)
  - [serviceprincipalnames](#serviceprincipalnames)
    - [TL;DR](#tldr-1)
    - [Remove empty array ([]) as a result](#remove-empty-array--as-a-result)
    - [-c / Compact Version](#c--compact-version)
    - [remove the square brackets [] from the output](#remove-the-square-brackets--from-the-output)


-------------------------------------------

# TL;DR
```sh
cat getColleagues | jq                            # Show All JSON Data with jq
cat getColleagues | jq .[0]                       # Show Array 0 Only
cat getColleagues | jq .[0,1,2]                   # Show Array 0,1,2 Only
cat getColleagues | jq '.[0] | keys[]'            # Extract the property names from the objects within the JSON array
cat getColleagues | jq '.[0] | keys[]' -r         # raw data
cat 10.10.10.182.json | jq keys                   # Show all Keys / Open Shares in HTB Cascade # Simple way
cat 10.10.11.129.json | jq '.|keys'               # Show all Keys / Open Shares in HTB Search # ippsec way
cat 10.10.11.129.json | jq '.[]|keys'             # up one, but we don't get the share name
cat 10.10.11.129.json | jq '.|map_values(keys)'
```

# View Data
## Show All JSON Data with jq
```sh
cd ~/xyz/labs/HTB/_ActiveDirectory101/Multimaster/
cat getColleagues | jq
```

## Show Array 0 Only
```sh
$ cat getColleagues | jq .[0]
{
  "id": 1,
  "name": "Sarina Bauer",
  "position": "Junior Developer",
  "email": "sbauer@megacorp.htb",
  "src": "sbauer.jpg"
}
```

## Show Array 0,1,2 Only
```sh
$ cat getColleagues | jq .[0,1,2]
{
  "id": 1,
  "name": "Sarina Bauer",
  "position": "Junior Developer",
  "email": "sbauer@megacorp.htb",
  "src": "sbauer.jpg"
}
{
  "id": 2,
  "name": "Octavia Kent",
  "position": "Senior Consultant",
  "email": "okent@megacorp.htb",
  "src": "okent.jpg"
}
{
  "id": 3,
  "name": "Christian Kane",
  "position": "Assistant Manager",
  "email": "ckane@megacorp.htb",
  "src": "ckane.jpg"
}
```

## Extract the property names from the objects within the JSON array

### jq '.[0] | keys[]'
```json
$ cat getColleagues | jq '.[0] | keys[]'
"email"
"id"
"name"
"position"
"src"
```

#### raw data
```json
$ cat getColleagues | jq '.[0] | keys[]' -r
email
id
name
position
src
```

## Extract "email"
```json
$ cat getColleagues | jq .[].email -r
sbauer@megacorp.htb
okent@megacorp.htb
ckane@megacorp.htb
[snip]
```

### Extract all data from "email" "okent@megacorp.htb"
```json
$ cat getColleagues | jq '.[] | select(.email=="okent@megacorp.htb")'
{
  "id": 2,
  "name": "Octavia Kent",
  "position": "Senior Consultant",
  "email": "okent@megacorp.htb",
  "src": "okent.jpg"
}
```

## Extract "position"
```json
$ cat getColleagues | jq '.[].position'                              
"Junior Developer"
"Senior Consultant"
"Assistant Manager"
[snip]
```

### Extract all data from "position" "Assistant Manager"
```json
$ cat getColleagues | jq '.[] | select (.position=="Assistant Manager")'
{
  "id": 3,
  "name": "Christian Kane",
  "position": "Assistant Manager",
  "email": "ckane@megacorp.htb",
  "src": "ckane.jpg"
}
```

# CME -M spider_plus

### Show all Keys
Open Shares in HTB Search
```json
$ cat 10.10.10.182.json | jq keys
[
  "Data",
  "NETLOGON",
  "SYSVOL"
]

$ cat 10.10.11.129.json | jq '.|keys'
[
  "CertEnroll",
  "NETLOGON",
  "RedirectedFolders$",
  "SYSVOL",
  "helpdesk"
]
```

### View files inside
```sh
$ cat 10.10.10.182.json | jq .NETLOGON
{
  "MapAuditDrive.vbs": {
    "atime_epoch": "2020-01-15 16:45:08",
    "ctime_epoch": "2020-01-15 16:45:08",
    "mtime_epoch": "2020-01-15 16:50:14",
    "size": "258 B"
  },
  "MapDataDrive.vbs": {
    "atime_epoch": "2020-01-15 16:50:28",
    "ctime_epoch": "2020-01-15 16:49:19",
    "mtime_epoch": "2020-01-15 16:51:03",
    "size": "255 B"
  }
}
```

### View files only
```sh
$ cat 10.10.10.182.json | jq '.Data | keys[]'
"IT/Email Archives/Meeting_Notes_June_2018.html"
"IT/Logs/Ark AD Recycle Bin/ArkAdRecycleBin.log"
"IT/Logs/DCs/dcdiag.log"
"IT/Temp/s.smith/VNC Install.reg"
```

### cat 10.10.11.129.json | jq '.|map_values(keys)' |nl
```json
$ cat 10.10.11.129.json | jq '.|map_values(keys)' |nl
     1  {
     2    "CertEnroll": [
     3      "Research.search.htb_search-RESEARCH-CA.crt",
     4      "nsrev_search-RESEARCH-CA.asp",
     5      "search-RESEARCH-CA+.crl",
     6      "search-RESEARCH-CA.crl"
     7    ],
     8    "NETLOGON": [],
     9    "RedirectedFolders$": [
    10      "edgar.jacobs/Desktop/$RECYCLE.BIN/desktop.ini",
    11      "edgar.jacobs/Desktop/Microsoft Edge.lnk",
    12      "edgar.jacobs/Desktop/Phishing_Attempt.xlsx",
    13      "edgar.jacobs/Desktop/desktop.ini",
    14      "edgar.jacobs/Documents/$RECYCLE.BIN/desktop.ini",
    15      "edgar.jacobs/Documents/desktop.ini",
    16      "edgar.jacobs/Downloads/$RECYCLE.BIN/desktop.ini",
    17      "edgar.jacobs/Downloads/desktop.ini",
    18      "sierra.frye/Desktop/$RECYCLE.BIN/desktop.ini",
    19      "sierra.frye/Desktop/Microsoft Edge.lnk",
    20      "sierra.frye/Desktop/desktop.ini",
    21      "sierra.frye/Desktop/user.txt",
    22      "sierra.frye/user.txt"
    23    ],
    24    "SYSVOL": [
    25      "search.htb/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/GPT.INI",
    26      "search.htb/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/MACHINE/Microsoft/Windows NT/SecEdit/GptTmpl.inf",
    27      "search.htb/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/MACHINE/Preferences/Groups/Groups.xml",
    28      "search.htb/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/MACHINE/Preferences/Services/Services.xml",
    29      "search.htb/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/USER/Registry.pol",
    30      "search.htb/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/USER/comment.cmtx",
    31      "search.htb/Policies/{41DD7D0B-E072-4853-AB8D-1C1D9E3CE356}/GPT.INI",
    32      "search.htb/Policies/{41DD7D0B-E072-4853-AB8D-1C1D9E3CE356}/User/Registry.pol",
    33      "search.htb/Policies/{41DD7D0B-E072-4853-AB8D-1C1D9E3CE356}/User/comment.cmtx",
    34      "search.htb/Policies/{6AC1786C-016F-11D2-945F-00C04fB984F9}/GPT.INI",
    35      "search.htb/Policies/{6AC1786C-016F-11D2-945F-00C04fB984F9}/MACHINE/Microsoft/Windows NT/SecEdit/GptTmpl.inf",
    36      "search.htb/Policies/{D47E9F04-E75B-4E07-8654-6C82FE85EAA2}/GPT.INI",
    37      "search.htb/Policies/{D47E9F04-E75B-4E07-8654-6C82FE85EAA2}/User/Registry.pol",
    38      "search.htb/Policies/{E2008E68-F4C5-49B7-9D1C-9D24DEBD8F1D}/GPT.INI",
    39      "search.htb/Policies/{E2008E68-F4C5-49B7-9D1C-9D24DEBD8F1D}/User/Documents & Settings/fdeploy.ini",
    40      "search.htb/Policies/{E2008E68-F4C5-49B7-9D1C-9D24DEBD8F1D}/User/Documents & Settings/fdeploy1.ini",
    41      "search.htb/Policies/{E9CE279C-52D0-4856-9073-82BAB4EB85AF}/GPT.INI",
    42      "search.htb/Policies/{E9CE279C-52D0-4856-9073-82BAB4EB85AF}/Machine/Microsoft/Windows NT/SecEdit/GptTmpl.inf",
    43      "search.htb/Policies/{E9CE279C-52D0-4856-9073-82BAB4EB85AF}/Machine/Registry.pol"
    44    ],
    45    "helpdesk": []
    46  }
```

## BEST tips from ChatGPT
### Shares & File
```sh
$ cat 10.10.10.182.json | jq 'to_entries[] | .key as $section | .value | keys[] | "\($section): \(.)"'
"Data: IT/Email Archives/Meeting_Notes_June_2018.html"
"Data: IT/Logs/Ark AD Recycle Bin/ArkAdRecycleBin.log"
"Data: IT/Logs/DCs/dcdiag.log"
"Data: IT/Temp/s.smith/VNC Install.reg"
"NETLOGON: MapAuditDrive.vbs"
"NETLOGON: MapDataDrive.vbs"
"SYSVOL: cascade.local/Policies/{2906D621-7B58-40F1-AA47-4ED2AEF29484}/GPT.INI"
"SYSVOL: cascade.local/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/GPT.INI"
"SYSVOL: cascade.local/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/MACHINE/Microsoft/Windows NT/SecEdit/GptTmpl.inf"
```

<!-- Use This -->
### + Size
```json
$ cat 10.10.10.182.json | jq 'to_entries[] | .key as $section | .value | to_entries[] | "\($section): \(.key) (\(.value.size))"'
"Data: IT/Email Archives/Meeting_Notes_June_2018.html (2.46 KB)"
"Data: IT/Logs/Ark AD Recycle Bin/ArkAdRecycleBin.log (1.27 KB)"
"Data: IT/Logs/DCs/dcdiag.log (5.83 KB)"
"Data: IT/Temp/s.smith/VNC Install.reg (2.62 KB)"
"NETLOGON: MapAuditDrive.vbs (258 B)"
"NETLOGON: MapDataDrive.vbs (255 B)"
"SYSVOL: cascade.local/Policies/{2906D621-7B58-40F1-AA47-4ED2AEF29484}/GPT.INI (59 B)"
"SYSVOL: cascade.local/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/GPT.INI (23 B)"
"SYSVOL: cascade.local/Policies/{31B2F340-016D-11D2-945F-00C04FB984F9}/MACHINE/Microsoft/Windows NT/SecEdit/GptTmpl.inf (1.22 KB)"
```

### Certain data only
```sh
$ cat file.json | jq 'to_entries[] | select(.key == "Audit$") | .key as $section | .value | to_entries[] | "\($section): \(.key) (\(.value.size))"'

"Audit$: CascAudit.exe (13 KB)"
"Audit$: CascCrypto.dll (12 KB)"
"Audit$: DB/Audit.db (24 KB)"
"Audit$: RunAudit.bat (45 B)"
"Audit$: System.Data.SQLite.EF6.dll (182.5 KB)"
"Audit$: System.Data.SQLite.dll (355 KB)"
"Audit$: x64/SQLite.Interop.dll (1.56 MB)"
"Audit$: x86/SQLite.Interop.dll (1.19 MB)"
```

# BloodHound json data
## samaccountname
### jq keys
```sh
$ cd ~/xyz/note/Sample/SharpHound\ Collector/HTB-Forest/
$ cat HTB-Forest_20230817070527_users.json | jq keys
[
  "data",
  "meta"
]
```

### jq '.data | keys'
```json
$ cat HTB-Forest_20230817070527_users.json | jq '.data | keys'
[
  0,
  1,
  2,
  3,
  [snip]
```

### jq '.data[0] | keys'
```json
$ cat HTB-Forest_20230817070527_users.json | jq '.data[0] | keys'
[
  "Aces",
  "AllowedToDelegate",
  "HasSIDHistory",
  "IsACLProtected",
  "IsDeleted",
  "ObjectIdentifier",
  "PrimaryGroupSID",
  "Properties",
  "SPNTargets"
]
```

### jq '.data[0].Properties'
```json
$ cat HTB-Forest_20230817070527_users.json | jq '.data[0].Properties'
{
  "domain": "HTB.LOCAL",
  "name": "ADMINISTRATOR@HTB.LOCAL",
  "distinguishedname": "CN=ADMINISTRATOR,CN=USERS,DC=HTB,DC=LOCAL",
  "domainsid": "S-1-5-21-3072663084-364016917-1341370565",
  "highvalue": false,
  "samaccountname": "Administrator",
  "description": "Built-in account for administering the computer/domain",
  "whencreated": 1568803557,
  [snip]
}
```

### jq '.data[0].Properties.samaccountname'
```json
$ cat HTB-Forest_20230817070527_users.json | jq '.data[0].Properties.samaccountname'
"Administrator"
```

### jq .data[].Properties.samaccountname
```json
$ cat HTB-Forest_20230817070527_users.json | jq .data[].Properties.samaccountname
"Administrator"
"DefaultAccount"
"krbtgt"
[snip]
```

## serviceprincipalnames
### TL;DR
```sh
cat HTB-Forest_20230817070527_users.json | jq keys
cat HTB-Forest_20230817070527_users.json | jq .data
cat HTB-Forest_20230817070527_users.json | jq .data | nl
cat HTB-Forest_20230817070527_users.json | jq .data | head
cat HTB-Forest_20230817070527_users.json | jq .data[0] |nl
cat HTB-Forest_20230817070527_users.json | jq .data[0] | head
cat HTB-Forest_20230817070527_users.json | jq .data[0].Properties
cat HTB-Forest_20230817070527_users.json | jq .data[0].Properties.serviceprincipalnames
cat HTB-Forest_20230817070527_users.json | jq .data[].Properties.serviceprincipalnames
cat HTB-Forest_20230817070527_users.json | jq '.data[].Properties.serviceprincipalnames'
cat HTB-Forest_20230817070527_users.json | jq '.data[].Properties.serviceprincipalnames | select(length > 0)'
```

### 
```json
# Same Output
# cat HTB-Forest_20230817070527_users.json | jq .data[].Properties.serviceprincipalnames
# cat HTB-Forest_20230817070527_users.json | jq '.data[].Properties.serviceprincipalnames | select(. != null)'

# E.g.
$ cat HTB-Forest_20230817070527_users.json | jq .data[].Properties.serviceprincipalnames
[]
[]
[
  "kadmin/changepw"
]
[]
[]
null
```

### Remove empty array ([]) as a result
```json
$ cat HTB-Forest_20230817070527_users.json | jq '.data[].Properties.serviceprincipalnames | select(length > 0)'
[
  "kadmin/changepw"
]
```

### -c / Compact Version
```json
$ cat HTB-Forest_20230817070527_users.json | jq -c '.data[].Properties.serviceprincipalnames | select(length > 0)'
["kadmin/changepw"]
```


### remove the square brackets [] from the output
```sh
$ cat HTB-Forest_20230817070527_users.json | jq -r '.data[].Properties.serviceprincipalnames | select(length > 0) | join(", ")'
kadmin/changepw
```

