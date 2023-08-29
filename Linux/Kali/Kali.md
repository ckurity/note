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

# Check Backup Again
ls -lh /etc/lightdm/lightdm.conf*

# Compare Before Changes
diff /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.bak

# Check Before Changes
grep -n autologin-user= /etc/lightdm/lightdm.conf

# Make Changes
sudo sed -i 's/#autologin-user=/autologin-user=kali/' /etc/lightdm/lightdm.conf

# Check After Changes
grep -n autologin-user= /etc/lightdm/lightdm.conf
diff /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.bak
```