- [Change SSH Port](#change-ssh-port)
    - [Auto with sed](#auto-with-sed)
- [Passwordless SSH]
- [References](#references)

-------------------------------------------

## [Change SSH Port](#change-ssh-port-1)
```sh
ls -lh /etc/ssh/sshd_config*
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
diff /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
sudo vi /etc/ssh/sshd_config
```

### [Auto with sed](#auto-with-sed-1)
```sh
grep 'Port 22' /etc/ssh/sshd_config
sudo sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config
grep 'Port 22' /etc/ssh/sshd_config
sudo systemctl restart ssh
systemctl status ssh
```



# [References](#references-1)

