


# -- Fechas
#Dice la fecha
	date
date --set "2019-11-31 15:20"

# -- Como saber en que directorio Estas
pwd

# -- Remonbrar archivo
mv nobre_antiguo nuevo_nombre

# -- Copiar Directorios
cp -r "Directorio a copiar" "Directorio Destino"

# -- Crear Directorio
mkdir "Directorio a crear"

# -- Descargar paquetes
wget URL

# -- Eliminar Directorio
rm -r Directorio

# -- Comando instlar deb
dpkg -i

# -- Para reparar alguna instlacion (guscar mas informacion)
apt -f install #Ver la diferencia con apt-get install -f

# -- Para entrar en escritorio de windows
xfreerdp /u:administrador /p:spudla.1 /w:1280 /h:720 /v:192.168.1.3


# -- Para borrar un pakete travado
sudo  dpkg --remove --force-remove-reinstreq *

# -- Como saber que vercion de kali tengo instlada
lsb_release -a

# -- Para Reparar cuando no puede acutalizar hay que
# modificar /etc/apt/sources.list
#	Repocitorio Regular
deb http://http.kali.org/kali kali-rolling main non-free contrib
#	En caso de que necesite paquetes de origen,
deb-src http://http.kali.org/kali kali-rolling main non-free contrib


# -- Instlar pquetes *.c
#	Primero que todo, es necesario instalar el metapaquete build-essential, así:
sudo apt-get install build-essential # Una sola ves

gcc fuente.c -o ejecutable
./ejecutable (en Ubuntu)


# -- Instlar Gestor de paketes Synaptic
apt-get install synaptic

# -- Instlar ATOM
wget https://atom.io/download/deb -O atom.deb
sudo dpkg -i atom.deb


# -- Instalar GImp
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt update
sudo apt install gimp


# -- Descomprimir Archivos
tar -zxvf nombredelarchivo.tar.gz
tar -jxvf nombredelarchivo.tar.bz2

# -- Insalacion De VMware (Rutoa de tutorial) https://www.youtube.com/watch?v=7k9nNnpMQD4

# Descarge el instlador para linux de https://www.sysnettechsolutions.com/en/vmware/download-vmware-workstation/
# VMware-Workstation-Full-15.1.0-13591040.x86_64.bundle

# Asegurese que los repocitorios siguientes se encuentren en /etc/apt/sources.list
# deb http://http.kali.org/kali kali-rolling main non-free contrib
# deb-src http://http.kali.org/kali kali-rolling main non-free contrib

# Actualize Kali
apt-get update

# Instlar paquetes dependientes para VMware
apt-get install dpkms build-essential

# Valla a la ruta del archivo VMware-Workstation-Full-15.1.0-13591040.x86_64.bundle

# Ejecute el comando dhmod +x para hacer de VMware---.bundle ejecutalbe
chmod +x VMware-Workstation-Full-15.1.0-13591040.x86_64.bundle

#luego ejecutelo
/.VMware-Workstation-Full-15.1.0-13591040.x86_64.bundle


# una ves instlado agrege una de las seriales que se encuentran debajo

#Seriales
#Last tested: Works
# CU7J2-4KG8J-489TY-X6XGX-MAUX2
# FY780-64E90-0845Z-1DWQ9-XPRC0
# AA3DH-0PYD1-0803P-X4Z7V-PGHR4
# UF312-07W82-H89XZ-7FPGE-XUH80


#-- Instalar GNS3 en kali linux
# Origen https://www.youtube.com/watch?v=nKA_2Jdgcyo


#-- Crear un USB de Kali
# IDENTIFICA EL USB
fdisk -l

dd if=/media/root/UUI1/Pendriver/Herramienta booteable/Kali LInux/kali-linux-2019.2-amd64.iso of=/dev/sdf bs=512k


# -- Instalr programa  para grabar CD
sudo apt-get install brasero
sudo apt-get update
sudo apt-get upgrade

# -- Instlar Google chrome
apt-get update
dpkg -i #el archivo deb bajado de la pagina oficial
apt-get install -f #ni idea para que
nano /opt/google/chrome/google-chrome
# Remplazar la linea
# exec -a "$0" "$HERE/chrome" "$@"
# Por
# exec -a "$0" "$HERE/chrome" "$@" --no-sandbox

# -- Instlar pquetes AppImagen
# Dalre al paquete permisos de ejecucion
chmod a+x
./
