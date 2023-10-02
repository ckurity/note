# smbcacls

### [smbcacls](#smbcacls-2)
### [smbcacls --help](#smbcacls---help-1)

### smbcacls
```
$ smbcacls
Usage: smbcacls [-?txNPkV] [-?|--help] [--usage] [-D|--delete=ACL] [-M|--modify=ACL] [-a|--add=ACL]
        [-S|--set=ACLS] [-C|--chown=USERNAME] [-G|--chgrp=GROUPNAME] [-I|--inherit=STRING]
        [--propagate-inheritance] [--numeric] [--sddl] [--query-security-info=INT]
        [--set-security-info=INT] [-t|--test-args] [--domain-sid=SID] [-x|--maximum-access]
        [-d|--debuglevel=DEBUGLEVEL] [--debug-stdout] [-s|--configfile=CONFIGFILE] [--option=name=value]
        [-l|--log-basename=LOGFILEBASE] [--leak-report] [--leak-report-full]
        [-R|--name-resolve=NAME-RESOLVE-ORDER] [-O|--socket-options=SOCKETOPTIONS]
        [-m|--max-protocol=MAXPROTOCOL] [-n|--netbiosname=NETBIOSNAME] [--netbios-scope=SCOPE]
        [-W|--workgroup=WORKGROUP] [--realm=REALM] [-U|--user=[DOMAIN/]USERNAME[%PASSWORD]] [-N|--no-pass]
        [--password=STRING] [--pw-nt-hash] [-A|--authentication-file=FILE] [-P|--machine-pass]
        [--simple-bind-dn=DN] [--use-kerberos=desired|required|off] [--use-krb5-ccache=CCACHE]
        [--use-winbind-ccache] [--client-protection=sign|encrypt|off] [-k|--kerberos] [-V|--version]
        //server1/share1 filename
ACLs look like: 'ACL:user:[ALLOWED|DENIED]/flags/permissions'
```

### smbcacls --help
```
$ smbcacls --help
Usage: smbcacls //server1/share1 filename
ACLs look like: 'ACL:user:[ALLOWED|DENIED]/flags/permissions'
  -D, --delete=ACL                             Delete an acl
  -M, --modify=ACL                             Modify an acl
  -a, --add=ACL                                Add an acl
  -S, --set=ACLS                               Set acls
  -C, --chown=USERNAME                         Change ownership of a file
  -G, --chgrp=GROUPNAME                        Change group ownership of a file
  -I, --inherit=STRING                         Inherit allow|remove|copy
      --propagate-inheritance                  Supports propagation of inheritable ACE(s) when used in
                                               conjunction with add, delete, set or modify
      --numeric                                Don't resolve sids or masks to names
      --sddl                                   Output and input acls in sddl format
      --query-security-info=INT                The security-info flags for queries
      --set-security-info=INT                  The security-info flags for modifications
  -t, --test-args                              Test arguments
      --domain-sid=SID                         Domain SID for sddl
  -x, --maximum-access                         Query maximum permissions

Help options:
  -?, --help                                   Show this help message
      --usage                                  Display brief usage message

Common Samba options:
  -d, --debuglevel=DEBUGLEVEL                  Set debug level
      --debug-stdout                           Send debug output to standard output
  -s, --configfile=CONFIGFILE                  Use alternative configuration file
      --option=name=value                      Set smb.conf option from command line
  -l, --log-basename=LOGFILEBASE               Basename for log/debug files
      --leak-report                            enable talloc leak reporting on exit
      --leak-report-full                       enable full talloc leak reporting on exit

Connection options:
  -R, --name-resolve=NAME-RESOLVE-ORDER        Use these name resolution services only
  -O, --socket-options=SOCKETOPTIONS           socket options to use
  -m, --max-protocol=MAXPROTOCOL               Set max protocol level
  -n, --netbiosname=NETBIOSNAME                Primary netbios name
      --netbios-scope=SCOPE                    Use this Netbios scope
  -W, --workgroup=WORKGROUP                    Set the workgroup name
      --realm=REALM                            Set the realm name

Credential options:
  -U, --user=[DOMAIN/]USERNAME[%PASSWORD]      Set the network username
  -N, --no-pass                                Don't ask for a password
      --password=STRING                        Password
      --pw-nt-hash                             The supplied password is the NT hash
  -A, --authentication-file=FILE               Get the credentials from a file
  -P, --machine-pass                           Use stored machine account password
      --simple-bind-dn=DN                      DN to use for a simple bind
      --use-kerberos=desired|required|off      Use Kerberos authentication
      --use-krb5-ccache=CCACHE                 Credentials cache location for Kerberos
      --use-winbind-ccache                     Use the winbind ccache for authentication
      --client-protection=sign|encrypt|off     Configure used protection for client connections

Deprecated legacy options:
  -k, --kerberos                               DEPRECATED: Migrate to --use-kerberos

Version options:
  -V, --version                                Print version
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