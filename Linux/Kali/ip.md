- 
- [References](#references)

-------------------------------------------

## 
```sh
nl /etc/network/interfaces
```

## Default
```sh
$ cat /etc/network/interfaces
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback
```

## Syntax
```sh
#The primary network interface
allow-hotplug  eth0
#iface eth0 inet eth0
iface eth0 inet static
	address [your IP]
	netmask [your netmask]
        broadcast [use 192.255.255.255 for a 192 address]
        Gateway [your gateway]
```

## Eg
```sh
iface eth1 inet static
    address 10.1.1.10/24
```

## 
```sh
sudo ifdown eth1
sudo ifup eth1
ip -br -c a s eth1
ip a
```

## Final
```sh
$ cat /etc/network/interfaces
# This file describes the network interfaces available on your system
# and how to activate them. For more information, see interfaces(5).

source /etc/network/interfaces.d/*

# The loopback network interface
auto lo
iface lo inet loopback

iface eth1 inet static
    address 10.1.1.10/24
```

## 
```sh

```

## 
```sh

```

## 
```sh

```

## 
```sh

```

# [References](#references-1)

