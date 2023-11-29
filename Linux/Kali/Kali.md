- [Auto Login](#auto-login)
- [Logout](#logout)

# [Increase Icon/Text Size in Kali Linux](https://unix.stackexchange.com/questions/196576/increase-icon-text-size-in-kali-linux)

> Settings > Appearance > Settings tab > Windows Scaling Change to 2x

## To change the window scaling factor to 2x in Kali Linux using the command line
```sh
$ cat ~/.xsessionrc
export GDK_SCALE=2
export QT_SCALE_FACTOR=2
export XCURSOR_SIZE=48
```

Restart X session by logging out and back in, or by running the following command:
```sh
pkill -KILL -u $USER
```

## To change the window scaling factor to 1x in Kali Linux using the command line
```sh
$ cat ~/.xsessionrc
export GDK_SCALE=1
export QT_SCALE_FACTOR=1
export XCURSOR_SIZE=24
```

## scaling_shortcut.sh
```sh
#!/bin/bash

# Define the scaling factors
scaling_factors=(
    "1x"
    "2x"
)

# Get the current scaling factor
current_scaling_factor=$(gsettings get org.gnome.desktop.interface scaling-factor)

# Determine the next scaling factor
next_scaling_factor="${scaling_factors[((${#scaling_factors[@]} - 1) - ${scaling_factors[@]}))}}"

# Set the scaling factor
gsettings set org.gnome.desktop.interface scaling-factor "$next_scaling_factor"

# Restart the X server to apply the changes
pkill -KILL -u $USER
```

Generic Monitor
```sh
/usr/share/kali-themes/xfce4-panel-genmon-vpnip.sh
```

# [Auto Login](#auto-login-1)
```sh
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

# [Logout](#logout-1)
```sh
xfce4-session-logout --logout
gnome-session-quit --logout
```