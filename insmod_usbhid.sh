#!/bin/sh

make clean
make
sudo insmod hid.ko
sudo insmod hid-generic.ko
sudo insmod usbhid.ko