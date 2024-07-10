apk add xrdp xorgxrdp
cp $(dirname "$0")/xorg.conf /etc/X11/xrdp
service xrdp start
service xrdp-sesman start
# hack to get us an empty tty7
service lightdm start
