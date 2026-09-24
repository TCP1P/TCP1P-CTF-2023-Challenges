#!/bin/sh
set -eu

# xinetd 2.3.15 closes every possible descriptor during startup. The host's
# billion-descriptor limit keeps it busy long enough that port 1337 never opens.
ulimit -n 1024
exec /usr/sbin/xinetd -dontfork -f /etc/xinetd.conf
