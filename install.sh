

# Instalar dependendecias (esto desde chmod)
sudo pacman -S lightdm lightdm-gtk-greeter qtile xterm 

#activar lightdm para ver la interfaz y reiniciar
sudo systemctl enable lightdm
reboot

#luego de salirse y ya haber iniciado session
# Instala otro de tu preferencia
sudo pacman -S alacritty
sudo pacman -S rofi


sudo pacman -S which #no se pa que es esto xd


sudo pacman -S feh
# Para cambiar fondo de pantalla: feh --bg-scale ruta/al/fondo/de/pantalla


#Fuentes
sudo pacman -S ttf-dejavu ttf-liberation noto-fonts

#audio
sudo pacman -S pulseaudio pavucontrol


#brillo del portatil
sudo pacman -S brightnessctl


#Para temas de multiples displays
sudo pacman -S ranger


#Almacenamiento
sudo pacman -S udiskie ntfs-3g

#redes
sudo pacman -S network-manager-applet

#Notificaciones
sudo pacman -S libnotify notification-daemon

#instalar paquete para cargar cosas al inicio
sudo pacman -S xorg-xinit


#Instalar yay
sudo pacman -S base-devel git
cd /opt/
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R username:username yay-git/
cd yay-git
makepkg -si

# Para ver usb conctadas
sudo pacman -S libmtp
yay -S simple-mtpfs

# Lista todos los dispositivos conectados
# simple-mtpfs -l


# Explorador de archivo grafico
sudo pacman -S thunar 
#Exolorador de archivos de la terminal
sudo pacman -S ranger


# No usar rm y tener una pelera
sudo pacman -S glib2 gvfs

# Uso
# gio trash path/to/file
# Vaciar papelera
# gio trash --empty


#tools
sudo pacman -S unzip


#Hacer esto para los themas:
# Asumiendo que has descargado Material-Black-Blueberry
cd Downloads/
sudo pacman -S unzip
unzip Material-Black-Blueberry.zip
unzip Material-Black-Blueberry-Suru.zip
rm Material-Black*.zip

# Haz tu tema visible a GTK
sudo mv Material-Black-Blueberry /usr/share/themes
sudo mv Material-Black-Blueberry-Suru /usr/share/icons



# Para cambiar el cursor
sudo pacman -S xcb-util-cursor
cd Downloads/
tar -xf Breeze.tar.gz
sudo mv Breeze /usr/share/icons


# Edita /usr/share/icons/default/index.theme añadiendo esto:

# [Icon Theme]
# Inherits = Breeze

# Ahora vuelve a editar ~/.gtkrc-2.0 y ~/.config/gtk-3.0/settings.ini:
# ~/.gtkrc-2.0
# gtk-cursor-theme-name = "Breeze"

# ~/.config/gtk-3.0/settings.ini
# gtk-cursor-theme-name = Breeze

# Asegurate de escribir bien los nombres de los temas e iconos, deben ser exactamente los nombres de los directorios donde se encuentran, los que ofrece esta salida:
# ls /usr/share/themes
# ls /usr/share/icons

# no se
sudo pacman -S picom


#Los temas de GTK no se aplican a programas Qt, pero puedes usar Kvantum para cambiar los temas por defecto:
sudo pacman -S kvantum-qt5
echo "export QT_STYLE_OVERRIDE=kvantum" >> ~/.profile


# Tema de ligthdm (lo del inicio de session creo)
sudo pacman -S lightdm-webkit2-greeter
yay -S lightdm-webkit-theme-aether

# /etc/lightdm/lightdm.conf
# [Seat:*]
# ...
# Descomenta esta línea y pon este valor
# greeter-session = lightdm-webkit2-greeter
# ...

# /etc/lightdm/lightdm-webkit2-greeter.conf
# [greeter]
# ...
# webkit_theme = lightdm-webkit-theme-aether


# multimedia

#imagenes
sudo pacman -S geeqie

# video y audio
sudo pacman -S vlc