#!/bin/sh

export directories=$(find . -maxdepth 2 -type d)
IFS=$'\n'
for dir in $directories; do
    if [[ "$dir" =~ \./\..* ]]; then
        continue
    fi
    if [ "$dir" != ".." ] && [[ "$dir" =~ \./.*/ ]]; then
        echo "Processing directory: $dir"
cat <<EOF | sudo bash
    cd "$dir"
    docker-compose up --detach
EOF
    fi
done
