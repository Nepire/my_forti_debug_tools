#!/bin/bash
cd $1
find . | cpio -H newc -o > ../rootfs.raw
cd ..
cat ./rootfs.raw | gzip > rootfs.gz
rm rootfs.raw
