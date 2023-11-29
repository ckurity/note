# CMD
```sh
sc query WinDefend
```
This command queries the Service Control Manager (SCM) for information about the Windows Defender service.

Look for the line that starts with "STATE" in the output. It will indicate the current status of Windows Defender, such as "RUNNING" or "STOPPED."

For example, if Windows Defender is enabled and running, the output of the command will be:
```sh
SERVICE_NAME: WinDefend
        TYPE : 20 WIN32_OWN_PROCESS
        STATE : 4 RUNNING
        PID : 1216
        ...
```
# PowerShell
```PowerShell
Get-MpPreference
```
This command retrieves the Windows Defender preferences and settings.

Look for the line that starts with "RealTimeProtectionEnabled." If the value is "True," it means that real-time protection is enabled in Windows Defender. If the value is "False," it means that real-time protection is disabled.

For example, if Windows Defender is enabled and running, the output of the command will be:
```
Name                  : WinDefend
DisplayName            : Windows Defender Service
Description            : Provides real-time protection against viruses, spyware, and other malicious software.

Status                : Running
StartType              : Automatic
CurrentState           : Running
```