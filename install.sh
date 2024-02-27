#!/bin/bash

# Actualiza el sistema 

sudo dnf update
sudo dnf upgrade

# Instalar openbox y algunas herramientas
sudo dnf install openbox.x86_64 openbox-theme-mistral-thin.noarch  openbox-theme-mistral-thin-dark.noarch obconf.x86_64 obconf-qt.x86_64
sudo dnf install tint2 feh jgmenu rofi lxappearance picom thunar neovim wget kitty thunar-archive-plugin firefox
sudo dnf install gnome-shell-extension-dash-to-dock 
 
# Instalar y habilitar slim display manager
# crear directorio de configuracion si no existe 
mkdir -p ~/.config/openbox

# Descargar archivos de configuracion
 wget -O ~/.config/openbox/rc.xml https://raw.githubusercontent.com/danakj/openbox/master/rc.xml
 wget -O ~/.config/openbox/autostart https://raw.githubusercontent.com/danakj/openbox/master/autostart

 # Descargar el archivo de menu prederteminado
 wget -O ~/.config/openbox/menu.xml https://raw.githubusercontent.com/danakj/openbox/master/menu.xml

# descargar fuentes
sudo dnf install fonts-awesome  

# extras
sudo dnf install pavucontrol flameshot obs gsimplecal volumeicon i3lock oblogout file-roller zip unzip dunst
