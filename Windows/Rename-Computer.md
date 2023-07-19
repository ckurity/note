# Change the Windows hostname via PowerShell
```
Rename-Computer -NewName "New_Hostname"
Rename-Computer -NewName "DC01"
```
Once you have run this command, you will need to restart your computer for the changes to take effect.

# Change the Windows hostname via CMD (wmic)

```
wmic computersystem get name
wmic computersystem where name="%computername%" rename name="New_Hostname"
```
## Examples
```
PS C:\> hostname
OLD
PS C:\>
PS C:\> Rename-Computer -NewName DC01
WARNING: The changes will take effect after you restart the computer NEW.
PS C:\>
```

```
C:\>hostname
OLD

C:\>wmic computersystem get name
Name
OLD


C:\>wmic computersystem where name="%computername%" rename name="NEW"
Executing (\\OLD\ROOT\CIMV2:Win32_ComputerSystem.Name="OLD")->rename()
Method execution successful.
Out Parameters:
instance of __PARAMETERS
{
        ReturnValue = 0;
};


C:\>

C:\>shutdown -t 0 -f -r

C:\>: After Reboot
C:\>

C:\>hostname
NEW

C:\>wmic computersystem get name
Name
NEW
```
