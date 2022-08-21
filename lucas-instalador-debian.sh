#!/bin/bash
echo "Bem vindo ao instalador"
echo "Carregando Lista"

echo "instalando repositorios"

echo "deb http://download.opensuse.org/repositories/home:/strycore/Debian_11/ ./" | sudo tee /etc/apt/sources.list.d/lutris.list
wget -q https://download.opensuse.org/repositories/home:/strycore/Debian_11/Release.key -O- | sudo tee /etc/apt/trusted.gpg.d/lutris.asc -
sudo add-apt-repository ppa:lutris-team/lutris
sudo apt update

echo "Instalando Frameworks"

#Node.js
sudo apt install nodejs
sudo apt install npm

#Node-red
sudo snap install node-red

#NET Framework
wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y dotnet-sdk-6.0
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y aspnetcore-runtime-6.0

#LUA
sudo apt install lua5.3

#Ruby
sudo apt install ruby

#Julia
sudo apt install julia

#Python
sudo apt install python3
sudo apt install pip



echo "instalado programas de execucao nativa"

#instalador Flameshot
sudo apt install flameshot

#Instalador Libreoffice
sudo apt install libreoffice

#instalador Vivaldi
wget https://downloads.vivaldi.com/stable/vivaldi-stable_5.4.2753.37-1_amd64.deb
sudo dpkg -i ./vivaldi-stable_5.4.2753.37-1_amd64.deb

#instalador Krita
sudo apt install krita

#instalador Inkscape
sudo apt install inkscape

#instalador GIMP
sudo apt install gimp

#instalador darktable
sudo apt install darktable

#instalador godot3
sudo apt install godot3

#instalador blender
sudo apt install blender

#instalador audacity
sudo apt install audacity

#instalador pulse effects
sudo apt install pulseaudio
sudo apt install pulseeffects

#instalador mixxx
sudo apt install mixxx

#instalador vlc
sudo apt-get install ffmpeg
sudo apt install vlc

#instalador winff
sudo apt install winff

#instalar obs-studio
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt-get update && sudo apt-get install obs-studio

#kdenlive
sudo apt install kdenlive

#dolphin
sudo apt install dolphin

#lutris
sudo apt install lutris

echo "instalando suporte a flatpak"
sudo apt update
sudo apt install flatpak
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt update
sudo apt install --install-recomends flatpak
flatpak remote-add gnome https://sdk.gnome.org/gnome.flatpakrepo

echo "instalando programas flatpak"

#Instalador Newsflash
flatpak install flathub com.gitlab.newsflash

#Instalador Zotero
flatpak install flathub org.zotero.Zotero

#Instalador Slack
flatpak install flathub com.slack.Slack

#instalador Obsidian
flatpak install flathub md.obsidian.Obsidian

#instalador Chromiun
flatpak install flathub org.chromium.Chromium

#instalador SweetHome3D
flatpak install flathub com.sweethome3d.Sweethome3d

#instalador Geogebra
flatpak install flathub org.geogebra.GeoGebra

#instalador LibreSprite
flatpak install flathub com.github.libresprite.LibreSprite

#instalador fontfinder
flatpak install flathub io.github.mmstick.FontFinder

#instalador opentooz
flatpak install flathub io.github.OpenToonz

#instalador ffaudioconverter
flatpak install flathub com.github.Bleuzen.FFaudioConverter

#instalador easytag
flatpak install flathub org.gnome.EasyTAG

#instalador natron
flatpak install flathub fr.natron.Natron

#barrier
flatpak install flathub com.github.debauchee.barrier

#barrier
flatpak install flathub com.getpostman.Postman

#duolingo
flatpak install flathub ro.go.hmlendea.DL-Desktop

#motrix
flatpak install flathub net.agalwood.Motrix

#qbittorrent
flatpak install flathub org.qbittorrent.qBittorrent

#discord
flatpak install flathub com.discordapp.Discord

#Heroic Games
flatpak install flathub com.heroicgameslauncher.hgl

#Lutris

#Steam
flatpak install flathub com.valvesoftware.Steam


echo "instalando suporte a snap"
sudo apt update
sudo apt install snapd
sudo snap install core

echo "instalando programas snap"

#instalador VS Code
sudo snap install code --classic

#Instalador Beekeeper Studio
sudo snap install beekeeper-studio

#Polar
sudo snap install polar-bookshelf

echo "atualizando lista"
sudo apt update
sudo apt upgrade
