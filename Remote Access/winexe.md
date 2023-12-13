- 
- [References](#references)

-------------------------------------------

## 
```sh

```

## 
```sh
$ whatis winexe
winexe (1)           - execute a remote Windows command
```

## 
```sh
$ winexe
winexe version 1.1
This program may be freely redistributed under the terms of the GNU GPLv3
Usage: winexe [OPTION]... //HOST COMMAND
Options:
  -h, --help                                  Display help message
  -V, --version                               Display version number
  -U, --user=[DOMAIN/]USERNAME[%PASSWORD]     Set the network username
  -A, --authentication-file=FILE              Get the credentials from a file
  -N, --no-pass                               Do not ask for a password
  -k, --kerberos=STRING                       Use Kerberos, -k [yes|no]
  -d, --debuglevel=DEBUGLEVEL                 Set debug level
      --uninstall                             Uninstall winexe service after remote execution
      --reinstall                             Reinstall winexe service before remote execution
      --system                                Use SYSTEM account
      --profile                               Load user profile
      --convert                               Try to convert characters between local and remote code-pages
      --runas=[DOMAIN\]USERNAME%PASSWORD      Run as the given user (BEWARE: this password is sent in cleartext over the network!)
      --runas-file=FILE                       Run as user options defined in a file
      --interactive=0|1                       Desktop interaction: 0 - disallow, 1 - allow. If allow, also use the --system switch (Windows requirement).
                                              Vista does not support this option.
      --ostype=0|1|2                          OS type: 0 - 32-bit, 1 - 64-bit, 2 - winexe will decide. Determines which version (32-bit or 64-bit) of
                                              service will be installed.
```

## 
```sh
$ winexe -U 'admin%password' //$t cmd
cli_credentials_failed_kerberos_login: krb5_cc_get_principal failed: No such file or directory
ERROR: Failed to open connection - NT_STATUS_LOGON_FAILURE

$ winexe -U 'admin%password123' //$t cmd
Microsoft Windows [Version 10.0.17763.737]
(c) 2018 Microsoft Corporation. All rights reserved.

C:\Windows\system32>whoami
whoami
win-qba94kb3iof\admin
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

