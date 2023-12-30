- [SMB Modules](#smb-modules)
- [enum_av](#enum_av)
- [References](#references)

-------------------------------------------

## 
```sh

```

## [SMB Modules](#smb-modules)
```sh
$ cme ldap -h | grep '\s-L'
  -L, --list-modules    list available modules

$ cme smb -L
[*] add-computer              Adds or deletes a domain computer
[*] bh_owned                  Set pwned computer as owned in Bloodhound
[*] dfscoerce                 Module to check if the DC is vulnerable to DFSCocerc, credit to @filip_dragovic/@Wh04m1001 and @topotam
[*] drop-sc                   Drop a searchConnector-ms file on each writable share
[*] empire_exec               Uses Empire's RESTful API to generate a launcher for the specified listener and executes it
[*] enum_av                   Gathers information on all endpoint protection solutions installed on the the remote host(s) via LsarLookupNames (no privilege needed)
[*] enum_dns                  Uses WMI to dump DNS from an AD DNS Server
[*] firefox                   Dump credentials from Firefox
[*] get_netconnections        Uses WMI to query network connections.
[*] gpp_autologin             Searches the domain controller for registry.xml to find autologon information and returns the username and password.
[*] gpp_password              Retrieves the plaintext password and other information for accounts pushed through Group Policy Preferences.
[*] handlekatz                Get lsass dump using handlekatz64 and parse the result with pypykatz
[*] hash_spider               Dump lsass recursively from a given hash using BH to find local admins
[*] iis                       Checks for credentials in IIS Application Pool configuration files using appcmd.exe
[*] impersonate               List and impersonate tokens to run command as locally logged on users
[*] install_elevated          Checks for AlwaysInstallElevated
[*] ioxidresolver             This module helps you to identify hosts that have additional active interfaces
[*] keepass_discover          Search for KeePass-related files and process.
[*] keepass_trigger           Set up a malicious KeePass trigger to export the database in cleartext.
[*] lsassy                    Dump lsass and parse the result remotely with lsassy
[*] masky                     Remotely dump domain user credentials via an ADCS and a KDC
[*] met_inject                Downloads the Meterpreter stager and injects it into memory
[*] ms17-010                  MS17-010, /!\ not tested oustide home lab
[*] msol                      Dump MSOL cleartext password from the localDB on the Azure AD-Connect Server
[*] nanodump                  Get lsass dump using nanodump and parse the result with pypykatz
[*] nopac                     Check if the DC is vulnerable to CVE-2021-42278 and CVE-2021-42287 to impersonate DA from standard domain user
[*] ntdsutil                  Dump NTDS with ntdsutil
[*] ntlmv1                    Detect if lmcompatibilitylevel on the target is set to 0 or 1
[*] petitpotam                Module to check if the DC is vulnerable to PetitPotam, credit to @topotam
[*] pi                        Run command as logged on users via Process Injection
[*] printnightmare            Check if host vulnerable to printnightmare
[*] procdump                  Get lsass dump using procdump64 and parse the result with pypykatz
[*] rdcman                    Remotely dump Remote Desktop Connection Manager (sysinternals) credentials
[*] rdp                       Enables/Disables RDP
[*] reg-query                 Performs a registry query on the machine
[*] runasppl                  Check if the registry value RunAsPPL is set or not
[*] scuffy                    Creates and dumps an arbitrary .scf file with the icon property containing a UNC path to the declared SMB server against all writeable shares
[*] shadowcoerce              Module to check if the target is vulnerable to ShadowCoerce, credit to @Shutdown and @topotam
[*] slinky                    Creates windows shortcuts with the icon attribute containing a UNC path to the specified SMB server in all shares with write permissions
[*] spider_plus               List files recursively (excluding `EXCLUDE_FILTER` and `EXCLUDE_EXTS` extensions) and save JSON share-file metadata to the `OUTPUT_FOLDER`. If `DOWNLOAD_FLAG`=True, download files smaller then `MAX_FILE_SIZE` to the `OUTPUT_FOLDER`.
[*] spooler                   Detect if print spooler is enabled or not
[*] teams_localdb             Retrieves the cleartext ssoauthcookie from the local Microsoft Teams database, if teams is open we kill all Teams process
[*] test_connection           Pings a host
[*] uac                       Checks UAC status
[*] veeam                     Extracts credentials from local Veeam SQL Database
[*] wcc                       Check various security configuration items on Windows machines
[*] wdigest                   Creates/Deletes the 'UseLogonCredential' registry key enabling WDigest cred dumping on Windows >= 8.1
[*] web_delivery              Kicks off a Metasploit Payload using the exploit/multi/script/web_delivery module
[*] webdav                    Checks whether the WebClient service is running on the target
[*] wifi                      Get key of all wireless interfaces
[*] winscp                    Looks for WinSCP.ini files in the registry and default locations and tries to extract credentials.
[*] zerologon                 Module to check if the DC is vulnerable to Zerologon aka CVE-2020-1472
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

## [enum_av](#enum_av)
```sh
$ cme smb $t -M enum_av
SMB         10.10.192.27    445    LUNDC            [*] Windows 10.0 Build 17763 x64 (name:LUNDC) (domain:lunar.eruca.com) (signing:True) (SMBv1:False)
ENUM_AV     10.10.192.27    445    LUNDC            [-] LSAD SessionError: code: 0xc0000022 - STATUS_ACCESS_DENIED - {Access Denied} A process has requested access to an object but has not been granted those access rights.

$ cme smb $t -u thm -p Password1@ -M enum_av
SMB         10.10.192.27    445    LUNDC            [*] Windows 10.0 Build 17763 x64 (name:LUNDC) (domain:lunar.eruca.com) (signing:True) (SMBv1:False)
SMB         10.10.192.27    445    LUNDC            [+] lunar.eruca.com\thm:Password1@                                                                                 
ENUM_AV     10.10.192.27    445    LUNDC            Windows Defender INSTALLED
```

## 
```sh

```

## 
```sh

```

# [References](#references-1)

https://cheatsheet.haax.fr/windows-systems/exploitation/crackmapexec/