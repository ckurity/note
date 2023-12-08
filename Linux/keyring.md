- [TL;DR](#tldr)

-------------------------------------------

Why do you use a keyring (also called keychain) in the real life? You use it to keep one or more keys grouped together so that they are easy to find and carry.

It’s the same concept in Linux. The keyring feature allows your system to group various passwords together and keep it one place.

Most desktop environments like GNOME, KDE, Xfce etc use an implementation of gnome-keyring to provide this keyring feature in Linux.

This keyring keeps your ssh keys, GPG keys and keys from applications that use this feature, like Chromium browser. By default, the keyring is locked with a master password which is often the login password of the account.

https://itsfoss.com/ubuntu-keyring/

## [TL;DR](#tldr-1)
```sh
l .local/share/keyrings/
rm .local/share/keyrings/*
```

## 
```sh
$ l .local/share/keyrings/
total 8.0K
-rw-r--r-- 1 kali kali   15 May 31 21:47 default
-rw------- 1 kali kali 1.5K Nov 18 11:16 Default_keyring.keyring
-rw------- 1 kali kali    0 Jun  6 21:42 user.keystore

$ rm -rf .local/share/keyrings/
$ l .local/share/keyrings/     
ls: cannot access '.local/share/keyrings/': No such file or directory
```
https://devicetests.com/reset-keyring-ubuntu-guide

## [Remove Current Keyrings]
```sh
rm -f .local/share/keyrings/*
```

Reboot/logout to set a new password

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

# References

