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

dir /s /b *.txt
ls -r *.txt
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
