- [Configuration File](#configuration-file)

-------------------------------------------

## Configuration File
```sh
/etc/httpd/conf/httpd.conf
```

### 
```sh
ypuffy$ ps aux | grep [h]ttp
www      30861  0.0  0.3   904  2704 ??  Isp   12:45AM    0:00.01 httpd: logger (httpd)
www      58553  0.0  0.3   764  2640 ??  Isp   12:45AM    0:00.00 httpd: server (httpd)
www      46448  0.0  0.3   728  2620 ??  Isp   12:45AM    0:00.01 httpd: server (httpd)
www      95394  0.0  0.3   848  2796 ??  Isp   12:45AM    0:00.01 httpd: server (httpd)
root      4059  0.0  0.2  1056  2068 ??  Isp   12:45AM    0:00.01 /usr/sbin/httpd
ypuffy$ 

ypuffy$ find / -name httpd* 2>/dev/null 
/usr/sbin/httpd
/usr/share/man/man5/httpd.conf.5
/usr/share/man/man8/httpd.8
/etc/examples/httpd.conf
/etc/rc.d/httpd
/etc/httpd.conf
/var/run/rc.d/httpd
ypuffy$

ypuffy$ nl /etc/httpd.conf
     1  server "ypuffy.hackthebox.htb" {
     2          listen on * port 80
      
     3          location "/userca*" {
     4                  root "/userca"
     5                  root strip 1
     6                  directory auto index
     7          }
      
     8          location "/sshauth*" {
     9                  fastcgi socket "/run/wsgi/sshauthd.socket"
    10          }
      
    11          location * {
    12                  block drop
    13          }
    14  }
ypuffy$
```

### 
```sh
$ curl $t   
curl: (52) Empty reply from server
```

### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```

### 
```sh

```

# References

**How to configure an Apache web server**

https://opensource.com/article/18/2/apache-web-server-configuration