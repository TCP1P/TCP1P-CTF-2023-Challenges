#!/bin/sh
set -e

# Find directories containing docker-compose.yaml or docker-compose.yml files
export directories=$(find . -maxdepth 3 -type f \( -name "docker-compose.yaml" -o -name "docker-compose.yml" \) -exec dirname {} \; | sort -u)
IFS=$'\n'

for dir in $directories; do
    if [[ "$dir" =~ \./\..* ]]; then
        continue
    fi

    echo "Processing directory: $dir"

    # Change to the directory and run docker-compose up --detach
    (
        cd "$dir"
        {
            sudo COMPOSE_HTTP_TIMEOUT=999999 docker-compose down --volumes

        }
    )&
done

wait
