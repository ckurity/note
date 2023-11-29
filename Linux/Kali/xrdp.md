- [TL;DR](#tldr)
- [Install the RDP server](#install-the-rdp-server)
   - [Example](#example)
- [Change the XRDP port](#change-the-xrdp-port)
- [References](#references)

-------------------------------------------

## [TL;DR](#tldr)
```sh
sudo systemctl start xrdp
systemctl status xrdp
sudo systemctl start xrdp
```

## [Install the RDP server](#install-the-rdp-server)
```sh
sudo apt install xrdp
```

### [Example](#example)
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

## [Change the XRDP port](#change-the-xrdp-port)
```sh
ls -lht /etc/xrdp/xrdp.ini*
sudo cp /etc/xrdp/xrdp.ini /etc/xrdp/xrdp.ini.bak
```

## 
```sh
sudo sed -i 's/port=3389/port=1337/' /etc/xrdp/xrdp.ini
```

## 
```sh
$ egrep -n 'port=(3389|1337)' /etc/xrdp/xrdp.ini
14:;   port=1337
23:port=1337
```

## 
```sh
sudo service xrdp restart
sudo service xrdp status
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