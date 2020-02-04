#!/bin/bash

path=/var/swap

echo "Assigning..."

# allocate 2GB
dd if=/dev/zero of=${path} bs=1024 count=2048000

chmod 0600 ${path}

# create swap
mkswap -f ${path}

# load swap
swapon ${path}

# The system starts automatic loading
echo "${path} swap swap defaults 0 0" >> /etc/fstab

echo "Allocation swap succeeds."

free -m
