- 
- [References](#references)

-------------------------------------------

net view, then ls

## 
```sh

```

## 
```sh
PS C:\Users\user> net view \\$t
Shared resources at \\10.1.1.1

(null)

Share name  Type  Used as  Comment

-------------------------------------------------------------------------------
DATA        Disk
The command completed successfully.
```

### doesn't work this way
Use ls
```sh
PS C:\Users\user> net view \\$t\DATA
System error 53 has occurred.

The network path was not found.
```

## 
```sh
PS C:\Users\user> ls \\$t\DATA

    Directory: \\10.1.1.1\DATA

Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----       12/12/2023   3:52 AM           7168 program.exe
```

### doesn't work this way
```sh
PS C:\Users\user> ls \\$t
ls : Cannot find path '\\10.1.1.1' because it does not exist.
```

## 
```sh

```

## 
```sh

```

## 
```sh

```

## 
```sh

```

## 
```sh

```

# [References](#references-1)

