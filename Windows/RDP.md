- 
- [References](#references)

-------------------------------------------

## 
```sh
reg query "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v PortNumber
[convert]::ToInt32('0xd3d', 16)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v PortNumber /t REG_DWORD /d 1337 /f
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" -Name "PortNumber" -Value 1337
```

## 
```sh
PS C:\> reg query "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v PortNumber

HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp
    PortNumber    REG_DWORD    0xd3d

PS C:\> [convert]::ToInt32('0xd3d', 16)
3389
PS C:\>
```

## 
```sh
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp" /v PortNumber /t REG_DWORD /d 5000 /f
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

## 
```sh

```

## 
```sh

```

# [References](#references-1)


