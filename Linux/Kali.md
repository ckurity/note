# [Increase Icon/Text Size in Kali Linux](https://unix.stackexchange.com/questions/196576/increase-icon-text-size-in-kali-linux)

> Settings > Appearance > Settings tab > Windows Scaling Change to 2x

Generic Monitor
```
/usr/share/kali-themes/xfce4-panel-genmon-vpnip.sh
```

# Auto Login

```
# Check Before
ls -lh /etc/lightdm/lightdm.conf*

# Backup
sudo cp /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.bak

# Check Again
ls -lh /etc/lightdm/lightdm.conf*

# Compare Before
diff /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.bak

# Check Before
grep -n autologin-user= /etc/lightdm/lightdm.conf

# Make changes
sudo sed -i 's/#autologin-user=/autologin-user=kali/' /etc/lightdm/lightdm.conf

# Check After
grep -n autologin-user= /etc/lightdm/lightdm.conf
diff /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.bak
```