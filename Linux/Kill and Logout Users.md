- [Find current logged in users](#find-current-logged-in-users)
- [Logout Current Session](#logout-current-session)
- [References](#references)

-------------------------------------------

## [Find current logged in users](#find-current-logged-in-users)
```sh
w
who
```

### [see the processes started by the user named ckurity]
```sh
ps -U ckurity
```

## [Halt/Stop a User Called ckurity]
```sh
skill -STOP -u ckurity
```

## Resume Halted User Called ckurity
```sh
skill -CONT -u ckurity
```

## Kill and Logout a User Called ckurity
```sh
skill -KILL -u ckurity
```

## [Kill and Logout All Users]
```sh
skill -KILL -v /dev/pts/* 
```

## [Logout Current Session](#logout-current-session)
```sh
xfce4-session-logout --logout
gnome-session-quit --logout
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

https://www.cyberciti.biz/tips/howto-linux-kill-and-logout-users.html