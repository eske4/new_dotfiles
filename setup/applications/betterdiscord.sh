#!/bin/bash
echo 1 | yay -S --noconfirm betterdiscord
yay -S --noconfirm betterdiscordctl
betterdiscordctl -D /opt/BetterDiscord install
