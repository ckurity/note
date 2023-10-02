### Temporary Static IP
```
ip a a 10.1.1.1/24 dev eth0
ip addr add 10.1.1.1/24 dev eth0
```

### Default Gateway
```
route add default gw 10.1.1.254 eth0
```