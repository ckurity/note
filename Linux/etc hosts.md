- [Define Variable](#define-variable)
- [Verify Variable](#verify-variable)
- [Implement](#implement)
- [Verify After](#verify-after)
- [Quickly change the IP address](#quickly-change-the-ip-address)

# /etc/hosts
# Define Variable
```sh
echo $d
d=active.htb
```

# Verify Variable
```sh
echo $ip $d
```

# Implement
```sh
echo $ip $d | sudo tee -a /etc/hosts
sudo bash -c ' echo "10.10.11.217 latex.topology.htb topology.htb" >> /etc/hosts'
```

# Verify After
```sh
nl /etc/hosts
```

# Quickly change the IP address
```sh
# sudo sed -i 's/LAMA/BARU/' /etc/hosts
sudo sed -i 's/127.0.0.1/10.1.1.1/' /etc/hosts
```