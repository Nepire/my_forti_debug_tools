#!/bin/bash
gz_start=$[0x41b4]
ori_size=$[]

gzip -9 vmlinux
dd if=/dev/zero of=flatkc bs=1 seek=$gz_start count=$ori_size conv=notrunc
dd if=vmlinux.gz of=flatkc bs=1 seek=$gz_start conv=notrunc
