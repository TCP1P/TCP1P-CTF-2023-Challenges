#!/bin/sh
set -e

export directories=$(find . -maxdepth 2 -type d)
IFS=$'\n'
for dir in $directories; do
    if [[ "$dir" =~ \./\..* ]]; then
        continue
    fi
    if [ "$dir" != ".." ] && [[ "$dir" =~ \./.*/ ]]; then
        echo "Processing directory: $dir"
        ctf challenge $1 "$dir"
    fi
done
