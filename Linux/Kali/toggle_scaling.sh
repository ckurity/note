#!/bin/bash

config_file="$HOME/.xsessionrc"
backup_file="$HOME/.xsessionrc_backup"

# Check if .xsessionrc exists, if not, create one with initial configuration
if [ ! -f "$config_file" ]; then
    echo "export GDK_SCALE=2" > "$config_file"
    echo "export QT_SCALE_FACTOR=2" >> "$config_file"
    echo "export XCURSOR_SIZE=48" >> "$config_file"
fi

# Create a backup of the original configuration if it doesn't exist
if [ ! -f "$backup_file" ]; then
    cp "$config_file" "$backup_file"
fi

# Check the current configuration and toggle
if grep -q "export GDK_SCALE=1" "$config_file"; then
    # If the current configuration is 1x, switch to 2x
    sed -i 's/export GDK_SCALE=1/export GDK_SCALE=2/' "$config_file"
    sed -i 's/export QT_SCALE_FACTOR=1/export QT_SCALE_FACTOR=2/' "$config_file"
    sed -i 's/export XCURSOR_SIZE=24/export XCURSOR_SIZE=48/' "$config_file"
    echo "Switched to 2x scaling."
else
    # If the current configuration is 2x, switch to 1x
    sed -i 's/export GDK_SCALE=2/export GDK_SCALE=1/' "$config_file"
    sed -i 's/export QT_SCALE_FACTOR=2/export QT_SCALE_FACTOR=1/' "$config_file"
    sed -i 's/export XCURSOR_SIZE=48/export XCURSOR_SIZE=24/' "$config_file"
    echo "Switched to 1x scaling."
fi

# Restart the X server to apply the changes
pkill -KILL -u $USER

# Source the updated configuration
source "$config_file"
