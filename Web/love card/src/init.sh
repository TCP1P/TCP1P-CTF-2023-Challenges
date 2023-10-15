#!/bin/bash

service apache2 restart
find . -type f -name "*.php" ! -name "index.php" -exec rm -f {} \;
sleep 20
