sudo pacman -S lxappearance picom nitrogen rofi chromium polybar neovim zsh lightdm lightdm-slick-greeter nodejs npm ntfs-3g docker docker-compose nautilus alsa-utils alsa-plugins alsa-lib alsa-firmware unzip

# ENABLE LIGHTDM ON START AND UPDATE GRETTER
sudo systemctl enable lightdm.service

# -- sudo vim /etc/lightdm/lightdm.conf

# MAKE DOCKER RUN WITHOUT SUDO
sudo usermod -aG docker $USER

# IF GPU IS NVIDIA
sudo pacman -S nvidia nvidia-utils nvidia-settings

# VIDEO AUDIO CODECS
sudo pacman -S a52dec faac faad2 flac jasper lame libdca libdv libmad libmpeg2 libtheora libvorbis libxv wavpack x264 xvidcore vlc

# STEPS
# 1- INSTALL YAY AND SNAPD
# 2- OH-MY-ZSH
# 3- Powerlevel10k
# 4- zsh-autosuggestions
# 5- zsh-syntax-highlighting

# FROM AUR (YAY) INSTALL i3lock
yay -S i3lock-color
