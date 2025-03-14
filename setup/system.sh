#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

bash "$SCRIPT_DIR/tools/install_packages.sh" yay "$SCRIPT_DIR/packages/system_packages.txt"
bash "$SCRIPT_DIR/system/network.sh"
bash "$SCRIPT_DIR/system/configure_sddm.sh"

mkdir "$HOME"/Downloads
mkdir "$HOME"/Documents
mkdir "$HOME"/Applications

# Setup audio drivers

# Disable PulseAudio ensuring it uses PipeWire

sudo systemctl stop pulseaudio.service
sudo systemctl disable pulseaudio.service
sudo systemctl mask pulseaudio.service

systemctl --user disable pulseaudio pulseaudio.socket

# Setup PipeWire service

systemctl --user enable pipewire
systemctl --user enable pipewire-pulse
systemctl --user enable wireplumber

# Bluetooth drivers
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

# Audio player
sudo usermod -a -G input "$USER"
echo -e "Added user to input group\e[0m"

sudo systemctl enable mpd
echo -e "Added mdp to system\e[0m"

echo -e "Enabled sddm"
sudo systemctl enable sddm

# Switch shell to zsh
chsh -s "$(which zsh)"
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1
sudo rm -f "$HOME/.zshrc"
