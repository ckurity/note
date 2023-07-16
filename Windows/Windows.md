https://www.microsoft.com/en-us/evalcenter

https://www.microsoft.com/en-us/evalcenter/evaluate-windows-11-enterprise

https://www.microsoft.com/en-us/evalcenter/evaluate-windows-server-2022

netsh diag show adapter
show dns

https://www.csie.ntu.edu.tw/~b90047/ebook/winXPhack/0596005113_winxphks-chp-5-sect-13.html

## Show Interface configuration
```
netsh i i sh con
netsh interface ipv4 show config
```
## Only IP Addresses of all LAN adapters
```
netsh i i sh a
netsh interface ipv4 show address
```
## Show global TCP/IP Parameters
```
netsh i i sh g
netsh interface ipv4 show global
```
## Disable and enable a Interface
```
netsh int set int name="ethernet" admin=disabled
netsh int set int name="ethernet" admin=enabled
```
## Show all network  interfaces and its link state
```
netsh interface ipv4 show interfaces
```
```
```
```
```
```
```
```
```
https://michlstechblog.info/blog/windows-show-and-configure-network-settings-using-netsh/