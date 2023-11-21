## Temporary Static IP
```sh
ip a a 10.1.1.1/24 dev eth0
ip addr add 10.1.1.1/24 dev eth0
```

### Kali
```sh
ip a a 10.1.1.10/24 dev eth1
ip addr add 10.1.1.10/24 dev eth1
```

## Default Gateway
```sh
route add default gw 10.1.1.254 eth0
```