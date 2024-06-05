#!/bin/bash
gz_start=$[0x41b4]
ori_size=$[]

dd if=flatkc of=vmlinux.gz ibs=1 skip=$gz_start count=$ori_size
gzip -k vmlinux.gz
mv vmlinux.gz vmlinux.gz.ori
mv vmlinux vmlinux.ori
