- [Find users currently logged in](#find-users-currently-logged-in)
- [References](#references)

-------------------------------------------

## [Find users currently logged in](#find-users-currently-logged-in)
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

# [References](#references-1)

https://www.cyberciti.biz/tips/howto-linux-kill-and-logout-users.html