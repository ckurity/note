# jq

- [jq](#jq)
    - [Show all Keys](#show-all-keys)
    - [Show all Shares](#cat-101011129json--jq-map_valueskeys-nl)

-------------------------------------------

### 
```
cat 10.10.11.129.json | jq '.|keys'     # Show all Keys / Open Shares in HTB Search
cat 10.10.11.129.json | jq '.[]|keys'   # up one, but we don't get the share name
cat 10.10.11.129.json | jq '.|map_values(keys)'
```

### Show all Keys
Open Shares in HTB Search
```
$ cat 10.10.11.129.json | jq '.|keys'
[
  "CertEnroll",
  "NETLOGON",
  "RedirectedFolders$",
  "SYSVOL",
  "helpdesk"
]
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

```

### 
```

```

### 
```

```