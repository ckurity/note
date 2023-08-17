# secretsdump / secretsdump.py / impacket-secretsdump

### TL;DR
```

```

### 
```
$ impacket-secretsdump 
Impacket v0.11.0 - Copyright 2023 Fortra

usage: secretsdump.py [-h] [-ts] [-debug] [-system SYSTEM] [-bootkey BOOTKEY] [-security SECURITY] [-sam SAM] [-ntds NTDS]
                      [-resumefile RESUMEFILE] [-outputfile OUTPUTFILE] [-use-vss] [-rodcNo RODCNO] [-rodcKey RODCKEY] [-use-keylist]
                      [-exec-method [{smbexec,wmiexec,mmcexec}]] [-just-dc-user USERNAME] [-ldapfilter LDAPFILTER] [-just-dc] [-just-dc-ntlm]
                      [-pwd-last-set] [-user-status] [-history] [-hashes LMHASH:NTHASH] [-no-pass] [-k] [-aesKey hex key] [-keytab KEYTAB]
                      [-dc-ip ip address] [-target-ip ip address]
                      target

Performs various techniques to dump secrets from the remote machine without executing any agent there.

positional arguments:
  target                [[domain/]username[:password]@]<targetName or address> or LOCAL (if you want to parse local files)

options:
  -h, --help            show this help message and exit
  -ts                   Adds timestamp to every logging output
  -debug                Turn DEBUG output ON
  -system SYSTEM        SYSTEM hive to parse
  -bootkey BOOTKEY      bootkey for SYSTEM hive
  -security SECURITY    SECURITY hive to parse
  -sam SAM              SAM hive to parse
  -ntds NTDS            NTDS.DIT file to parse
  -resumefile RESUMEFILE
                        resume file name to resume NTDS.DIT session dump (only available to DRSUAPI approach). This file will also be used to keep
                        updating the session's state
  -outputfile OUTPUTFILE
                        base output filename. Extensions will be added for sam, secrets, cached and ntds
  -use-vss              Use the VSS method instead of default DRSUAPI
  -rodcNo RODCNO        Number of the RODC krbtgt account (only avaiable for Kerb-Key-List approach)
  -rodcKey RODCKEY      AES key of the Read Only Domain Controller (only avaiable for Kerb-Key-List approach)
  -use-keylist          Use the Kerb-Key-List method instead of default DRSUAPI
  -exec-method [{smbexec,wmiexec,mmcexec}]
                        Remote exec method to use at target (only when using -use-vss). Default: smbexec

display options:
  -just-dc-user USERNAME
                        Extract only NTDS.DIT data for the user specified. Only available for DRSUAPI approach. Implies also -just-dc switch
  -ldapfilter LDAPFILTER
                        Extract only NTDS.DIT data for specific users based on an LDAP filter. Only available for DRSUAPI approach. Implies also
                        -just-dc switch
  -just-dc              Extract only NTDS.DIT data (NTLM hashes and Kerberos keys)
  -just-dc-ntlm         Extract only NTDS.DIT data (NTLM hashes only)
  -pwd-last-set         Shows pwdLastSet attribute for each NTDS.DIT account. Doesn't apply to -outputfile data
  -user-status          Display whether or not the user is disabled
  -history              Dump password history, and LSA secrets OldVal

authentication:
  -hashes LMHASH:NTHASH
                        NTLM hashes, format is LMHASH:NTHASH
  -no-pass              don't ask for password (useful for -k)
  -k                    Use Kerberos authentication. Grabs credentials from ccache file (KRB5CCNAME) based on target parameters. If valid
                        credentials cannot be found, it will use the ones specified in the command line
  -aesKey hex key       AES key to use for Kerberos Authentication (128 or 256 bits)
  -keytab KEYTAB        Read keys for SPN from keytab file

connection:
  -dc-ip ip address     IP Address of the domain controller. If ommited it use the domain part (FQDN) specified in the target parameter
  -target-ip ip address
                        IP Address of the target machine. If omitted it will use whatever was specified as target. This is useful when target is
                        the NetBIOS name and you cannot resolve it
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

```