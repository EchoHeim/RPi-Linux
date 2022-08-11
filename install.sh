#!/bin/bash

function cfg_Insertion()
{
	if grep -w -q ^$2 $1
	then
	    echo "It already exists and does not need to be added"
	else
	    echo $2 >> $1
	fi
}

sudo cp bootfs/* /boot/ -vfr
sudo cp rootfs/5.10.17-v7l /lib/modules/ -dvpr
sudo cp rootfs/5.10.17-v7 /lib/modules/ -dvpr

cd /boot

sudo sed -i '/dtoverlay=vc4-fkms-v3d/d' config.txt
sudo sed -i '/dtoverlay=vc4-kms-v3d/d' config.txt

cfg_Insertion config.txt  "dtoverlay=rpi-ft5406"
cfg_Insertion config.txt  "dtoverlay=vc4-kms-v3d"
cfg_Insertion config.txt  "dtoverlay=vc4-kms-dsi-7inch"

sync
sudo reboot
