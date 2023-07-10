sudo pacman -S lxappearance picom nitrogen rofi chromium polybar neovim zsh tmux lightdm lightdm-slick-greeter nodejs npm ntfs-3g docker docker-compose nautilus alsa-utils alsa-plugins alsa-lib alsa-firmware unzip ripgrep gvfs-mtp

# ENABLE LIGHTDM ON START AND UPDATE GRETTER
sudo systemctl enable lightdm.service

# CHNAGE THE GREETER TO lightdm-slick-greeter
# -- sudo vim /etc/lightdm/lightdm.conf

# MAKE DOCKER RUN WITHOUT SUDO
sudo usermod -aG docker $USER

# BLUETOOTH
sudo pacman -S bluez bluez-utils blueberry

# FIRMWARE AND LINUX HEADERS
sudo pacman -S linux-firmware linux-firmware-marvell linux-firmware-qlogic linux linux-headers mesa-utils

# IF GPU IS NVIDIA
sudo pacman -S nvidia nvidia-utils nvidia-settings nvidia-dkms

# VIDEO AUDIO CODECS
sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore vlc

# STEPS
# 1- INSTALL YAY AND SNAPD
# 2- OH-MY-ZSH
# 3- Powerlevel10k
# 4- zsh-autosuggestions
# 5- zsh-syntax-highlighting
# 6- tmux plugin manager (tpm)
# 7- copy FontUsed to ~/.fonts   

# FROM AUR (YAY) INSTALL i3lock
yay -S i3lock-color
