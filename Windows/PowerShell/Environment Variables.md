https://devblogs.microsoft.com/scripting/powertip-use-windows-powershell-to-display-all-environment-variables/

DOS = SET

ls env:
dir env:
ls env:u*

*Evil-WinRM* PS C:\Users\svc-alfresco\Documents> dir env:

Name                           Value
----                           -----
ALLUSERSPROFILE                C:\ProgramData
APPDATA                        C:\Users\svc-alfresco\AppData\Roaming
CommonProgramFiles             C:\Program Files\Common Files
CommonProgramFiles(x86)        C:\Program Files (x86)\Common Files
CommonProgramW6432             C:\Program Files\Common Files
COMPUTERNAME                   FOREST
ComSpec                        C:\Windows\system32\cmd.exe
LOCALAPPDATA                   C:\Users\svc-alfresco\AppData\Local
NUMBER_OF_PROCESSORS           2
OS                             Windows_NT
Path                           C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Users\svc-alfresco\AppData\Local\Microsoft\WindowsApps
PATHEXT                        .COM;.EXE;.BAT;.CMD;.VBS;.VBE;.JS;.JSE;.WSF;.WSH;.MSC;.CPL
PROCESSOR_ARCHITECTURE         AMD64
PROCESSOR_IDENTIFIER           AMD64 Family 23 Model 49 Stepping 0, AuthenticAMD
PROCESSOR_LEVEL                23
PROCESSOR_REVISION             3100
ProgramData                    C:\ProgramData
ProgramFiles                   C:\Program Files
ProgramFiles(x86)              C:\Program Files (x86)
ProgramW6432                   C:\Program Files
PSModulePath                   C:\Users\svc-alfresco\Documents\WindowsPowerShell\Modules;C:\Program Files\WindowsPowerShell\Modules;C:\Windows\system32\WindowsPowerShell\v1.0\Modules
PUBLIC                         C:\Users\Public
SystemDrive                    C:
SystemRoot                     C:\Windows
TEMP                           C:\Users\SVC-AL~1\AppData\Local\Temp
TMP                            C:\Users\SVC-AL~1\AppData\Local\Temp
USERDNSDOMAIN                  htb.local
USERDOMAIN                     HTB
USERNAME                       svc-alfresco
USERPROFILE                    C:\Users\svc-alfresco
windir                         C:\Windows


*Evil-WinRM* PS C:\Users\svc-alfresco\Documents> 


*Evil-WinRM* PS C:\Users\svc-alfresco\Documents> ls env:u*

Name                           Value
----                           -----
USERPROFILE                    C:\Users\svc-alfresco
USERNAME                       svc-alfresco
USERDOMAIN                     HTB
USERDNSDOMAIN                  htb.local


*Evil-WinRM* PS C:\Users\svc-alfresco\Documents> ls env:tmp

Name                           Value
----                           -----
TMP                            C:\Users\SVC-AL~1\AppData\Local\Temp


*Evil-WinRM* PS C:\Users\svc-alfresco\Documents> cd $env:tmp
*Evil-WinRM* PS C:\Users\svc-alfresco\AppData\Local\Temp> 
