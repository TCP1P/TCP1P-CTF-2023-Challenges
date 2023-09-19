#!/bin/bash

DISK_IMAGE=challenge.ntfs
DISK_NAME=Challenge
MOUNT_POINT="/tmp/mnt"
SOURCE_FILE=sliced.txt

# Create a 5 MiB file
dd if=/dev/zero of="${DISK_IMAGE}" iflag=fullblock bs=1MiB count=5
sync

# Mount the file as a loopback device
device=$(sudo losetup --show --find "${DISK_IMAGE}")

# Format the file as ntfs with compression
sudo mkntfs -f -C -L "${DISK_NAME}" "${device}"

# Unmount the file from the loopback device
sudo losetup -d "${device}"

# Mount the file under a directory
sudo mkdir -p "${MOUNT_POINT}"
sudo mount -t ntfs -o stream_interfaces=windows "${DISK_IMAGE}" "${MOUNT_POINT}"

# Write data from sliced.txt to EAs/ADS using setfattr
for i in {0..99}; do
    filename="flag$(printf "%02d" $i).txt"
    full_path="${MOUNT_POINT}/${filename}"
    echo -e "Unfortunately this is not the flag\nThe flag has been split and stored in the hidden part of the disk" > "${full_path}"
done

# Set extended attributes on the files
for i in {0..99}; do
    filename="flag$(printf "%02d" $i).txt"
    full_path="${MOUNT_POINT}/${filename}"
    data=$(sed -n "$((i+1))p" "$SOURCE_FILE")
    ea_name="user.flag$i"
    setfattr -n "$ea_name" -v "$data" "$full_path"
    echo "Set EA $ea_name for $full_path"
done

# Unmount the NTFS filesystem when done
sudo umount "${MOUNT_POINT}"
