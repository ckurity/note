# mount

### TL;DR
```
sudo mount -t cifs //$ip/profiles$ /mnt
```

### 
```
$ sudo mount -t cifs //$ip/profiles$ /mnt
Password for root@//10.10.10.192/profiles$: 

$ ls -lh /mnt                                 
total 0
drwxr-xr-x 2 root root 0 Jun  4  2020 AAlleni
drwxr-xr-x 2 root root 0 Jun  4  2020 ABarteski
drwxr-xr-x 2 root root 0 Jun  4  2020 ABekesz
```

### Password Protected
```
$ sudo mount -t cifs //$ip/sysvol /mnt
Password for root@//10.10.10.192/sysvol: 
mount error(13): Permission denied
Refer to the mount.cifs(8) manual page (e.g. man mount.cifs) and kernel log messages (dmesg)
```

### 
```
$ sudo mount -t cifs //$ip/sysvol /mnt -o username=support,password='#00^BlackKnight'
$ l /mnt
total 0
drwxr-xr-x 2 root root 0 Feb 23  2020 BLACKFIELD.local
```

Please note that embedding passwords directly in command lines is not recommended for security reasons, as they might be visible in the command history or process listings. Consider using a more secure method, such as creating a credentials file with restricted permissions, and then referencing that file in your mount command.

Here's an example of how you could use a credentials file:

### 1. Create a credentials file
```
echo "username=<your_username>" >> ~/.smbcredentials
echo "password=<your_password>" >> ~/.smbcredentials
chmod 600 ~/.smbcredentials
```

### 2. Modify the mount command to use the credentials file:
```
sudo mount -t cifs //$ip/share /mnt -o credentials=~/.smbcredentials
```

This way, your credentials are stored in a more secure manner and not directly visible in the command line.

### 
```

```

### 
```

```

### 
```

```

### Examples
```

```