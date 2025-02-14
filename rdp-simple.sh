export BROWSER=chromium
setup-desktop xfce
apk add xrdp xorgxrdp 
service xrdp start
service xrdp-sesman start
# hack to get us an empty tty7
service lightdm start
