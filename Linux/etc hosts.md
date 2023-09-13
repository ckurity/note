# /etc/hosts
### Define Variable
```
echo $d
d=active.htb
```
### Verify Variable
```
echo $ip $d
```
### Implement
```
echo $ip $d | sudo tee -a /etc/hosts
sudo bash -c ' echo "10.10.11.217 latex.topology.htb topology.htb" >> /etc/hosts'
```
### Verify After
```
nl /etc/hosts
```