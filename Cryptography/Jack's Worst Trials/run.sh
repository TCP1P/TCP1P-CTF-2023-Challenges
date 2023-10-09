#!/bin/bash

python3 /home/ctf/app.py &

sleep 10

flask shell <<EOF
from app import db
db.create_all()
EOF

while true
do
    sleep 1
done
