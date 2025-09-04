#!/bin/bash

# sudo ./create_mount_disk.sh /dev/vdi /mnt/hdd8  

# Check if running as root
if [ "$EUID" -ne 0 ]; then 
    echo "Please run as root"
    exit 1
fi

# Check if device and mount point are provided
if [ $# -ne 2 ]; then
    echo "Usage: $0 <device> <mount_point>"
    echo "Example: $0 /dev/vdi /mnt/hdd8"
    exit 1
fi

DEVICE=$1
MOUNT_POINT=$2

# Validate device exists
if [ ! -b "$DEVICE" ]; then
    echo "Error: Device $DEVICE does not exist"
    exit 1
fi

# Create mount point if it doesn't exist
if [ ! -d "$MOUNT_POINT" ]; then
    echo "Creating mount point $MOUNT_POINT"
    mkdir -p "$MOUNT_POINT"
fi

# Check if device is already mounted
if mount | grep -q "$DEVICE"; then
    echo "Error: Device $DEVICE is already mounted"
    exit 1
fi

# Check if mount point is already in use
if mount | grep -q "$MOUNT_POINT"; then
    echo "Error: Mount point $MOUNT_POINT is already in use"
    exit 1
fi

echo "Partitioning $DEVICE..."
# Create partition table and single partition
echo -e "n\np\n1\n\n\nw" | fdisk "$DEVICE" > /dev/null 2>&1

# Wait for partition to be recognized
sleep 2

# Format the partition
echo "Formatting $DEVICE..."
mkfs.ext4 -F "${DEVICE}1" > /dev/null 2>&1

# Mount the partition
echo "Mounting ${DEVICE}1 to $MOUNT_POINT..."
mount "${DEVICE}1" "$MOUNT_POINT"

# Add to fstab for persistence
if ! grep -q "${DEVICE}1" /etc/fstab; then
    echo "Adding to /etc/fstab for persistence..."
    UUID=$(blkid -s UUID -o value "${DEVICE}1")
    echo "UUID=$UUID $MOUNT_POINT ext4 defaults 0 2" >> /etc/fstab
fi

echo "Done! Disk mounted successfully at $MOUNT_POINT"
df -h "$MOUNT_POINT"
