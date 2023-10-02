```
netsh advfirewall show allprofiles state
```
```
netsh a sh a state
```
https://www.techtarget.com/searchenterprisedesktop/photostory/4500257332/Top-Windows-command-line-commands/6/Check-Windows-Firewall-status-with-netsh-advfirewall-show-allprofiles
```
netsh advfirewall show allprofiles
```
```
netsh a sh a
```
Top 10: Windows Firewall Netsh Commands
https://www.itprotoday.com/windows-8/top-10-windows-firewall-netsh-commands
Michael Otey | Feb 21, 2012

Query firewall rules:
```
netsh a f sh r n=all
```
```
netsh advfirewall firewall show rule name=all
```
Enable Windows Firewall
```
```
netsh advfirewall set allprofiles state on
```
Disable Windows Firewall
```
netsh advfirewall set allprofiles state off
```
```
netsh a se a state off
```
Reset Windows Firewall back to its default settings
```
netsh advfirewall reset
```
Set logging: 
The default path for the Windows Firewall log files is \Windows\system32\LogFiles\Firewall\pfirewall.log. 
To change the location of the log file to the C:\temp directory:
```
netsh advfirewall set currentprofile logging filename "C:\temp\pfirewall.log"
```
Allow and prevent ping: You can use netsh to control how and if a given system responds to ping requests.
Block ping requests:
```
netsh advfirewall firewall add rule name="All ICMP V4" dir=in action=block protocol=icmpv4
```
Allow ping requests:
```
netsh advfirewall firewall add rule name="All ICMP V4" dir=in action=allow protocol=icmpv4
```
Enable and delete a port: One of the most common things you need to do with Windows Firewall is open ports that are used by different programs.
Create a rule to open Microsoft SQL Server:
```
netsh advfirewall firewall add rule name="Open SQL Server Port 1433" dir=in action=allow protocol=TCP localport=1433
```
Delete rule
```
netsh advfirewall firewall delete rule name="Open SQL Server Port 1433" protocol=tcp localport=1433
```
Enable a program: Another common task is opening Windows Firewall for a given program. The following example illustrates how to add a rule that enables Windows Live Messenger to work through Windows Firewall:
```
netsh advfirewall firewall add rule name="Allow Messenger" dir=in action=allow program="C:\programfiles\messenger\msnmsgr.exe"
```
Enable remote management: Another common requirement, especially when you're setting up new systems, is to enable remote management so that tools such as the Microsoft Management Console can connect to remote systems. To open Windows Firewall for remote management, you can use the following command:
```
netsh advfirewall firewall set rule group="remote administration" new enable=yes
```
Enable Remote Desktop Connection: One of the first things I do with most of the server systems I set up is enable Remote Desktop Connection for easy remote systems management. The following command shows how to use netsh to open Windows Firewall for Remote Desktop Connections:
```
netsh advfirewall firewall set rule group="remote desktop" new enable=Yes
```
Export and import firewall settings: After you get Windows Firewall configured, it's a good idea to export your settings so that you can easily reapply them later or import them into another system. In the following netsh commands, you can see how to export and then import your Windows Firewall configuration:
```
netsh advfirewall export "C:\temp\WFconfiguration.wfw"
netsh advfirewall import "C:\temp\WFconfiguration.wfw"
```
