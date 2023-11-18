# useradd

- [Before & After](#before--after)
- [Create a New User](#create-a-new-user)
    - [Set Password](#set-password)
    - [sudo group Before & After](#sudo-group-before--after)

# Before & After
```sh
nl /etc/passwd | tail -5
```

# Create a New User
```sh
NEWUSER=ckurity                         # Replace "ckurity" with a new user
sudo useradd -ms /usr/bin/zsh $NEWUSER

-m, --create-home             create the user's home directory
-s, --shell SHELL             login shell of the new account
```

## Set Password
```sh
sudo passwd $NEWUSER
```

## sudo group Before & After
```sh
egrep -n "$NEWUSER|sudo" /etc/group
```

### Activate the changes to groups
```sh
sudo usermod -aG sudo $NEWUSER
newgrp sudo
```

### 
```

```

### 
```

```