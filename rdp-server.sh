apk add xrdp xorgxrdp
cp $(dirname "$0")/xorg.conf /etc/X11/xrdp
rc-service xrdp start
rc-service xrdp-sesman start
