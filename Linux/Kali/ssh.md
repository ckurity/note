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

## [Passwordless SSH]
Passwordless SSH Authentication Using Public Key Cryptography

### Generate an SSH key pair on Client
```sh
ssh-keygen
```

## 
```sh
$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/kali/.ssh/id_rsa): 
Created directory '/home/kali/.ssh'.                                                                                                 
Enter passphrase (empty for no passphrase):                                                                                                         
Enter same passphrase again: 
Your identification has been saved in /home/kali/.ssh/id_rsa
Your public key has been saved in /home/kali/.ssh/id_rsa.pub
The key fingerprint is:

[snip]

$ lt ~/.ssh/   
total 8.0K
-rw------- 1 kali kali 2.6K 2023-12-07 22:39:20.671000000 -0500 id_rsa
-rw-r--r-- 1 kali kali  561 2023-12-07 22:39:20.671000000 -0500 id_rsa.pub
```

## [Copy the Public Key to the Remote Server]
Copy the Public Key to the Remote Server
```sh
ssh-copy-id user@hostname
# or
cat ~/.ssh/id_rsa.pub | ssh user@hostname 'cat >> ~/.ssh/authorized_keys'
```

## [Verify Passwordless SSH]
Try connecting to the remote server using SSH. You should be able to log in without being prompted for a password:
```sh
ssh user@hostname
```

## [Optional: Disable Password Authentication (Recommended for Security)]
```sh
$ grep PasswordAuthentication /etc/ssh/sshd_config
#PasswordAuthentication yes
# PasswordAuthentication.  Depending on your PAM configuration,
# PAM authentication, then enable this but set PasswordAuthentication
```

## 
```sh
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
```

## 
```sh
$ diff /etc/ssh/sshd_config /etc/ssh/sshd_config.bak 
14c14
< Port 2222
---
> #Port 22
57c57
< PasswordAuthentication no
---
> #PasswordAuthentication yes
```

# [References](#references-1)

