# DenOS - Debian Linux build from scratch with Debootstrap#
# Bernardino Lopez [ bernardino.lopez@gmail.com ]
# 11.27.18

# 03_denos_chroot.sh - Customize your Distro
# As root in chroot. Execute the script in a Terminal 
# ./03_denos_chroot.sh

# export LIVE_BOOT=LIVE_BOOT64
source ./config.txt

#echo "debian-live" > /etc/hostname
echo $DISTRO_NAME > /etc/hostname 

apt-cache search linux-image

apt-get update && \
apt-get install -y --no-install-recommends \
    linux-image-4.9.0-13-amd64 \
    live-boot \
    systemd-sysv

apt-get install -y --no-install-recommends \
    network-manager net-tools wireless-tools \
    wget nano xorg
apt-get clean

passwd -d root

exit
