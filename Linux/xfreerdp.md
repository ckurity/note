- [Basic RDP Connection](#basic-rdp-connection)
- [Alternative](#alternative)
- [Problem](#problem)
	- [Update Package Lists](#update-package-lists)
	- [Fix Broken Packages](#fix-broken-packages)
	- [Install Missing Dependency](#install-missing-dependency)

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

## [Problem](#problem-1)
```sh
$ xfreerdp  
Command 'xfreerdp' not found, but can be installed with:
sudo apt install freerdp2-x11
Do you want to install it? (N/y)y
sudo apt install freerdp2-x11
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Some packages could not be installed. This may mean that you have
requested an impossible situation or if you are using the unstable
distribution that some required packages have not yet been created
or been moved out of Incoming.
The following information may help to resolve the situation:

The following packages have unmet dependencies:
 libfreerdp2-2 : Depends: libavcodec60 (>= 7:6.0)
E: Unable to correct problems, you have held broken packages.
```

[G] Here are a few steps you can try to resolve this issue:
[B] Here are the steps to address the problem:

### [Update Package Lists](#update-package-lists-1)
Start by refreshing the package lists to ensure you have the latest information:
```sh
sudo apt update
```

### [Fix Broken Packages](#fix-broken-packages-1)
Use the following command to try to fix any broken dependencies:
```sh
sudo apt -f install
```

### [Install Missing Dependency](#install-missing-dependency-1)
If the issue persists, install the required libavcodec60 package directly:
```sh
sudo apt install libavcodec60
```

### [Retry Installation](#retry-installation)
After addressing the missing dependency, attempt the installation again:
```sh
sudo apt install freerdp2-x11
```

https://remmina.org/
https://remmina.org/how-to-install-remmina/