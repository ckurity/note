# Template

### TL;DR

Use the cd command to change to the directory that contains the EXE file.

Use the Start-Process cmdlet to execute the EXE file. The syntax is:
```
Start-Process <path to EXE file>
```

### Here is an example of how to execute an EXE file from a UNC path in PowerShell:
```
# Change to the directory that contains the EXE file.
cd \\server\share\myapp

# Execute the EXE file.
Start-Process myapp.exe
```

### 
```
Start-Process -FilePath "\\server\share\path\to\file.exe" -Wait
```
-FilePath: Specifies the path to the executable file.
-Wait: This optional parameter makes the script wait for the executable to finish before continuing.

### 
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

### 
```

```