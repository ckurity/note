http://www.pseale.com/pretend-youre-on-the-domain-with-runas-netonly

```sh
runas /netonly /user:REALDOMAIN\YOURDOMAINUSERNAME cmd
runas /netonly /user:htb.local\svc-alfresco:s3rvice cmd
```

## KO
```sh
PS C:\Users\fcastle> runas /u:MARVEL\pparker cmd
Enter the password for MARVEL\pparker: Wr0n9P@$$w0rd
Attempting to start cmd as user "MARVEL\pparker" ...
RUNAS ERROR: Unable to run - cmd
1326: The user name or password is incorrect.
```

Password MUST be hidden
```sh
C:\Users\user\Downloads\PingCastle_3.1.0.1>runas /netonly /user:htb.local\svc-alfresco:s3rvice cmd
Enter the password for htb.local\svc-alfresco:s3rvice:
RUNAS ERROR: Unable to acquire user password
```

## OK
```sh
C:\Users\user\Downloads\PingCastle_3.1.0.1>runas /netonly /user:htb.local\svc-alfresco cmd
Enter the password for htb.local\svc-alfresco: s3rvice
Attempting to start cmd as user "htb.local\svc-alfresco" ...
```

```sh
PS C:\Users\fcastle> whoami
marvel\fcastle

PS C:\Users\fcastle> runas /u:MARVEL\pparker cmd
Enter the password for MARVEL\pparker:
Attempting to start cmd as user "MARVEL\pparker" ...
PS C:\Users\fcastle>

# NEW WINDOW OPEN
C:\Windows\system32>whoami
marvel\pparker
```