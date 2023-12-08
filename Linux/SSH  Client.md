- [Passwordless SSH](#passwordless-ssh)


### no matching host key type found. Their offer: ssh-rsa,ssh-dss
```sh
$ ssh user@10.1.1.2
Unable to negotiate with 10.1.1.2 port 22: no matching host key type found. Their offer: ssh-rsa,ssh-dss

$ ssh user@10.1.1.2 -o HostKeyAlgorithms=ssh-rsa
```

### [](https://askubuntu.com/questions/123072/ssh-automatically-accept-keys)
```sh
ssh -o StrictHostKeyChecking=no
```

## [Passwordless SSH](#passwordless-ssh-1)
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

### 
```

```

### 
```

```

### 
```

```

### 
```

```

### 
```

```