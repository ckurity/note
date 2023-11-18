- [Create a Symbolic Link](#create-a-symbolic-link)
- [Remove a Symbolic Link](#remove-a-symbolic-link)

# ln (1) - make links between files
## Symbolic Link / symlink / soft link

> A symbolic link, often referred to as a symlink or soft link, is a file that acts as a shortcut or reference to another file or directory. It allows you to create a link to a file or directory at a different location in the file system. 

### [Create a Symbolic Link](#create-a-symbolic-link-1)
target ended with / makes a different
```sh
ln -s <target/> <link_name/shortcut-file>
ln -s </path/to/source_dir/> </path/to/duplicate_dir>
```

```
<target> is the path to the file or directory you want to link to.
<link_name/shortcut-file> is the name of the symbolic link you want to create.
```

### ln (1) - make links between files
```sh
-s, --symbolic              make symbolic links instead of hard links
```

### Examples in `/usr/bin` directory
```sh
cd /usr/bin/
ls -lh Get*
ls -lh gol*
ls -lh impacket-smb*
ls -lh impacket-g*

sudo ln -s ../share/impacket/script impacket-GetUserSPNs

sudo ln -s ../share/impacket/script GetUserSPNs
sudo ln -s ../share/impacket/script GetNPUsers
sudo ln -s ../share/impacket/script Get-GPPPassword
sudo ln -s ../share/impacket/script smbserver
sudo ln -s ../share/impacket/script mssqlclient
sudo ln -s ../share/impacket/script goldenPac
```

This command will create a symbolic link named "impacket-GetUserSPNs" that points to the "../share/impacket/script" directory relative to the location where you run the command.

The -s flag specifies that you're creating a symbolic link.

### Before
```sh
$ pwd
/usr/bin

$ ls -lh Get*                                               
ls: cannot access 'Get*': No such file or directory
```

### After
```sh
$ ls -lh Get*
lrwxrwxrwx 1 root root 24 Aug 17 20:33 GetNPUsers -> ../share/impacket/script
lrwxrwxrwx 1 root root 24 Aug 17 20:31 GetUserSPNs -> ../share/impacket/script
```

# [Remove a Symbolic Link](#remove-a-symbolic-link-1)
Use the `rm` command followed by the path to the symbolic (shortcut) link
## 
```sh
rm /path/to/symlink
rm -r /path/to/symlink
rm -rf /path/to/symlink
```

After executing this command, the symbolic link will be deleted, and it won't affect the original source directory.

### 
```

```

### 
```

```

### TL;DR
```

```