[How do I turn off Windows Defender from the command line?](https://superuser.com/questions/1046297/how-do-i-turn-off-windows-defender-from-the-command-line)

### sc (Service Control) to stop and start Windows Defender

[Flagged by Defender as Trojan:Win32/MpTamperSrvDisableAV.D](https://www.microsoft.com/en-us/wdsi/threats/malware-encyclopedia-description?Name=Trojan:Win32/MpTamperSrvDisableAV.D&ThreatID=2147752484)

```sh
sc config windefend start= disabled
sc stop windefend

sc config WinDefend start= auto
sc start windefend
```
(not case sensitive)

```PowerShell
Set-MpPreference -DisableRealtimeMonitoring $true
```

## Enable it:
```PowerShell
Set-MpPreference -DisableRealtimeMonitoring $false
```

## [Update]
```sh
"C:\Program Files\Windows Defender\MpCmdRun.exe" -SignatureUpdate
```

```sh
C:\>"C:\Program Files\Windows Defender\MpCmdRun.exe" -SignatureUpdate
Signature update started . . .
```