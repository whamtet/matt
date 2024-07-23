apk add bluez expect
modprobe btusb
cp $(dirname $0)/input.conf /etc/bluetooth
cp $(dirname $0)/keyboard /etc/init.d
rc-update add bluetooth
rc-update add keyboard
lbu include /etc/init.d/keyboard
