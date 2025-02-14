cat > /etc/apk/repositories <<EOF
#/media/cdrom/apks
http://dl-cdn.alpinelinux.org/alpine/edge/main
http://dl-cdn.alpinelinux.org/alpine/edge/community
http://dl-cdn.alpinelinux.org/alpine/edge/testing
EOF

apk update
apk add --upgrade apk-tools
apk upgrade --available
