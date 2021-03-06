#!/bin/bash

sudo su &&
apt update &&

## install via apt ##

apt install gnome-tweaks code caffeine -y &&
apt update

## install via flatpak ##

flatpak install flathub com.axosoft.GitKraken
flatpak install flathub org.qbittorrent.qBittorrent
flatpak install flathub com.spotify.Client

## brave-browser ##

sudo apt install apt-transport-https curl &&
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add - &&
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list &&
sudo apt update &&
sudo apt install brave-browser -y &&

## finish and clean ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

echo "Pronto!"
