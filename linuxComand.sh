
# -------------------------------<<LINUX>>-------------------------------------


# -- Me perite escribir de forma bonita <F>
figlet "Mensaje bonito"

#-- Fechas
#Dice la fecha

#  Determinación de si un host remoto está accesible
ping hostname  # <?>  En mi server no me anduvo


# -- Instalar sudo  <Debian> https://profesorweb.es/2017/03/instalar-sudo-en-debian/
apt-get install sudo
vim /etc/sudoers
tu_usuario ALL=(ALL) ALL # <F> Modificar el archivo y agregar la linea
# debajko de
  #User privilege specification
  root ALL=(ALL) ALL


# -- Activar el esritorio <Ubuntu-Server> https://www.solvetic.com/tutoriales/article/9231-como-instalar-interfaz-grafica-en-ubuntu-server-21-04-escritorio/
lsb_release -a # comprobar vercion ubuntu
sudo apt update
sudo apt upgrade
sudo apt install tasksel
sudo tasksel # accedemos a tasksel
# Desntro de las opciones seleccionamos el escritorio que deseamos


# -- Eliminar esritorio
sudo apt-get purge ubuntu-desktop
sudo apt-get purge ubuntu-desktop-minim
sudo apt-get remov genome-*
apt-get autoremove

date # muestra fecha actual
date --set "2019-11-31 15:20" # modifica fecha actualice
# -- Apagar en 30 m
sudo shutdown -h +30

# -- Sierra cesion <Ubuntu>
gnome-session-quit

# -- <F> Para contectarme por ssh
ssh ary@<IP/HOST>

# -- editar Repositorio
sudo vim /etc/apt/sources.list

# -- Agrega Repositorio
sudo add-apt-repository ppa:webupd8team/atom

# -- Remueve Repositorio
sudo add-apt-repository --remove ppa:webupd8team/atom

# -- Instala ssh
sudo apt install ssh <Ubuntu>

# -- Muestra estado de ssh
systemctl status ssh.service

sudo shutdown now # apaga en el movimiento

sudo sutdown -r  # <F> Reinicia el sistema operativo

# -- Escanea los puertos abiertos de un Host o IP Los escanea por TCP o UDB
sudo nmap -s<U/T> -O Ip/<IP/Host>

# -- <?>
sudo lsof -i -P -n # <?> Se que escanea puertos pero no me quedo claro porque entrega mucha informacion https://ubunlog.com/como-comprobar-los-puertos-en-uso-en-linux/

# -- <?>
netstat -putona | grep numero-de-puerto # <?> Se que escanea puertos No lo mire lo saque https://ubunlog.com/como-comprobar-los-puertos-en-uso-en-linux/

#-- Crear un USB de instalacion linux
# IDENTIFICA EL USB
fdisk -l
dd if=Linux.iso of=/dev/sdf bs=512k




# no lo entendi bien    <?>
diff #-- aca lo esplica https://linuxize.com/post/diff-command-in-linux/
diff #-- me surgio por la siguiete lina  diff -qr ./x ./y | awk '{print $2}' | xargs -n1 -J% cp % ./y/ que encontre https://unix.stackexchange.com/questions/29845/how-can-i-do-a-copy-if-changed-operation NO ME QUEDO CLARO !

# --  Instalar WinBox
# <Ubuntu> https://snapcraft.io/install/winbox/ubuntu#install
sudo apt update
sudo apt install snapd
sudo snap install winbox

# -- Para entrar en escritorio de windows
xfreerdp /u:administrador /p:spudla.1 /w:1280 /h:720 /v:192.168.1.3

# -- Para borrar un pakete travado
sudo  dpkg --remove --force-remove-reinstreq * # <ubuntu>

# -- Instalr archivos deb
sudo dpkg -i archivo.deb # <Ubuntu>


# -- Instalar Visual Studio Code <F>
sudo snap install --classic code # <Ubuntu> https://ubunlog.com/visual-studio-code-editor-codigo-abierto-ubuntu-20-04/


# -- Instalar archivos *.run <F>
sudo chmod +x  # Creo que le da pemiso de ejecucion
./archivo.run


# -- Como saber que vercion de kali tengo instlada
lsb_release -a # <Kali>


# -- Para Reparar cuando no puede acutalizar hay que <kali>
# modificar /etc/apt/sources.list
#	Repocitorio Regular
deb http://http.kali.org/kali kali-rolling main non-free contrib
#	En caso de que necesite paquetes de origen,
deb-src http://http.kali.org/kali kali-rolling main non-free contrib


 Para reparar alguna instlacion (guscar mas informacion)
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

# -- Instalar  Tor Browser Navegador DarWeb
sudo add-apt-repository universe && sudo apt update
sudo apt install torbrowser-launcher

# -- Repara Disco mediante FSCK https://www.solvetic.com/tutoriales/article/6126-comando-fsck-linux-para-reparar-error-sistema-de-archivos/
sudo fsck /dev/sda

#-- Reparar particiones ntfs - https://blog.desdelinux.net/reparar-sectores-recuperar-hdd-linux/

sudo badblocks -s -v -f /dev/sdb




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
sudo dnf install code # O en es anteriores que usan yum:

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
java -- # saber si tengo java instalados
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

# -- Desconecta una interfas de red

ifconfig "INTERFACE" down

# -- Conecta la interfase
ifconfig "INTERFACE" start

# -- Cambiar ip 
ifconfig "INTERFACE" "IP" netmask 255.255.255.0 




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

# -------------------------------<<TEMUX>>-------------------------------------

# -- Instalar Temux https://www.hostinger.es/tutoriales/usar-tmux-cheat-sheet
sudo dnf -y install  tmux # - <Fedora>

sudp apt install tmux

# -- Ve la vercion de Temux
tmux -v

# -- Dividir pantalla Verticalmente
#  CTR+B "

# -- Dividir pantalla horizontalmente  <F>
CTB+B %

# --  Se mueve verticalmente por la terminal
# CTB+B [

# -- Crea Bentana nueva
CTR+B c

 # -- Cierra la venta acutal
 CTR+B &

 # -- Cambia el nombre de la bentan
 CTB+B ,
 # -- Cambia a Ventana Siguiente
 CTR+B n

 # -- Cambia a Venta Anterior
 CTR+B p

 ## -- Camtia a venta segun Numero
 CTR+B NUM

 # --
 CTB+B

 # --
 CTB+B


# -------------------------------<<DOCKER>>-------------------------------------

# -- Laboratorio de docker web
https://labs.play-with-docker.com/

# -- Instalacion Doker en Ubuntu  https://docs.docker.com/engine/install/ubuntu/
  # Elimina verciones enteriores
  sudo apt-get remove docker docker-engine docker.io containerd runc

  sudo apt-get update

  # -- sUSOAO 
  sudo apt-get install \
      apt-transport-https \
      ca-certificates \
      curl \
      gnupg-agent \
      software-properties-common


# -- Instalar dorke fedora 31


#    <PROBAR>
    # -- Instalar nginex
      apt-get install nginx #-- Debian Ubuntu
      cd /etc/nginx # Dirigirme archivo configuracines
      cp default domino.nuevo # copiamos el archivo devault
      vim dominio.nuevo
      # dentro de el archivo modificiamos root y le agregamos el dierectorio deonde se
      # encuentra nuestro sitio web seria algo como /var/www/html/dominio_nuevo;
      # ademas modificacmos server_name domino.nuevo
      vim sites-avilable

# -- Iniciar nginex en dentro de un Docker

# crearmos un dirietorio donde fa a contoner el archivo
vim docker-compose.yaml  # creamos el archivo yaml
docker-compose up -d


# -- Ejecuta un contenedor y asigna un nombre
docker run -d --name NuevoNombreContenedor imagen # <?> -d no se lo que es


# Agregue la clave GPG oficial de Docker:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -



# Verifique clave de huella digital
sudo apt-key fingerprint 0EBFCD88

# Configurar repocitorio estable
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# -- Ver que vercion de docker esta instalado
docker --version

# -- Ver mas informacion de docker
docker info

# -- ejecuta una imagen de contenedor
docker run "imagen"

# -- Ejecuta la imagen y entra a el contenedor
docker run -it Imagen


# -- Meterme en un contenedor correindo
docker exec -it "Container Id" sh

# -- Salir Contenedor <F>
exit


# -- Crea una imagen de un contenedor
docker commit id

# -- Crear DockerFil: Es un conjunto de instrucciones que seirve
#    para crear imagenes

vim dockerfile

# -- Creamos una imagen vasada en el Dockerfile
docker build -t NombreImagen:v1

# -- docker tagear esto se usa normalmente par colocar verciones
docker image tag "id" "name" # Si agregamos agrega el tag:1.0

# -- ve el istroiral de los comandos corridos en la imagen
docker image history "id"


# -- Ve las imagenes en el sistema
docker image ls # si le agregamos |head muestra las primeras 10

# -- baja la imagen de DokckerHab
docker pull "imagen" # si agregamos :1.0 baja la vercion 1.0


# -- Mostrar o ver los contenedores
docker ps # los que estan en ejecucion acutalmente
docker ps -a # Los que ya no estan en uso
docker ps -a | head # Los ultimos 10 que ya no estan en uso


# -- Mostrar informacion de el contenedor
docker inspect id-o-namber
docker inspect --format '{{.stat.Pid}}' id-o-namber # <?> Filtra dentro de la salida que entrega en la salida jeison

# -- Eliminar el docker segun el id
docker rm id

#-- elimina el contenedor con el Name
docker rm -f Name

# -- Elimina todos los contenedores de el sistema
docker system prune
# -- Para eliminar adicionalmente los contenedores detenidos y todas
#  las imágenes no utilizadas (no solo aquellas pendientes), \
#  añada el indicador -a al comando:
docker system prune -a


# -- Doker en web pra purebas


# -- Le asigna nombre al contenedor H
docker --rename imagen nuevo-Nombre #-?

# -- Utiizar valid mount para Espejar un directorio dentro de el contenedor y scarlo para afuera
# para percistir los datos cuando el contenedor muera
 docker run -d --name db -v /DirectorioeEnMiPc:/DirectorioEnContenedor imagen




# -- Renombrar un contenedor
docker renombrar names-Anterior names-Nuevo  #-?



# -- Muestra los volumenes que se encuentran en docker
docker volume ls

# -- Crear un volumen
docker volume create NombreDeVolumen


# -- Montar volumen a imagen
docker run -d --name NombreImagenAsignado --mount src=Voumen,dst=RutaDeContendeor Imagen


# -- Copiar archivo dentro de el contenedor
docker cp ArchivoACopiarODirectorio Contendedor:Directorio/NombreArchivo







# -------------------------------<<GIT>>-------------------------------------




# -- Muestra la vercion de el git
git

# -- Coloca el nombre a git  (En caso de no aver configurado en forma global se debe sacar --global)
git config --global user.name "Nombre usuairo"

# -- Colocar el Mail de el que subeel codigo
git config --global user.email "Mail de el responsable del codigo"


# -- muestra la lista de configuraciones de git
git config --list #  <!> REVISAR

# -- clona seguna el repositorio paso por url
git clone URL

# -- Crear credencial para guarcar
#    Usuario y Password de GitHub
#    https://blog.openalfa.com/como-evitar-que-git-solicite-usuario-y-contrasena-cada-vez
git config --global credential.helper store

#   si no queres cuardar en el disoc esto lo hace por tanto timpeo como dice el numero
#   En este caso son Mili Segundos
git config --global credential.helper 'cache --timeout=3600'

# -- Ve las difernecias entre mi maquina y el repocitorio
git diff # <!> NO FUNCIONA


# -- para que un archivo no este en git se debe crear un archivo .gitignore
vim .gitignore
-

# -- iniciar mi proyecto a git

git init

# -- agrega al staging area
git add Directoreio_o_archivo
	# - Agrega al Staging area Todos lo archivos en este Repocitorio
	git add .

	git add -A #-- <?> diferencias entre add .


# -- remover del steting area
git rm --cached Archivo_a_eliminar

# git rm -r  --cached si es directorio
git rm --force #- Elimina el archivo de el disoco

# -- le indica a donde va a subir el repositorio
git remote add origin URLRepocitorios

# -- envia el archivo a el gestor de verciones
git push origin master

# -- trae el codigo de el Gestor de verciones
git pull origin master

# -- Para comitiar el codigo
	git commit -m "Mensaje"

# -- Historial de el codigo
git log
	#- muestra el historial de el gin
	git log archivo



# -- Muestra el historial de los cambios de el archivos
git show

# -- Estado de repocitorio
git status

# -- mustra las diferencias de el codigo
git diff  # <?> NO ME MUESTRA



#Todo cambia a la vercion anterior
git reset Commit --hard

#-- Muestra los Repocitiorios remotos
git remote -v



#  14:00 Jueves 29 Bulebar artigas 408 esquina solano Garcia.

# -- Crear una nueva branch
# Rama master -- Rama principal
# Rama development -- Rama Experimental
# Rama hotfix -- Rama Arreglo en caleinte
git branch NombreDeBranch   <?>

# -- Crea una branch
git checkout -b NombreDeBranch

# -- Pasarnos a branck
git checkut NombreDeBranch




# -- muestra las branch
	git branch
#  agregando -A muesra las que estan en el remoto
# y en el local
git branch -a


# -- mustra las branch que emos mergeado
git branch --merged # <?> Que es mergead


# -- Mergear branch
git merge NombreDeBranch


# -- sube el codigo a el gestor de verciones
# en la branch asignada
git push -u origin NombreDeBranch

# -- Eliminar mi branch de el Repocitorio Externo
git push origin --delete miNuevaBranch

# -- Elimina la branch LOCALMENTE
git branch -d miNuevaBranch





# -------------------------------<<NPM>>-------------------------------------



-- Muestra la verion acutal de npm
npm -v

-- Muestra la vercion acutal de Node.Js
node -v

node src

# -- Ejectua el Node.js
npm start

# -- Desintala dependencia

npm rm --save dependencia

# -- Pasa un paquete de modo
#  desarollo a produccion
npm install --save-prod howler

# -- muestra menu donde ves los paquetes disponibles
# -- para la instlacion
npm search howler

# -- inica un proyecto generando un
#    archivo packate.json
npm init

# -- MUESTRA INFROMACION DE LE paquete
npm show,

npm init -f # -- inicia proyecto sin hacr las preguntas frecuetes

# -- ejecuta en este caso dev
npm run dev


# -- Para trabajar codigo en el servidro mas facil
npm install express

#-- motor de codigo html es para trabajar mas de el lado del servidor
#    tranfomran  codigo a html
npm install ejs

# -- ve las peticiones de los usuario al servidor
npm install morgan

# -- Se utiliza para ecuchar cambios en el codigo
#    y meterlo en el servicro -D porque es algo que se
#    Va a usar en el modo ejecucion
npm install nodemon -D

# -- Lo que ace es lanza el servidor por defecto busca index.js
noumod src

npm install -D	# instlacion de dependencia de desarrollo es decir se usa
                # para la etapa de desarollo poero no para produccion


#-- Muestra la vercion de el paquete show
npm show @vue/cli versions

-- actualiza npm
npm install npm@lastest -g

# -- Desitnala Paquetres
npm unistall 'paquete'



# -------------------------------<<VIM>>-------------------------------------

# -- Ve la configuracion de el movimiento
vim.vimrc

# -- Sale del archivo
:q
# -- Se pone el el comando insercion
i

# -- Guarda los cambios Archivo
:w

#-- Ir al inicia de el Documento
gg

# -- Ir al fin de el Documento
MAYUS+g

# -- Ir a la linea segun el NUM
NUM+G


#-- Agrega numero de linea
:set nu

:set nu! # Saca Nuemro de lineas

# -- Corta la linea
dd

# -- Copia la linea
yy

# -- Pega la linea debajo de el cursor
p


# -- Entra a modo vicion
v

# -- Eliminar linea actual 
dd

# -- Elimina la cantidad de lineas segun NUM
d+NM


# -- Mueve palabra acia atras <F>
b

# -- Mueve palabra acia delante <F>
w

