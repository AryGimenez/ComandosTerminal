# -- Fechas
mo#Dice la fecha
date # muestra fecha actual
date --set "2019-11-31 15:20" # modifica fecha actualice

# -- Apagar en 30 m
sudo shutdown -h +30

sudo shutdown now # apaga en el movimiento

sudo sutdown -r  # <F> Reinicia el sistema operativo


#-- Crear un USB de instalacion linux
# IDENTIFICA EL USB
fdisk -l

dd if=Linux.iso of=/dev/sdf bs=512k

# no lo entendi bien    <?>
diff #-- aca lo esplica https://linuxize.com/post/diff-command-in-linux/
diff #-- me surgio por la siguiete lina  diff -qr ./x ./y | awk '{print $2}' | xargs -n1 -J% cp % ./y/ que encontre https://unix.stackexchange.com/questions/29845/how-can-i-do-a-copy-if-changed-operation NO ME QUEDO CLARO !

#-- Crear Servidor NginExt con sertificado SSL <PEL-N>

# -- Para entrar en escritorio de windows
xfreerdp /u:administrador /p:spudla.1 /w:1280 /h:720 /v:192.168.1.3

# -- Para borrar un pakete travado
sudo  dpkg --remove --force-remove-reinstreq * # <ubuntu>


# -- Comando instlar deb
dpkg -i #  <ubuntu>

# -- Como saber que vercion de kali tengo instlada
lsb_release -a # <Kali>


# -- Para Reparar cuando no puede acutalizar hay que <kali>
# modificar /etc/apt/sources.list
#	Repocitorio Regular
deb http://http.kali.org/kali kali-rolling main non-free contrib
#	En caso de que necesite paquetes de origen,
deb-src http://http.kali.org/kali kali-rolling main non-free contrib


# -- Para reparar alguna instlacion (guscar mas informacion)
apt -f install # <ubuntu> Ver la diferencia con apt-get install -f


#-- Eliminar archivos
rm 'Nombre del archivo'
rm -r 'Nombre del directorio'
rm -f 'si utiliza el operador -f fuersa la eliminacion sin pregunar'

# -- Reparar Particiones NTFS desde Terminal Con ntfs-3g y ntfsprogs
# Esto no es tan poderoso como check	k pero es una alternativa en linux
sudo yum -y install ntfs-3g # -- Instalar ntfs-3g
yum -y install ntfsprogs # -- ntfsprogs


ntfsfix /dev/sda4 # - Metodo para repararparticion <?>

ntfsresize -i -f -v /dev/sda4 # - Metodo para repara particiones <?>

# -- Crear una unidad usb de instalacion de fedora USB
yum install liveusb-creator # Instla el en el entorno grafico para crear usb booteable Fedora

# -- Repara Disco mediante FSCK https://www.solvetic.com/tutoriales/article/6126-comando-fsck-linux-para-reparar-error-sistema-de-archivos/
sudo fsck /dev/sda

#-- Reparar particiones ntfs - https://blog.desdelinux.net/reparar-sectores-recuperar-hdd-linux/

sudo badblocks -s -v -f /dev/sdb

# -- Instalar Temux https://www.hostinger.es/tutoriales/usar-tmux-cheat-sheet
sudo dnf -y install  tmux # - <Fedora>

sudp apt install tmux

# -- Ve la vercion de Temux
tmux -v

# -- Partir a la mitad
# CTR+B "

# -- Crea Bentana nueva
# CTR+B C

# -- Cambia a Ventana Siguiente
# CTR+B N

# -- Cambia a Venta Anterior
# CTR+B P

## -- Camtia a venta segun Numero
# CTR+B Numero

# -- Cierra venta acutal
# CTR+B &


# -- Abrir archivo SublimeText
	subl Nombre-De-Archivo

#-- Instalar Terminator Una terminal que te permite devidir la ventana en varaias
	sudo dnf install terminator

#-- Saber Tamaño de un directorio
	du -sh directorio/ # Te da el tamaño del directorio en GB Sialido 20G	Directorio

#-- Instalar Inskape
	sudo dnf install inksacpe

# -- Instalr Google Chrome
	sudo dnf install fedora-workstation-repositories
	sudo dnf config-manager --set-enabled google-chrome0

#-- ver la informacion del sistema
	hostnamectl

#-- Empaquetacion *.tar https://blog.desdelinux.net/con-el-terminal-comprimir-descomprimir-archivos/
tar -cvf archivo.tar # - empaquetar
tar tar xvf arcivo.Tar # - desemaquetar
tar -tf archivo.tar # - Ver archivo

# -- Empaquetacion *.zip https://blog.desdelinux.net/con-el-terminal-comprimir-descomprimir-archivos/
zip arcivo.zip fichero
unzip arcivo.zip
unzip -v arcivo.unzip

# -- Actualizar Fedor | Informacion: https://yourgeekweb.com/es/2019/03/24/como-actualizar-fedora-desde-la-terminal/
# - Para instlar todas las actualizaciones
	sudo dnf upgrade --refresh
# - Instala el plugin de actualización
	sudo dnf install dnf-plugin-system-upgrade

# -- Instalar Virutal Box
sudo dnf -y install @development-tools

sudo dnf -y install kernel-headers kernel-devel dkms elfutils-libelf-devel qt5-qtx11extras

sudo dnf search virtualbox

sudo dnf install VirtualBox


# -- Instlacion de Visual Studio Code / Nodejs
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

# Luego actualice el caché del paquete e instálelo usando dnf (Fedora 22 y superior):
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf check-update
sudo dnf install code # O en versiones anteriores que usan yum:

yum check-update # S
sudo yum install code # <?>

# <?>
dnf system-upgrade download --releasever=29



# -- Muestra el directorio actual
pwd

# -- Instalar GParted
su -c "yum install gparted" -Teine que tener la terminal permisos de administrador (sudo su)

# Mover archivo (Ten en cuenta que es el mismo comando que se usa para
# 		lo unico que no se cambia la ruta)
mv Archivo\ Origen Archivo\ Destino

# Copiar Archivos
cp archivo.txt /Directorio
cp -r -v archivo.txt /Directorio # -r Copiar directorio -v ver movimiento de archivos
cp -a # <?> Creo que suma algunos argumentos como -r

# --Ve el contenido de el dicrectiorio acutal
ls
ls -l Se # musetra los archivos en una lista \Fecha modificacion\
ls -a # Muestra todos los archivos ocultos
ls -h # Muestra el peso de los archivos en formatio umano no en SublimeText
ls -lah # todo lo de arriba


# Muestra el contenido de un archivos
ll

# -- Crear Directorio
mkdir Nombre\ de\ Directorio

# -- Ver El tomaño total de un directorio en el  curo
du -sh Directorio/

# -- Ver los discos instalado en el sistema
fdisk -l

# -- Descargar paquetes
wget URL # <ubuntu>

# -- Ver el estado de el  disco <?>
#  Al parecer lo tiene que estar la opcion S M A R T  desde la biso par apoder usarlo https://computernewage.com/2015/03/14/como-detectar-errores-y-comprobar-el-estado-de-salud-de-tu-disco-duro-en-linux/



# -- Instalacion jdk en Fedroa 31
#    https://blog.desdelinux.net/java-dos-formas-diferentes-de-instalarlo-en-fedora-31/
java --version # saber si tengo java instalados
sudo dnf search openjdk # instalamos OupenJDK

sudo dnf install java-11-openjdk # instalamos java 11
# o
sudo dnf install java-1.8.0-openjdk # instalamos java 8




# -- Saber vercion de Fedora actual
#	-- Saber la Vercion del kernel acual
	uname -r

# -- Abilitar Himbernacion Suspencion <Fedora> https://blog.desdelinux.net/como-hibernar-o-suspender-mediante-comandos-en-la-terminal/
cat /sys/power/state # Nos dice si nuestro ordenador nos permitira himbernar o suspender  «mem» Se puede suspender «disk» se puede himbernar
sudo pm-suspend # para suspender
sudo pm-hibernate # Para himbernar

sudo pm-suspend-hybrid # ambos





# -- Para saber l qrquitectura (x86-64)
	uname -m
	Uname -a

# -- Montar Unidades NTFS Windows cuando no deja por himbernaion
sudo ntfsfix /dev/sdb3
# - esta opcion es mas imbasiba
sudo mount -t ntfs-3g -o remove_hiberfile /dev/sda2 /media/Destino/


# -- Montar una particion
mkdir /media/Directorio\ a\ Montr -- Crea un directoprio en media para montar la particion

mount /dev/sdb1 /media/Directorio --

# -- Desmontar una partincion
umount /media/Particion_A_Desmontar

# -- Muestra la informacion de la red
ifconfig

sudo apt install net-tools # <Ubuntu> Si no anda te instala los paquetes necesarios

# -- Instalar RPM
sudo rpm -ifh *-rpm

# -- Desifrar Password WIFI WPA - WPA2 con aircrack-ng
# https://www.agix.com.au/cracking-wifi-with-aircrack-ng-fedora-centos-rhel/
# https://www.aircrack-ng.org/doku.php?id=es:cracking_wpa
yum install aircrack-ng # <ReadHost> Instalar


ifconfig wlp0s20f3 down
airmon-ng stop wlp020f3 d
airodump-ng wlp0s20f3 # monitoriza Red inalambrica

airodump-ng wlp0s20f3 -c 11 --essid MYWIFI -w psk
