### [Upgrading Simple Shells to Fully Interactive TTYs](https://blog.ropnop.com/upgrading-simple-shells-to-fully-interactive-ttys/#method-1-python-pty-module)

```
python -c 'import pty; pty.spawn("/bin/bash")'
```

### Example from [HTB Lame](https://app.hackthebox.com/machines/1) box
```
id
uid=0(root) gid=0(root)

python -c 'import pty; pty.spawn("/bin/bash")'
root@lame:/home# id      
id
uid=0(root) gid=0(root)
root@lame:/home# 
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