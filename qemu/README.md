## Running alpine from qemu

    qemu-img create -f raw alpine-usb2.img 2G

    modprobe ext4
    apk add e2fsprogs
    fdisk # o, n, p, 1, defaults, w
    mkfs.ext4 /dev/sda1

Reboot for minimal image

    mount /dev/sda1 /media/usb # to confirm
    setup-alpine

modify /etc/apk/repositories

    lbu commit -d
