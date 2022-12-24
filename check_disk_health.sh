#!/bin/bash

gnome-disks &

while true
do
    echo "Enter a device path from Disk:"
    read diskname
    sudo smartctl -ia $diskname

    echo "Do you want to check another device? [Y/n]"
    read yn
    if [ "$yn" == "N" ] || [ "$yn" == "n" ]; then
        break
    elif [ "$yn" == "Y" ] || [ "$yn" == "y" ]; then
        continue    
    else
        echo "Input is invalid."
        break
    fi
done

read -p "Press any key to continue..."
fg
