- [LDAP Modules](#ldap-modules)
    - [adcs](#adcs)
    - [daclread](#daclread)
    - [find-computer](#find-computer)
    - [get-desc-users](#get-desc-users)
    - [get-network](#get-network)
    - [group-mem](#group-mem)
    - [groupmembership](#groupmembership)
    - [laps](#laps)
    - [ldap-checker](#ldap-checker)
    - [maq](#maq)
    - [pso](#pso)
    - [subnets](#subnets)
    - [user-desc](#user-desc)
    - [whoami](#whoami)
- [References](#references)

-------------------------------------------

## 
```sh

```

## [LDAP Modules](#ldap-modules)
```sh
$ cme ldap -h | grep '\s-L'
  -L, --list-modules    list available modules

$ cme ldap -L
[*] adcs                      Find PKI Enrollment Services in Active Directory and Certificate Templates Names
[*] daclread                  Read and backup the Discretionary Access Control List of objects. Based on the work of @_nwodtuhs and @BlWasp_. Be carefull, this module cannot read the DACLS recursively, more explains in the  options.
[*] find-computer             Finds computers in the domain via the provided text
[*] get-desc-users            Get description of the users. May contained password
[*] get-network               
[*] group-mem                 Retrieves all the members within a Group
[*] groupmembership           Query the groups to which a user belongs.
[*] laps                      Retrieves the LAPS passwords
[*] ldap-checker              Checks whether LDAP signing and binding are required and / or enforced
[*] maq                       Retrieves the MachineAccountQuota domain-level attribute
[*] pso                       Query to get PSO from LDAP
[*] subnets                   Retrieves the different Sites and Subnets of an Active Directory
[*] user-desc                 Get user descriptions stored in Active Directory
[*] whoami                    Get details of provided user
```

## [adcs](#adcs-1)
```sh
$ cme ldap $t -d lunar.eruca.com -u thm -p Password1@ -M adcs
SMB         10.10.250.76    445    LUNDC            [*] Windows 10.0 Build 17763 x64 (name:LUNDC) (domain:lunar.eruca.com) (signing:True) (SMBv1:False)
LDAP        10.10.250.76    389    LUNDC            [+] lunar.eruca.com\thm:Password1@ (Pwn3d!)
ADCS        10.10.250.76    389    LUNDC            [*] Starting LDAP search with search filter '(objectClass=pKIEnrollmentService)'
ADCS                                                Found PKI Enrollment Server: LUNDC.lunar.eruca.com
ADCS                                                Found CN: lunar-LUNDC-CA
```

## [daclread](#daclread-1)
```sh
$ cme ldap $t -d lunar.eruca.com -u thm -p Password1@ -M daclread
DACLREAD                         [-] Select an option, example: -M daclread -o TARGET=Administrator ACTION=read
```

## [find-computer](#find-computer-1)
```sh
$ cme ldap $t -d lunar.eruca.com -u thm -p Password1@ -M find-computer
[20:48:00] ERROR    TEXT option is required!           find-computer.py:33
```

## [get-desc-users](#get-desc-users-1)
```sh
$ cme ldap $t -d lunar.eruca.com -u thm -p Password1@ -M get-desc-users
SMB         10.10.100.145   445    LUNDC            [*] Windows 10.0 Build 17763 x64 (name:LUNDC) (domain:lunar.eruca.com) (signing:True) (SMBv1:False)
LDAP        10.10.100.145   389    LUNDC            [+] lunar.eruca.com\thm:Password1@ (Pwn3d!)
GET-DESC... 10.10.100.145   389    LUNDC            [+] Found following users: 
GET-DESC... 10.10.100.145   389    LUNDC            User: Administrator description: Built-in account for administering the computer/domain
GET-DESC... 10.10.100.145   389    LUNDC            User: Guest description: Built-in account for guest access to the computer/domain
GET-DESC... 10.10.100.145   389    LUNDC            User: vagrant description: Vagrant
GET-DESC... 10.10.100.145   389    LUNDC            User: krbtgt description: Key Distribution Center Service Account
```

## [get-network](#get-network-1)
```sh
$ cme ldap $t -d lunar.eruca.com -u thm -p Password1@ -M get-network
SMB         10.10.100.145   445    LUNDC            [*] Windows 10.0 Build 17763 x64 (name:LUNDC) (domain:lunar.eruca.com) (signing:True) (SMBv1:False)
LDAP        10.10.100.145   389    LUNDC            [+] lunar.eruca.com\thm:Password1@ (Pwn3d!)
GET-NETW... 10.10.100.145   389    LUNDC            [*] Querying zone for records
GET-NETW... 10.10.100.145   389    LUNDC            Found 1 records
GET-NETW... 10.10.100.145   389    LUNDC            [+] Dumped 1 records to /home/kali/.cme/logs/lunar.eruca.com_network_2023-12-18_205324.log
GET-NETW... 10.10.100.145   389    LUNDC            [*] To extract CIDR from the 1 ip, run  the following command: cat your_file | mapcidr -aa -silent | mapcidr -a -silent

$ nl ~/.cme/logs/lunar.eruca.com_network_2023-12-18_205324.log 
     1  10.10.100.145
```

## [group-mem](#group-mem-1)
```sh
$ cme ldap $t -d lunar.eruca.com -u thm -p Password1@ -M group-mem
[20:54:37] ERROR    GROUP option is required!             group_members.py:35
```

## [groupmembership](#groupmembership-1)
```sh
$ cme ldap $t -d lunar.eruca.com -u thm -p Password1@ -M groupmembership
GROUPMEM...                 [-] Missing USER option, use --options to list available parameters
```

## [laps](#laps-1)
```sh
$ cme ldap $t -d lunar.eruca.com -u thm -p Password1@ -M laps                     
SMB         10.10.100.145   445    LUNDC            [*] Windows 10.0 Build 17763 x64 (name:LUNDC) (domain:lunar.eruca.com) (signing:True) (SMBv1:False)
LDAP        10.10.100.145   389    LUNDC            [+] lunar.eruca.com\thm:Password1@ (Pwn3d!)
LAPS        10.10.100.145   389    LUNDC            [*] Getting LAPS Passwords
LAPS        10.10.100.145   389    LUNDC            [-] No result found with attribute ms-MCS-AdmPwd or msLAPS-Password !
```

## [ldap-checker](#ldap-checker-1)
```sh
$ cme ldap $t -d lunar.eruca.com -u thm -p Password1@ -M ldap-checker
SMB         10.10.100.145   445    LUNDC            [*] Windows 10.0 Build 17763 x64 (name:LUNDC) (domain:lunar.eruca.com) (signing:True) (SMBv1:False)
LDAP        10.10.100.145   389    LUNDC            [+] lunar.eruca.com\thm:Password1@ (Pwn3d!)
LDAP-CHE... 10.10.100.145   389    LUNDC            LDAP Signing NOT Enforced!
LDAP-CHE... 10.10.100.145   389    LUNDC            LDAPS Channel Binding is set to "NEVER"
```

## [maq](#maq-1)
```sh
$ cme ldap $t -d lunar.eruca.com -u thm -p Password1@ -M maq
SMB         10.10.100.145   445    LUNDC            [*] Windows 10.0 Build 17763 x64 (name:LUNDC) (domain:lunar.eruca.com) (signing:True) (SMBv1:False)
LDAP        10.10.100.145   389    LUNDC            [+] lunar.eruca.com\thm:Password1@ (Pwn3d!)
MAQ         10.10.100.145   389    LUNDC            [*] Getting the MachineAccountQuota
MAQ         10.10.100.145   389    LUNDC            MachineAccountQuota: 10
```

## [pso](#pso-1)
```sh
$ cme ldap $t -d lunar.eruca.com -u thm -p Password1@ -M pso
SMB         10.10.100.145   445    LUNDC            [*] Windows 10.0 Build 17763 x64 (name:LUNDC) (domain:lunar.eruca.com) (signing:True) (SMBv1:False)
LDAP        10.10.100.145   389    LUNDC            [+] lunar.eruca.com\thm:Password1@ (Pwn3d!)
```

## [subnets](#subnets-1)
```sh
$ cme ldap $t -d lunar.eruca.com -u thm -p Password1@ -M subnets
SMB         10.10.100.145   445    LUNDC            [*] Windows 10.0 Build 17763 x64 (name:LUNDC) (domain:lunar.eruca.com) (signing:True) (SMBv1:False)
LDAP        10.10.100.145   389    LUNDC            [+] lunar.eruca.com\thm:Password1@ (Pwn3d!)
SUBNETS     10.10.100.145   389    LUNDC            [*] Getting the Sites and Subnets from domain
SUBNETS     10.10.100.145   389    LUNDC            Site "Default-First-Site-Name"
```

## [user-desc](#user-desc-1)
```sh
$ cme ldap $t -d lunar.eruca.com -u thm -p Password1@ -M user-desc
SMB         10.10.100.145   445    LUNDC            [*] Windows 10.0 Build 17763 x64 (name:LUNDC) (domain:lunar.eruca.com) (signing:True) (SMBv1:False)
LDAP        10.10.100.145   389    LUNDC            [+] lunar.eruca.com\thm:Password1@ (Pwn3d!)
USER-DES...                                         User: krbtgt - Description: Key Distribution Center Service Account
USER-DES...                                         Saved 4 user descriptions to /home/kali/.cme/logs/UserDesc-10.10.100.145-20231218_210750.log

$ nl /home/kali/.cme/logs/UserDesc-10.10.100.145-20231218_210750.log
     1  User:                     Description:
     2  Administrator             Built-in account for administering the computer/domain
     3  Guest                     Built-in account for guest access to the computer/domain
     4  vagrant                   Vagrant
     5  krbtgt                    Key Distribution Center Service Account
```

## [whoami](#whoami-1)
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

