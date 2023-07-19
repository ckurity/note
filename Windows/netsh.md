# Show Configuration

## Show Interface Configuration (including DNS)
```
netsh i i sh con
netsh interface ipv4 show config
```
## Show only IP Addresses of all LAN adapters
```
netsh i i sh a
netsh interface ipv4 show address
```

# Make Changes
## Set Static IP
```
netsh i i se a "Ethernet" s 10.1.1.1 255.255.255.0
netsh interface ipv4 set "Ethernet" static 10.1.1.1 255.255.255.0
```
## Set DNS
```
netsh i i se d "Ethernet" s 10.1.1.1
netsh interface ipv4 set dnsservers "Ethernet" static 10.1.1.1
```
https://stackoverflow.com/questions/18620173/how-can-i-set-change-dns-using-the-command-prompt-at-windows-8

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
# Examples
## No IP (show address)
```
C:\Users\user>netsh i i sh a "Ethernet"

Configuration for interface "Ethernet"
    DHCP enabled:                         Yes
    InterfaceMetric:                      5
```
## No IP (show config)
```
C:\Users\user>netsh i i sh con "Ethernet"

Configuration for interface "Ethernet"
    DHCP enabled:                         Yes
    InterfaceMetric:                      5
    DNS servers configured through DHCP:  8.8.8.8
                                          8.8.4.4
    Register with which suffix:           Primary only
    WINS servers configured through DHCP: None
```
## How to
```
set address name="Wired Ethernet Connection" source=dhcp
set address "Wired Ethernet Connection" static 10.0.0.9 255.0.0.0 10.0.0.1 1
```

## Without admin
```
C:\Users\user>netsh i i se a "Ethernet" s 10.1.1.20 255.255.255.0
The requested operation requires elevation (Run as administrator).

C:\Users\user>net sess
System error 5 has occurred.

Access is denied.
```

## Run CMD as admin
```
C:\>net sess
There are no entries in the list.

C:\>netsh i i se a "Ethernet" s 10.1.1.20 255.255.255.0
C:\>
```

```
C:\>netsh i i sh a "Ethernet"

Configuration for interface "Ethernet"
    DHCP enabled:                         No
    IP Address:                           10.1.1.20
    Subnet Prefix:                        10.1.1.0/24 (mask 255.255.255.0)
    InterfaceMetric:
```


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
## DNS can only be seen with show config
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

## 
```

```

## 
```

```


https://michlstechblog.info/blog/windows-show-and-configure-network-settings-using-netsh/

https://www.csie.ntu.edu.tw/~b90047/ebook/winXPhack/0596005113_winxphks-chp-5-sect-13.html
