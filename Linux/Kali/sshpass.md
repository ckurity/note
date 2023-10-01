# sshpass

- [StrictHostKeyChecking=no](#stricthostkeycheckingno)

### 
```

```

### 
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

### SSH username is not case sensitive
```sh
sshpass -p '1ts-mag1c!!!' ssh tom@$ip
```

### StrictHostKeyChecking=no
First Time
```sh
-o StrictHostKeyChecking=no

sshpass -p 'P@$$W0rd' ssh Administrator@$ip ssh -o StrictHostKeyChecking=no
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