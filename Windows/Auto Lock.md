# Doesn't work

# ScreenSaverIsSecure
0 = disable password protection for the screen saver
```
reg query 'hkcu\Control Panel\Desktop' /v ScreenSaverIsSecure
```
```
reg add 'hkcu\Control Panel\Desktop' /v ScreenSaverIsSecure /f /d 0
```

# ScreenSaveTimeout
```
reg query 'hkcu\Control Panel\Desktop' /v ScreenSaveTimeout
```
```
reg add 'hkcu\Control Panel\Desktop' /v ScreenSaveTimeout /f /d 0
```
# Example

```
PS C:\Users\Administrator> reg query 'hkcu\Control Panel\Desktop' /v ScreenSaverIsSecure

ERROR: The system was unable to find the specified registry key or value.
PS C:\Users\Administrator>

PS C:\Users\Administrator> reg add 'hkcu\Control Panel\Desktop' /v ScreenSaverIsSecure /f /d 0
The operation completed successfully.

PS C:\Users\Administrator> reg query 'hkcu\Control Panel\Desktop' /v ScreenSaverIsSecure

HKEY_CURRENT_USER\Control Panel\Desktop
    ScreenSaverIsSecure    REG_SZ    0
```

# ScreenSaveTimeout
```
PS C:\Users\Administrator> reg query 'hkcu\Control Panel\Desktop' /v ScreenSaveTimeout

ERROR: The system was unable to find the specified registry key or value.
PS C:\Users\Administrator>
PS C:\Users\Administrator>
PS C:\Users\Administrator> reg add 'hkcu\Control Panel\Desktop' /v ScreenSaveTimeout /f /d 0
The operation completed successfully.
PS C:\Users\Administrator>
PS C:\Users\Administrator> reg query 'hkcu\Control Panel\Desktop' /v ScreenSaveTimeout

HKEY_CURRENT_USER\Control Panel\Desktop
    ScreenSaveTimeout    REG_SZ    0
```