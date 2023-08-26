# CPU Utilization

### [To find the top running processes by CPU usage](https://www.atlantic.net/vps-hosting/find-top-10-running-processes-by-memory-and-cpu-usage/)
```
ps aux --sort -%cpu | head -3
```

### [To find the top running processes by memory usage]()
```
ps aux --sort -%mem | head -3
```

### [To show only the command name instead of the full path of the command]()
```
ps -eo pid,ppid,cmd,comm,%cpu,%mem --sort=-%cpu | head -5
ps -eo pid,ppid,cmd,comm,%cpu,%mem --sort=-%mem | head -5
```

### [Use the top Command to Find Top Processes by Memory and CPU Usage]()
Note that CPU & MEM are case sensitive
```
top -o %CPU
top -o %MEM
top -o %CPU | head -10
top -o %MEM | head -10
```

### TL;DR
```

```

### [Find out who is monopolizing or eating the CPUs]((https://www.cyberciti.biz/tips/how-do-i-find-out-linux-cpu-utilization.html))
```
ps -eo pcpu,pid,user,args | sort -r -k1 | head -3
```



### Syntax
```

```

### Examples 
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

# [How Do I Find Out Linux CPU Utilization and Usage? by cyberciti](https://www.cyberciti.biz/tips/how-do-i-find-out-linux-cpu-utilization.html)