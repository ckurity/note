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
```
### Verify After
```
nl /etc/hosts
```