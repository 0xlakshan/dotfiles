#!/bin/bash

mkdir -p ~/.local/share/applications
mkdir -p ~/.config/neofetch

cp ./linux/launch.sh ~/
cp ./linux/launch.desktop ~/.local/share/applications/

cp ./neofetch/logo.txt ~/
cp ./neofetch/config.conf ~/.config/neofetch/

cp ./ghostty ~/.config/ghostty
