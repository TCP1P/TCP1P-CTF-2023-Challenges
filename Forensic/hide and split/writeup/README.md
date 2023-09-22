# Proof of Concept

The idea of this challenge is to split `flag.png` and hide each part of flag to file `flag00.txt` - `flag99.txt` Extended Attributes (EA) or Alternate Data Streams in NTFS filesystem.

To examine ADS in Linux system, you can use this command to mount the disk image.

```
sudo mount -t ntfs -o stream_interfaces=windows challenge.ntfs /tmp/mnt
```

And then to dump all of ADS inside a file you can use `getfattr`.

```
getfattr -d /tmp/mnt/flag00.txt
```

This bash script will automate the process of dumping all ADS data from each fake flag then write the output as `flag.txt` as only hex data string and `flag.png` as PNG file.

```bash
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
```
