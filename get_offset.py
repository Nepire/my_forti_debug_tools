# -*- coding: utf-8 -*-
import sys

fb = open(sys.argv[1],'rb').read()
tg = fb.find(b'\x5e\xff\xe0')
if tg==-1:
    print("no find")
    exit()
size=int(bytes(fb[tg-20:tg-15][::-1]).hex(),16)
print("offset:{}\nsize:{}".format(hex(tg),hex(size)))