# [LDAPDomainDump](https://github.com/dirkjanm/ldapdomaindump)
Active Directory information dumper via LDAP

- [LDAPDomainDump](#ldapdomaindump)
  - [Installation](#installation)
  - [-h / help](#ldapdomaindump--h)
  - [Basic Syntax](#sudo-ldapdomaindump-ldapsip--u-username--p-passw0rd)
    - [Example 1](#ldapdomaindump-ldapsip--u-htbamanda--p-ashare1972)
    - [Example 2](#ldapdomaindump--u-searchhtbhopesharp--p-isolationiskey-ip)
    - [Sample Output](#sample-output)
  - [Common Mistake; "DOMAIN\\username"](#common-mistake-domainusername)

### Installation
```
pip install ldapdomaindump
```




-------------------------------------

### 
```
$ ldapdomaindump
usage: ldapdomaindump [-h] [-u USERNAME] [-p PASSWORD] [-at {NTLM,SIMPLE}] [-o DIRECTORY] [--no-html] [--no-json] [--no-grep]
                      [--grouped-json] [-d DELIMITER] [-r] [-n DNS_SERVER] [-m]
                      HOSTNAME
ldapdomaindump: error: the following arguments are required: HOSTNAME
```

### ldapdomaindump -h
```
$ ldapdomaindump -h
usage: ldapdomaindump [-h] [-u USERNAME] [-p PASSWORD] [-at {NTLM,SIMPLE}] [-o DIRECTORY] [--no-html] [--no-json] [--no-grep]
                      [--grouped-json] [-d DELIMITER] [-r] [-n DNS_SERVER] [-m]
                      HOSTNAME

Domain information dumper via LDAP. Dumps users/computers/groups and OS/membership information to HTML/JSON/greppable output.

Required options:
  HOSTNAME              Hostname/ip or ldap://host:port connection string to connect to (use ldaps:// to use SSL)

Main options:
  -h, --help            show this help message and exit
  -u USERNAME, --user USERNAME
                        DOMAIN\username for authentication, leave empty for anonymous authentication
  -p PASSWORD, --password PASSWORD
                        Password or LM:NTLM hash, will prompt if not specified
  -at {NTLM,SIMPLE}, --authtype {NTLM,SIMPLE}
                        Authentication type (NTLM or SIMPLE, default: NTLM)

Output options:
  -o DIRECTORY, --outdir DIRECTORY
                        Directory in which the dump will be saved (default: current)
  --no-html             Disable HTML output
  --no-json             Disable JSON output
  --no-grep             Disable Greppable output
  --grouped-json        Also write json files for grouped files (default: disabled)
  -d DELIMITER, --delimiter DELIMITER
                        Field delimiter for greppable output (default: tab)

Misc options:
  -r, --resolve         Resolve computer hostnames (might take a while and cause high traffic on large networks)
  -n DNS_SERVER, --dns-server DNS_SERVER
                        Use custom DNS resolver instead of system DNS (try a domain controller IP)
  -m, --minimal         Only query minimal set of attributes to limit memmory usage
```

### sudo ldapdomaindump ldaps://$ip -u username -p Passw0rd
But first, create a new directory to save all the output
```

```

### ldapdomaindump ldaps://$ip -u HTB\\amanda -p Ashare1972
```
$ ldapdomaindump ldaps://$ip -u HTB\\amanda -p Ashare1972
[*] Connecting to host...
[*] Binding to host
[+] Bind OK
[*] Starting domain dump
[+] Domain dump finished
```

### ldapdomaindump -u 'search.htb\hope.sharp' -p IsolationIsKey? $ip
```
$ $ ldapdomaindump -u 'search.htb\hope.sharp' -p IsolationIsKey? $ip
[*] Connecting to host...
[*] Binding to host
[+] Bind OK
[*] Starting domain dump
[+] Domain dump finishedldapdomaindump -u 'search.htb\hope.sharp' -p IsolationIsKey? $ip
[*] Connecting to host...
[*] Binding to host
[+] Bind OK
[*] Starting domain dump
[+] Domain dump finished
```

### Sample Output
```
$ ls
domain_computers_by_os.html  domain_computers.json  domain_groups.json  domain_policy.json  domain_trusts.json          domain_users.html
domain_computers.grep        domain_groups.grep     domain_policy.grep  domain_trusts.grep  domain_users_by_group.html  domain_users.json
domain_computers.html        domain_groups.html     domain_policy.html  domain_trusts.html  domain_users.grep
```

### Common Mistake; "DOMAIN\\username"
Without domain
Single /; should be double //; or within quote
```
$ ldapdomaindump ldaps://$ip -u amanda -p Ashare1972  
[!] Username must include a domain, use: DOMAIN\username

$ ldapdomaindump ldaps://$ip -u HTB\amanda -p Ashare1972
[!] Username must include a domain, use: DOMAIN\username
```

### 
```

```

### 
```

```