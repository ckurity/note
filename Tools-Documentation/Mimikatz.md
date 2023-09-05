$ pypykatz -h   
usage: pypykatz [-h] [-v] {live,lsa,registry,crypto,kerberos,dpapi,ldap,rdp,parser,smb,version,banner,logo} ...

Pure Python implementation of Mimikatz --and more--

positional arguments:
  {live,lsa,registry,crypto,kerberos,dpapi,ldap,rdp,parser,smb,version,banner,logo}
                        commands
    live                Get secrets from live machine
    lsa                 Get secrets from memory dump
    registry            Get secrets from registry files
    crypto              Utils for generating hashes/decrypting secrets etc
    kerberos            Kerberos related commands
    dpapi               DPAPI (offline) related commands
    ldap                LDAP related commands
    rdp                 Parse RDP credentials from minidump file
    parser              SMB related commands
    smb                 SMB related commands
    version             version
    banner              banner
    logo                logo

options:
  -h, --help            show this help message and exit
  -v, --verbose