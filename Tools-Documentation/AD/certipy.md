- [Installation](#installation)
- [certipy](#certipy)
- [certipy find -h](#certipy-find--h)
- [References](#references)

-------------------------------------------

## [Installation](#installation-1)
```sh
pip3 install certipy-ad
```

## [certipy](#certipy-1)
```sh
$ certipy
Certipy v4.8.2 - by Oliver Lyak (ly4k)

usage: certipy [-v] [-h] {account,auth,ca,cert,find,forge,ptt,relay,req,shadow,template} ...

Active Directory Certificate Services enumeration and abuse

positional arguments:
  {account,auth,ca,cert,find,forge,ptt,relay,req,shadow,template}
                        Action
    account             Manage user and machine accounts
    auth                Authenticate using certificates
    ca                  Manage CA and certificates
    cert                Manage certificates and private keys
    find                Enumerate AD CS
    forge               Create Golden Certificates
    ptt                 Inject TGT for SSPI authentication
    relay               NTLM Relay to AD CS HTTP Endpoints
    req                 Request certificates
    shadow              Abuse Shadow Credentials for account takeover
    template            Manage certificate templates

options:
  -v, --version         Show Certipy's version number and exit
  -h, --help            Show this help message and exit

$ 
```

## [certipy find -h](#certipy-find--h-1)
```sh
$ certipy find -h
Certipy v4.8.2 - by Oliver Lyak (ly4k)

usage: certipy find [-h] [-debug] [-bloodhound] [-old-bloodhound] [-text] [-stdout] [-json] [-output prefix] [-enabled] [-dc-only]
                    [-vulnerable] [-hide-admins] [-scheme ldap scheme] [-dc-ip ip address] [-target-ip ip address]
                    [-target dns/ip address] [-ns nameserver] [-dns-tcp] [-timeout seconds] [-u username@domain] [-p password]
                    [-hashes [LMHASH:]NTHASH] [-k] [-sspi] [-aes hex key] [-no-pass] [-ldap-channel-binding]

options:
  -h, --help            show this help message and exit
  -debug                Turn debug output on

output options:
  -bloodhound           Output result as BloodHound data for the custom-built BloodHound version from @ly4k with PKI support
  -old-bloodhound       Output result as BloodHound data for the original BloodHound version from @BloodHoundAD without PKI
                        support
  -text                 Output result as text
  -stdout               Output result as text to stdout
  -json                 Output result as JSON
  -output prefix        Filename prefix for writing results to

find options:
  -enabled              Show only enabled certificate templates. Does not affect BloodHound output
  -dc-only              Collects data only from the domain controller. Will not try to retrieve CA security/configuration or check
                        for Web Enrollment
  -vulnerable           Show only vulnerable certificate templates based on nested group memberships. Does not affect BloodHound
                        output
  -hide-admins          Don't show administrator permissions for -text, -stdout, and -json. Does not affect BloodHound output

connection options:
  -scheme ldap scheme
  -dc-ip ip address     IP Address of the domain controller. If omitted it will use the domain part (FQDN) specified in the target
                        parameter
  -target-ip ip address
                        IP Address of the target machine. If omitted it will use whatever was specified as target. This is useful
                        when target is the NetBIOS name and you cannot resolve it
  -target dns/ip address
                        DNS Name or IP Address of the target machine. Required for Kerberos or SSPI authentication
  -ns nameserver        Nameserver for DNS resolution
  -dns-tcp              Use TCP instead of UDP for DNS queries
  -timeout seconds      Timeout for connections

authentication options:
  -u username@domain, -username username@domain
                        Username. Format: username@domain
  -p password, -password password
                        Password
  -hashes [LMHASH:]NTHASH
                        NTLM hash, format is [LMHASH:]NTHASH
  -k                    Use Kerberos authentication. Grabs credentials from ccache file (KRB5CCNAME) based on target parameters.
                        If valid credentials cannot be found, it will use the ones specified in the command line
  -sspi                 Use Windows Integrated Authentication (SSPI)
  -aes hex key          AES key to use for Kerberos Authentication (128 or 256 bits)
  -no-pass              Don't ask for password (useful for -k and -sspi)

ldap options:
  -ldap-channel-binding
                        Use LDAP channel binding for LDAP communication (LDAPS only)
$ 
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

https://github.com/ly4k/Certipy#installation