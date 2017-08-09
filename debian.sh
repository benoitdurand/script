#!/bin/bash

cd ~/Downloads/debian-8.2.0/
rm -r ./initrd/
mkdir ./initrd
chmod u+w ./iso/install.amd/initrd.gz
cp ./iso/install.amd/initrd.gz ./iso/install.amd/initrd.gz.save
chmod +x /Library/WebServer/Documents/postinst.sh

cd initrd
gunzip -c ../iso/install.amd/initrd.gz | cpio -id
cp ../preseed.cfg ./

find . | cpio --create --format='newc' | gzip  > ../iso/install.amd/initrd.gz
cd ../iso
chmod u-w ./install.amd/initrd.gz
now=debian"-$(date +'%Y-%m-%d-%H-%M')"

#echo $now
#hdiutil makehybrid -iso -joliet -o ../$now ./
#xorriso -as  mkisofs -o ../debian-preceed.iso -r -J -no-emul-boot -boot-load-size 4 -boot-info-table -b isolinux/isolinux.bin -c isolinux/boot.cat  ./
mkisofs -o ../debian-preceed.iso -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -R -J -v -T ./



# sur un linux
# sudo mkfs -t vfat -I /dev/sdb
# sudo isohybrid /home/frdbecc/debian.iso  --entry 4 --type 0x1c
# sudo cat debian.iso > /dev/sdX
#
