- [Identify Web Server](#identify-web-server)
- [Apache HTTP Server (httpd)](#apache-http-server-httpd)
    - [Apache HTTP Server (httpd) Version](#apache-http-server-httpd-version)

## 
```sh

```

## 
```sh
apache2 -v
httpd -v
```

# Identify Web Server
## Apache HTTP Server (httpd)
```sh
root@27624a0fe48a:/# 
root@27624a0fe48a:/# ps aux | egrep '[a]pache|[h]ttp'
root         315  0.0  0.3 373992 16380 ?        Ss   06:28   0:00 /usr/sbin/apache2 -k start
www-data     319  0.0  0.1 374604  9032 ?        S    06:28   0:00 /usr/sbin/apache2 -k start
www-data     320  0.0  0.1 374064  7496 ?        S    06:28   0:00 /usr/sbin/apache2 -k start
www-data     321  0.0  0.1 374064  7496 ?        S    06:28   0:00 /usr/sbin/apache2 -k start
www-data     322  0.0  0.1 374064  7496 ?        S    06:28   0:00 /usr/sbin/apache2 -k start
www-data     323  0.0  0.1 374448  9032 ?        S    06:28   0:00 /usr/sbin/apache2 -k start
root         343  0.0  0.0   4240   256 pts/0    S+   06:28   0:00 tail -f /var/log/apache2/access.log /var/log/apache2/error.log /var/log/apache2/other_vhosts_access.log
www-data     376  0.0  0.1 374016  7496 ?        S    06:32   0:00 /usr/sbin/apache2 -k start
root@27624a0fe48a:/#
```

## Apache HTTP Server (httpd) Version
```sh
root@27624a0fe48a:/# apache2 -v
Server version: Apache/2.4.25 (Debian)
Server built:   2018-06-02T08:01:13
root@27624a0fe48a:/#
```

Alternatively, you can use `httpd -v`

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

