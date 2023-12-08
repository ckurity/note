- 
- [References](#references)

-------------------------------------------

## 
```sh
lt /etc/proxychains4.conf*
sudo cp /etc/proxychains4.conf /etc/proxychains4.conf.bak
lt /etc/proxychains4.conf*
diff /etc/proxychains4.conf /etc/proxychains4.conf.bak
```

## 
```sh
$ lt /etc/proxychains4.conf*
-rw-r--r-- 1 root root 5.8K 2022-06-14 02:08:52.000000000 +0800 /etc/proxychains4.conf
```

## 
```sh
$ grep -n socks4 /etc/proxychains4.conf
149:#           socks4  192.168.1.49    1080
153:#       proxy types: http, socks4, socks5, raw
161:socks4      127.0.0.1 9050
```

## 
```sh
$ grep ^socks4 /etc/proxychains4.conf 
socks4  127.0.0.1 9050
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

# [References](#references-1)

