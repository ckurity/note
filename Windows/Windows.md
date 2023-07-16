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
# Example
```
PS C:\Users\Administrator> netsh i i sh con "Ethernet"

Configuration for interface "Ethernet"
    DHCP enabled:                         No
    IP Address:                           10.1.1.2
    Subnet Prefix:                        10.1.1.0/24 (mask 255.255.255.0)
    InterfaceMetric:                      10
    Statically Configured DNS Servers:    None
    Register with which suffix:           Primary only
    Statically Configured WINS Servers:   None

PS C:\Users\Administrator>
```
## View DNS Config
```
PS C:\Users\Administrator> netsh i i sh dns "Ethernet"

Configuration for interface "Ethernet"
    Statically Configured DNS Servers:    None
    Register with which suffix:           Primary only
```
## Set DNS
```
PS C:\Users\Administrator> netsh i i se dns "Ethernet" s 10.1.1.1

The configured DNS server is incorrect or does not exist.
```
## Verify
```
PS C:\Users\Administrator> netsh i i sh dns "Ethernet"

Configuration for interface "Ethernet"
    Statically Configured DNS Servers:    10.1.1.1
    Register with which suffix:           Primary only

PS C:\Users\Administrator>
```
## Can only be seen with show config
```
PS C:\Users\Administrator> netsh i i sh con "Ethernet"

Configuration for interface "Ethernet"
    DHCP enabled:                         No
    IP Address:                           10.1.1.2
    Subnet Prefix:                        10.1.1.0/24 (mask 255.255.255.0)
    InterfaceMetric:                      10
    Statically Configured DNS Servers:    10.1.1.1
    Register with which suffix:           Primary only
    Statically Configured WINS Servers:   None

PS C:\Users\Administrator>
```
## Show Address doesn't display DNS config
```
PS C:\Users\Administrator> netsh i i sh a "Ethernet"

Configuration for interface "Ethernet"
    DHCP enabled:                         No
    IP Address:                           10.1.1.2
    Subnet Prefix:                        10.1.1.0/24 (mask 255.255.255.0)
    InterfaceMetric:                      10

PS C:\Users\Administrator>
```

```
```

```
```

```
```

https://michlstechblog.info/blog/windows-show-and-configure-network-settings-using-netsh/