# sshpass

- [Example](#example)
- [Usage](#usage)
- [StrictHostKeyChecking=no](#stricthostkeycheckingno)
- [SSH Username is Not Case Sensitive](#ssh-username-is-not-case-sensitive)
- [StrictHostKeyChecking=no](#stricthostkeycheckingno)

### 
```

```

# [Example](#example-1)
sshpass -p Password1@ ssh thm@$t -o StrictHostKeyChecking=no
```sh
$ sshpass -p Password1@ ssh thm@$t
$ sshpass -p Password1@ ssh thm@$t -o StrictHostKeyChecking=no
Warning: Permanently added '10.10.132.133' (ED25519) to the list of known hosts.
Microsoft Windows [Version 10.0.17763.1098] 
(c) 2018 Microsoft Corporation. All rights reserved. 

lunar\thm@LUNDC C:\Users\thm>
```

### [Usage](#usage-1)
```sh
$ sshpass
Usage: sshpass [-f|-d|-p|-e] [-hV] command parameters
   -f filename   Take password to use from file
   -d number     Use number as file descriptor for getting password
   -p password   Provide password as argument (security unwise)
   -e            Password is passed as env-var "SSHPASS"
   With no parameters - password will be taken from stdin

   -P prompt     Which string should sshpass search for to detect a password prompt
   -v            Be verbose about what you're doing
   -h            Show help (this screen)
   -V            Print version information
At most one of -f, -d, -p or -e should be used
```

### [SSH Username is Not Case Sensitive](#ssh-username-is-not-case-sensitive-1)
```sh
sshpass -p '1ts-mag1c!!!' ssh tom@$t
```

### [StrictHostKeyChecking=no](#stricthostkeycheckingno-1)
First Time
```sh
-o StrictHostKeyChecking=no

sshpass -p 'P@$$W0rd' ssh Administrator@$t -o StrictHostKeyChecking=no
sshpass -p msfadmin ssh msfadmin@$t -o StrictHostKeyChecking=no
```


### 
```

```

### 
```

```