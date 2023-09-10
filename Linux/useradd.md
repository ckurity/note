# useradd

### Before & After
```
nl /etc/passwd | tail -5
```

### Create a new user
```
NEWUSER=ckurity

useradd -ms /usr/bin/zsh $NEWUSER

-m, --create-home             create the user's home directory
-s, --shell SHELL             login shell of the new account
```

### Set Password
```
sudo passwd $NEWUSER
```


### sudo group Before & After
```
egrep -n "$NEWUSER|sudo" /etc/group
```

### Activate the changes to groups
```
newgrp sudo
```

### 
```

```

### 
```

```