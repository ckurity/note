- [Create a shared group](#create-a-shared-group-if-it-doesnt-already-exist)
- [Add the users](#add-the-users)
- [Change the group ownership](#change-the-group-ownership-of-the-opt-directory-to-the-newly-created-shared-group)


# Create a shared group (if it doesn't already exist)
```sh
nl /etc/group | tail -5
sudo groupadd sharedgroup
```

# Add the users
```sh
sudo usermod -aG sharedgroup $USER
sudo usermod -aG sharedgroup $NEWUSER
```

## Before
```sh
$ ls -lh /opt                                                                                                
total 24K
drwxr-xr-x 3 root root 4.0K May 27 03:47 brave.com
drwxr-xr-x 5 root root 4.0K Aug 26 05:00 BurpSuitePro
drwxr-xr-x 6 root root 4.0K Aug 26 05:02 CrackMapExec
drwxr-xr-x 3 root root 4.0K Mar 10  2023 microsoft
drwxrwxr-x 3 kali kali 4.0K May 14 04:39 Postman
drwxr-xr-x 4 root root 4.0K Sep 24 11:53 Xmind
```

# Change the group ownership of the /opt directory to the newly created shared group
```sh
sudo chown -R :sharedgroup /opt
```

## After
```sh
$ ls -lh /opt                                                                                                
total 24K
drwxr-xr-x 3 root sharedgroup 4.0K May 27 03:47 brave.com
drwxr-xr-x 5 root sharedgroup 4.0K Aug 26 05:00 BurpSuitePro
drwxr-xr-x 6 root sharedgroup 4.0K Aug 26 05:02 CrackMapExec
drwxr-xr-x 3 root sharedgroup 4.0K Mar 10  2023 microsoft
drwxrwxr-x 3 kali sharedgroup 4.0K May 14 04:39 Postman
drwxr-xr-x 4 root sharedgroup 4.0K Sep 24 11:53 Xmind
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