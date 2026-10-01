#!/bin/bash

qemu-system-x86_64 \
  -machine q35,i8042=off \
  -cpu max \
  -m 256 \
  -smp 4 \
  -kernel /home/txr/poky/build/tmp/deploy/images/qemux86-64/bzImage \
  -drive file=/home/txr/poky/build/tmp/deploy/images/qemux86-64/core-image-minimal-qemux86-64.rootfs.ext4,format=raw,if=virtio \
  -append "root=/dev/vda rw console=ttyS0" \
  -netdev user,id=net0 \
  -device virtio-net-pci,netdev=net0 \
  -nographic
