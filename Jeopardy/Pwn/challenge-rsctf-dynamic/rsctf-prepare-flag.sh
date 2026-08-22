#!/bin/sh
set -eu
python3 - <<'PY'
import gzip
import os
from pathlib import Path
archive = Path('/home/ctf/initramfs.cpio.gz')
archived = bytes.fromhex('54435031507b5748595f4449445f59414c4c5f4c45545f48494d5f434f4f4b5f21212121f09f98adf09f98adf09f98ad7d')
current = os.environ['RSCTF_FLAG'].encode()
if len(current) != len(archived):
    raise SystemExit('RSCTF flag length does not match the archived initramfs slot')
raw = gzip.decompress(archive.read_bytes())
if archived in raw:
    raw = raw.replace(archived, current)
elif current not in raw:
    raise SystemExit('archived initramfs flag slot was not found')
temporary = archive.with_name(archive.name + '.rsctf')
temporary.write_bytes(gzip.compress(raw, compresslevel=9, mtime=0))
temporary.replace(archive)
PY
