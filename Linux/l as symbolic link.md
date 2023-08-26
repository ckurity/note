# Symbolic Link / symlink / soft link

> A symbolic link, often referred to as a symlink or soft link, is a file that acts as a shortcut or reference to another file or directory. It allows you to create a link to a file or directory at a different location in the file system. 

### Create a symbolic link
```
ln -s <target> <link_name/shortcut-file>
```

### 
```
<target> is the path to the file or directory you want to link to.
<link_name/shortcut-file> is the name of the symbolic link you want to create.
```

### 
```

```

### Examples in `/usr/bin` directory
```
cd /usr/bin
ls -lh Get*

sudo ln -s ../share/impacket/script impacket-GetUserSPNs

sudo ln -s ../share/impacket/script GetUserSPNs
sudo ln -s ../share/impacket/script GetNPUsers
sudo ln -s ../share/impacket/script Get-GPPPassword
```

This command will create a symbolic link named "impacket-GetUserSPNs" that points to the "../share/impacket/script" directory relative to the location where you run the command.

The -s flag specifies that you're creating a symbolic link.

### Before
```
$ pwd
/usr/bin

$ ls -lh Get*                                               
ls: cannot access 'Get*': No such file or directory
```

### After
```
$ ls -lh Get*
lrwxrwxrwx 1 root root 24 Aug 17 20:33 GetNPUsers -> ../share/impacket/script
lrwxrwxrwx 1 root root 24 Aug 17 20:31 GetUserSPNs -> ../share/impacket/script
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

### TL;DR
```

```