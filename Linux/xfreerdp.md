- [Basic RDP Connection](#basic-rdp-connection)
- [Alternative](#alternative)

## [Basic RDP Connection](#basic-rdp-connection-1)
```sh
/v:<server>[:port]                Server hostname
/u:[[<domain>\]<user>|<user>[@<domain>]]    Username
/d:<domain>                       Domain
/p:<password>                     Password

$ u=bitbucket
$ p=littleredbucket
$ echo $t $d $u $p
10.10.30.226 LAB.ENTERPRISE.THM bitbucket littleredbucket

$ xfreerdp /v:$t /d:$d /u:$u /p:$p
[09:53:31:228] [26426:26427] [WARN][com.freerdp.crypto] - Certificate verification failure 'self-signed certificate (18)' at stack position 0
[09:53:31:228] [26426:26427] [WARN][com.freerdp.crypto] - CN = LAB-DC.LAB.ENTERPRISE.THM
[09:53:35:758] [26426:26427] [ERROR][com.winpr.timezone] - Unable to find a match for unix timezone: US/Eastern
[09:53:36:664] [26426:26427] [INFO][com.freerdp.gdi] - Local framebuffer format  PIXEL_FORMAT_BGRX32
[09:53:36:665] [26426:26427] [INFO][com.freerdp.gdi] - Remote framebuffer format PIXEL_FORMAT_BGRA32
[09:53:36:723] [26426:26427] [INFO][com.freerdp.channels.rdpsnd.client] - [static] Loaded fake backend for rdpsnd
[09:53:36:723] [26426:26427] [INFO][com.freerdp.channels.drdynvc.client] - Loading Dynamic Virtual Channel rdpgfx
        
        [snip - successfull RDP attempt] 
        
```

## [Alternative](#alternative-1)

```sh
sudo apt install remmina
rdesktop $t
```

https://remmina.org/
https://remmina.org/how-to-install-remmina/