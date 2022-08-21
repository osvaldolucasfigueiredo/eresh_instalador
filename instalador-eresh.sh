sudo apt -y install python3 pip

#Suporte a flatpak
sudo apt update
sudo apt -y install flatpak software-properties-common
sudo add-apt-repository ppa:alexlarsson/flatpak 
sudo apt update
sudo apt install --install-recomends flatpak
flatpak remote-add gnome https://sdk.gnome.org/gnome.flatpakrepo

#Suporte a Snap
sudo apt update
sudo apt -y install snapd
sudo snap install core

#Suport wget
sudo apt -y install wget

#Interface KDE Plasma
sudo apt -y install kde-plasma-desktop

#LUA
sudo apt -y install lua5.3

#konsole dolphin e Kate
sudo apt -y install konsole
sudo apt -y install Kate
sudo apt -y install dolphin


#instalador Vivaldi
wget https://downloads.vivaldi.com/stable/vivaldi-stable_5.4.2753.37-1_amd64.deb
sudo dpkg -i ./vivaldi-stable_5.4.2753.37-1_amd64.deb
chmod +x vivaldi-stable_5.4.2753.37-1_amd64.deb
sudo dpkg -i ./vivaldi-stable_5.4.2753.37-1_amd64.deb

#Instalador Inkscape
sudo add-apt-repository ppa:inkscape.dev/stable
sudo apt update
sudo apt install inkscape

#instalador vlc
sudo apt-get install ffmpeg
sudo apt install vlc

#instalador Obsidian
flatpak install flathub md.obsidian.Obsidian

#instalador Chromiun
flatpak install flathub org.chromium.Chromium

#motrix
flatpak install flathub net.agalwood.Motrix

#qbittorrent
flatpak install flathub org.qbittorrent.qBittorrent

#discord
flatpak install flathub com.discordapp.Discord

#Instalador Beekeeper Studio
sudo snap install beekeeper-studio

#instalador VS Code
sudo snap install code --classic

#Instalador Beekeeper Studio
sudo snap install beekeeper-studio












#Atualizar Kernel para 5.19.2
sudo wget -O linux-headers-amd64.deb https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.19.2/amd64/linux-headers-5.19.2-051902-generic_5.19.2-051902.202208171037_amd64.deb
sudo wget -O linux-headers-all.deb https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.19.2/amd64/linux-headers-5.19.2-051902_5.19.2-051902.202208171037_all.deb
sudo wget -O linux-image-unsigned.deb https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.19.2/amd64/linux-image-unsigned-5.19.2-051902-generic_5.19.2-051902.202208171037_amd64.deb
sudo wget -O linux-modules.deb https://kernel.ubuntu.com/~kernel-ppa/mainline/v5.19.2/amd64/linux-modules-5.19.2-051902-generic_5.19.2-051902.202208171037_amd64.deb

sudo dpkg -i ./linux-*.deb

wget http://gnu.mirrors.hoobly.com/libc/glibc-2.36.tar.gz

wget https://www.openssl.org/source/openssl-3.0.5.tar.gz