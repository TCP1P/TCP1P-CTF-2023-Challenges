#!/bin/bash

NUM=25000
FILENAME="zip"
PASS_FILE="password.txt"

# extract from archive NUM times
for ((i=$NUM; i > 0; i--)); do
  FILE="$FILENAME-$i.zip"

  password=$(cat "$PASS_FILE")
  yes | unzip -oP "$password" "$FILE"
  rm "$FILE"
done
