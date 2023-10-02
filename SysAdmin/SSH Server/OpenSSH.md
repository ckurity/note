OpenSSH

- [Configuration File](#configuration-file)
    - [sshd_config](#sshd_config)
- [Logging](#logging)
    - [/var/log/](#varlog)

-------------------------------------------

# Configuration File
Usually `/etc/sshd/sshd_config`

## sshd_config
```sh
ypuffy$ find / -name sshd_config 2>/dev/null 
/etc/ssh/sshd_config
ypuffy$ 
```

# Logging
## /var/log/
`/var/log/` - syslog is configured to log SSH-related messages by default on most systems
`/var/log/auth.log` - default log file on Debian-derived systems
`/var/log/secure` - Red Hat derived systems



### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```

# References

**sshd – SSH server process**
https://www.ssh.com/academy/ssh/sshd