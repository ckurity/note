- 
- [References](#references)

-------------------------------------------

## [Install the RDP server](#install-the-rdp-server)
```sh
sudo apt install xrdp
```

## 
```sh
$ systemctl status xrdp
○ xrdp.service - xrdp daemon
     Loaded: loaded (/lib/systemd/system/xrdp.service; disabled; preset: disabled)
     Active: inactive (dead)
       Docs: man:xrdp(8)
             man:xrdp.ini(5)

$ sudo systemctl start xrdp
$ systemctl status xrdp    
● xrdp.service - xrdp daemon
     Loaded: loaded (/lib/systemd/system/xrdp.service; disabled; preset: disabled)
     Active: active (running) since Sun 2023-11-26 23:43:59 EST; 7s ago
       Docs: man:xrdp(8)
             man:xrdp.ini(5)
    Process: 112178 ExecStartPre=/bin/sh /usr/share/xrdp/socksetup (code=exited, status=0/SUCCESS)
    Process: 112186 ExecStart=/usr/sbin/xrdp $XRDP_OPTIONS (code=exited, status=0/SUCCESS)
   Main PID: 112187 (xrdp)
      Tasks: 1 (limit: 4568)
     Memory: 1.9M
        CPU: 19ms
     CGroup: /system.slice/xrdp.service
             └─112187 /usr/sbin/xrdp

Nov 26 23:43:57 tp systemd[1]: Starting xrdp daemon...
Nov 26 23:43:58 tp xrdp[112186]: [INFO ] address [0.0.0.0] port [3389] mode 1
Nov 26 23:43:58 tp xrdp[112186]: [INFO ] listening to port 3389 on 0.0.0.0
Nov 26 23:43:58 tp xrdp[112186]: [INFO ] xrdp_listen_pp done
Nov 26 23:43:58 tp systemd[1]: xrdp.service: Can't open PID file /run/xrdp/xrdp.pid (yet?) after start: Operation >
Nov 26 23:43:59 tp systemd[1]: Started xrdp daemon.
Nov 26 23:44:00 tp xrdp[112187]: [INFO ] starting xrdp with pid 112187
Nov 26 23:44:00 tp xrdp[112187]: [INFO ] address [0.0.0.0] port [3389] mode 1
Nov 26 23:44:00 tp xrdp[112187]: [INFO ] listening to port 3389 on 0.0.0.0
Nov 26 23:44:00 tp xrdp[112187]: [INFO ] xrdp_listen_pp done
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

## 
```sh

```

# [References](#references-1)

https://www.xrdp.org/