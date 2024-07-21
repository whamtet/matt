apk add bluez expect
modprobe btusb
cp $(dirname $0)/input.conf /etc/bluetooth
service bluetooth start
