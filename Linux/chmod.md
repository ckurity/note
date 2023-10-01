- [Numeric Permissions (Octal)](#numeric-permissions-octal)
- [Octal Permissions](#octal-permissions)
- [Symbolic Permissions](#symbolic-permissions)

### Numeric Permissions (Octal)
```sh
sudo chmod 770 /opt
```

### Octal Permissions
```sh
sudo chmod u=rwx,g=rwx,o= /opt
```
u=rwx sets read (r), write (w), and execute (x) permissions for the owner (user).
g=rwx sets read (r), write (w), and execute (x) permissions for the group.
o= sets no permissions for others (all other users).

### Symbolic Permissions
```sh
sudo chmod ug=rwx,o= /opt
```
ug=rwx sets read (r), write (w), and execute (x) permissions for the user and group.
o= sets no permissions for others (all other users).

### 
```sh
sudo chmod -R ug=rwx /opt
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