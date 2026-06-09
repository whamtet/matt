## Before adjusting fstab

    mkdir -p /mnt/newhome

    mount UUID=6941be32-ae1a-46bd-96b7-45532690cd15 /mnt/newhome

    cp -a /home/. /mnt/newhome/

Then edit fstab and restart

Also, can delete internationalization

    doas rm -rf /usr/share/locale/*

If you cannot flash images in fastboot try rebooting fastboot from fastboot so that it starts in user mode.

## adjusting nftables

    vim /etc/nftables.d/50_sshd.nft

add the line

    tcp dport 7681 accept comment "accept ttyd"
