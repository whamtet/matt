## Before adjusting fstab

    mkdir -p /mnt/newhome

    mount UUID=6941be32-ae1a-46bd-96b7-45532690cd15 /mnt/newhome

    cp -a /home/. /mnt/newhome/

Then edit fstab and restart

Also, can delete internationalization

    doas rm -rf /usr/share/locale/*
