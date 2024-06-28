apk add bluez
modprobe btusb
cp /media/mmcblk0p1/matt/input.conf /etc/bluetooth
service bluetooth start
