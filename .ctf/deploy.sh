#!/bin/sh
set -e

# Find directories containing docker-compose.yaml or docker-compose.yml files
export directories=$(find . -maxdepth 2 -type f -name "docker-compose.yaml" -o -name "docker-compose.yml" | xargs -n 1 dirname | sort -u)

for dir in $directories; do
    if [[ "$dir" =~ \./\..* ]]; then
        continue
    fi

    echo "Processing directory: $dir"

    # Change to the directory and run docker-compose up --detach
    (
        cd "$dir"
        sudo docker-compose up --detach
    )&
done
