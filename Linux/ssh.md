

### no matching host key type found. Their offer: ssh-rsa,ssh-dss
```sh
$ ssh user@10.1.1.2
Unable to negotiate with 10.1.1.2 port 22: no matching host key type found. Their offer: ssh-rsa,ssh-dss

$ ssh user@10.1.1.2 -o HostKeyAlgorithms=ssh-rsa
```

### [](https://askubuntu.com/questions/123072/ssh-automatically-accept-keys)
```
ssh -o StrictHostKeyChecking=no
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

### 
```

```

### 
```

```