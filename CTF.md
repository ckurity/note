# find /path/to/directory -type f \( -name "file1.txt" -o -name "file2.txt" \)

find / -name *root*.txt -o -name *flag*.txt -o -name *user*.txt 2>/dev/null

root@agent-sudo:/home# find / -name *root*.txt -o -name *flag*.txt 2>/dev/null
/home/james/user_flag.txt
/root/root.txt
root@agent-sudo:/home# 

This command will search the / directory for files named *root*.txt and *flag*.txt. 
The -o option is used to specify an "or" condition. 
This means that the command will find any file that matches the name *root*.txt or the name *flag*.txt.

##########################################################################################

meterpreter > search -f *flag*.txt
No files matching your search were found.
meterpreter >

##########################################################################################

## Windows CMD

### Search All starting from C:\
dir /s /b c:\*.txt
dir /s /b c:\*shell.exe

### Current Directory Only
dir /s /b *.txt

/s: This option tells the "dir" command to search recursively through all subdirectories.
/b: This option displays only the bare format (file names) without any additional information like file size or date.

## Windows PowerShell

ls -r *.txt
ls -r .. *.txt
Get-ChildItem -Recurse *.txt
Get-ChildItem -Path "c:\Users" -Recurse -Filter "flag.txt"

##########################################################################################

*Evil-WinRM* PS C:\Users> Get-ChildItem -Recurse *.txt


    Directory: C:\Users\Administrator\Desktop


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----         4/4/2020  11:39 AM             32 root.txt


    Directory: C:\Users\backup\Desktop


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----         4/4/2020  12:19 PM             26 PrivEsc.txt


    Directory: C:\Users\backup.THM-AD\Desktop


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----         4/4/2020   1:08 PM             26 PrivEsc.txt


    Directory: C:\Users\svc-admin\Desktop


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----         4/4/2020  12:18 PM             28 user.txt.txt


*Evil-WinRM* PS C:\Users> 


*Evil-WinRM* PS C:\Users> cat C:\Users\Administrator\Desktop\root.txt
TryHackMe{4ctiveD1rectoryM4st3r}

*Evil-WinRM* PS C:\Users> cat C:\Users\backup\Desktop\PrivEsc.txt
TryHackMe{B4ckM3UpSc0tty!}

*Evil-WinRM* PS C:\Users> cat C:\Users\backup.THM-AD\Desktop\PrivEsc.txt
TryHackMe{B4ckM3UpSc0tty!}

*Evil-WinRM* PS C:\Users> cat C:\Users\svc-admin\Desktop\user.txt.txt
TryHackMe{K3rb3r0s_Pr3_4uth}

##########################################################################################

[10.10.10.161]: PS C:\Users\svc-alfresco\Documents> whoami
htb\svc-alfresco
[10.10.10.161]: PS C:\Users\svc-alfresco\Documents> ls -r *.txt
[10.10.10.161]: PS C:\Users\svc-alfresco\Documents> ls -r .. *.txt


    Directory: C:\Users\svc-alfresco\Desktop


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-ar---        30/7/2023   4:33 PM             34 user.txt

[10.10.10.161]: PS C:\Users\svc-alfresco\Documents> cat ..\Desktop\user.txt
9d036056703c60311cbf1c67e93b6df7
[10.10.10.161]: PS C:\Users\svc-alfresco\Documents>

##########################################################################################

[10.10.10.161]: PS C:\Users\svc-alfresco\Documents> ls -r ..\.. *.txt
ls : Access to the path 'C:\Users\Administrator' is denied.
    + CategoryInfo          : PermissionDenied: (C:\Users\Administrator:String) [Get-ChildItem], UnauthorizedAccessException
    + FullyQualifiedErrorId : DirUnauthorizedAccessError,Microsoft.PowerShell.Commands.GetChildItemCommand

ls : Access to the path 'C:\Users\Public' is denied.
    + CategoryInfo          : PermissionDenied: (C:\Users\Public:String) [Get-ChildItem], UnauthorizedAccessException
    + FullyQualifiedErrorId : DirUnauthorizedAccessError,Microsoft.PowerShell.Commands.GetChildItemCommand

ls : Access to the path 'C:\Users\sebastien' is denied.
    + CategoryInfo          : PermissionDenied: (C:\Users\sebastien:String) [Get-ChildItem], UnauthorizedAccessException
    + FullyQualifiedErrorId : DirUnauthorizedAccessError,Microsoft.PowerShell.Commands.GetChildItemCommand



    Directory: C:\Users\svc-alfresco\Desktop


Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-ar---        30/7/2023   4:33 PM             34 user.txt


[10.10.10.161]: PS C:\Users\svc-alfresco\Documents>

##########################################################################################
