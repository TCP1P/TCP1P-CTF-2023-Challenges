#!/bin/bash

DISK_IMAGE=challenge.ntfs
MOUNT_POINT="/tmp/mnt"
OUTPUT_TXT="flag.txt"
OUTPUT_PNG="flag.png"

# For initializing the output files
> "$OUTPUT_TXT"

sudo mkdir -p "${MOUNT_POINT}"
sudo mount -t ntfs -o stream_interfaces=windows "${DISK_IMAGE}" "${MOUNT_POINT}"

for i in {0..99}; do
	FILENAME="flag$(printf "%02d" $i).txt"
	FULL_PATH="${MOUNT_POINT}/${FILENAME}"
	
	getfattr -d "$FULL_PATH" | awk -F'=' '{print $2}' | tr -d '\n' | sed 's/"//g' >> "$OUTPUT_TXT"
done

cat "${OUTPUT_TXT}" | xxd -r -p > "${OUTPUT_PNG}"

sudo umount "${MOUNT_POINT}"

echo "File save to ${OUTPUT_TXT} and ${OUTPUT_PNG}"
