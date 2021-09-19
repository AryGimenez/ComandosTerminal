
# -------------------------------<<LINUX>>-------------------------------------


# -- Copiar entre terminales xclip <F>
#<?> No lo entendi bien

# -- Buscar archivo con <F>

 # - locate
 sudo apt install locate

 sudo updatedb # indexa los archivos para alludar a locate <?><F>

 # - find
 find # <?> Terminar


# -- Trabajar con Permisos <?>
  
  # Cambiar el propietario  <?>
  sudo chown "Usuario" -R "Directiorio" # Directorio

  sudo chwn "Usuario" "Archivo" # Archivo
  


# -- Ver contenido de un archivo
cat


#  -- Reparar Driver Nvidia
sudo ubnutu-drivers devices # Veo los drives disponible - y el Recomendado <F>
sudo apt install "Driver a instalar"


# -- Me muestra informacion de compatibilidad de la tarjeta
lspci |grep -E "VGA|3D"

<ACA>


# -- Instalar un controlador que funciona supuestamente desde 5.4 a 5.11
sudo apt-get update
sudo apt-get install nvidia-legacy-340xx-kernel-dkms

# -- Trabajo con Usuarios https://eltallerdelbit.com/usuarios-grupos-linux/

# --<?> Crear Usuariouseradd

# --<F> Modificar Usuario
usermod

#-- <F> Agregar Grupo de usuario
groupadd

# -- Modificar Grupo de usarios <F>
gropumod

# -- Elimina Grupo de Usuarios <F>
groupdel

# -- en este archivo podemos ver todos los usuarios creados, sus UID y sus GID.
vim /etc/passwd

# -- Ver Hardware instalado 
lshw -short


# -- En este archivo podemos ver los GID de los grupos existentes en el sistema, y los usuarios pertenecientes a cada grupo.
vim /etc/group


# -- Clonar Disco
sudo dd bs=1M if=/dev/sda of=/dev/sdb



# -- Compartir directorio linux
groupadd migrupo  # Crea un grupo

useradd -d /home/compartido/ -g migrupo -m useradmin



# -- Me permite escribir de forma bonita
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


# -- Instalar Inkscape

sudo add-apt-repository ppa:inkscape.dev/stable
sudo apt update
sudo apt install inkscape

# -- Instalar GIMP


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

# -- <F> Para contectarme por cp Documentos/Red-MontevideoColors/Servidor/docker-compose.yml root@192.168.43.123:/services-dockersh
ssh ary@<IP/HOST>
ssh ary@"IP/Host" -p "Puerto"
# -- Copiar archivos atraves de ssh <F> <?> 
scp Documentos/Red-MontevideoColors/Servidor/docker-compose.yml root@192.168.43.123:/services-docker


# -- editar Repositorio
sudo vim /etc/apt/sources.list

# -- Agrega Repositorio
sudo add-apt-repository ppa:webupd8team/atom

# -- Remueve Repositorio
sudo add-apt-repository --remove ppa:webupd8team/atom

# -- Instalar Oh my ZSH Mejora la terminal <Ubuntu> https://geekytheory.com/como-instalar-oh-my-zsh-en-ubuntu
  # Web Oficial https://ohmyz.sh/
  sudo apt-get install zsh
  sudo apt-get install git-core

  wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
  chsh -s `which zsh`
  
  # Hacer que ZSH funcione en  ROOT <F> https://askubuntu.com/questions/521469/oh-my-zsh-for-the-root-and-for-all-user

    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    sudo ln -s /root/.zshrc $HOME/.zshrc

    sudo chmod 744 /root/.zshrc
  # Cambiar de tema ZSH https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
    vim /"DirectorioHomeUsuario"/.zshrc
    # Modivicamos la linea ZSH_THEME="TemaNuevo"



# -- Instala ssh
sudo apt install ssh <Ubuntu>

# -- Muestra estado de ssh
systemctl status ssh.service

# -- Modifica estado de ssh <F>
sudo nano /etc/ssh/sshd_config






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

# -- Herramienta para crear usb de instalacion
sudo apt-get update
sudo apt-get install gnome-multi-writer
# -- Clonar Disco



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

#-- Ver tamaño de un directorio https://www.hostinger.es/tutoriales/espacio-en-el-disco-linux
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

# -- Instalar Virutal B/x

  # <?> Creo que es para Fedora
  sudo dnf -y install @development-tools

  sudo dnf -y install kernel-headers kernel-devel dkms elfutils-libelf-devel qt5-qtx11extras

  sudo dnf search virtualbox

  sudo dnf install VirtualBox

  # Ubuntu

  sudo apt-get install virtualbos # INSTALAR




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

# -- Copiar Archivos
cp archivo.txt /Directorio
cp -r -v archivo.txt /Directorio # -r Copiar directorio -v ver movimiento de archivos
cp -a /origen/. /destino/ # <?> no anubo por un tempa de permiso copio pero algunas cosas no




# --Ve el contenido de el dicrectiorio acutal
  ls
  ls -l Se # musetra los archivos en una lista \Fecha modificacion\ Permisos\ Propiedad 
  ls -a # Muestra todos los archivos ocultos
  ls -h # Muestra el peso de los archivos en formatio umano no en SublimeText
  ls -lah # todo lo de arriba

# -- Trabajar con Permisos <?> <F>
https://blog.desdelinux.net/permisos-y-derechos-en-linux/

# -- Muestra la estructura de directorios
  sudo apt-ge install tree #<F>Instala tree <Ubunru>
  tree

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



# -- Sabre la versión actual
lsb_release -a

# -- Saber la Vercion del kernel acual
uname -r

# -- Muesta las verciones de el kernel Guardado <F>
dpkg -l | grep linux-image # Este muestra mas informacion

dpkg --get-selections | grep linux-headers #Este muestra las instladas

# -- Instalar un kernel espesifico
sudo apt-get install linux-image-5.4.0-37-generic

# -- Eliminar Kernels de la lista Grub <T> https://trastetes.blogspot.com/2016/07/eliminar-kernel-del-grub2-o-arrancar.html
sudo apt-get remove --purge linux-image-4.4.0-28-generic linux-image-extra-4.4.0-28-generic

# -- Gestor de paquetes Aprirude <F> https://computernewage.com/2015/02/22/como-instalar-aplicaciones-en-ssudo%20apt-get%20install%20aptitudesudo%20apt-get%20install%20aptitudeudo%20apt-get%20install%20aptitudeubusudo%20apt-get%20install%20aptitudentu-desde-la-terminal-con-apt-apt-get-y-aptitude/#aptitude
sudo apt-get install aptitude

sudo aptitude # Ejecuta la interfaz

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


# -- Formatear Dico <F> <?> NO logre hacerlo andar
   # Fat 32
   sudo mkfs.vfat -F 32 -n Mi_Memoria /dev/sdc1


# -- Muestra la informacion de la red
ifconfig

ifconfig -a # muestra todas las inteface aun la que no estan en uso <F>

# -- Desconecta la interfas de red
ifconfig "INTERFACE" down

ifdown "INTERFACE"

# -- Conecta la interface de red
ifconfig "Interface" up

# -- Reiniciar la configuracion de todas las interfaces
service networking reload

# -- Conecta la interfase
ifconfig "INTERFACE"

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
tmux -V

# -- Dividir pantalla Verticalmente
#  CTR+B "

# -- Dividir pantalla horizontalmente  <F>
CTB+B %

# --  Se mueve verticalmente por la terminal
# CTB+B [

# -- Cierra Terminal dentro de temux 
CTR+B x 

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

# -- Camtia a venta segun Numero
CTR+B NUM

 # --
 CTB+B

 # --
 CTB+B


# -------------------------------<DOCKER>>-------------------------------------

# -- Laboratorio de docker web
https://labs.play-with-docker.com/

# -- Instalacion Doker <Ubuntu>  https://docs.docker.com/engine/install/ubuntu/
  # Elimina verciones enteriores
  sudo apt-get remove docker docker-engine docker.io containerd runc
  


  # Actualice el índice de paquetes de apt e instale paquetes para permitir que apt use un repositorio sobre HTTPS:

  sudo apt-get update

  sudo apt-get install \
	  apt-transport-https \
	  ca-certificates \
          curl \
	  gnupg \
	  lsb-release

  # Agregue la clave GPG oficial de Docker:
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

  sudo apt-get update
 
  # x86_64 / amd64
  echo \
	"deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

  # Instalar Docker Energine 
  sudo apt-get update

  sudo apt-get install docker-ce docker-ce-cli containerd.io


    # Si no queres instlar recomendaciones Recomendado para los Dockerfiles
    --no-install-recommends 


# -- Instalar docker-compose https://docs.docker.com/compose/install/
  # instalo docker-compose
  sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

  sudo chmod +x /usr/local/bin/docker-compose # Aplicar permisos ejecutables al binario: <F>
  sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose # Crea un vinculo fisico <F> <?>

# -- Ver vercion Instalda de Docker-Compose
docker-compose --version

# -- Para autocompletar Terminal- Bash
sudo curl \
	     -L https://raw.githubusercontent.com/docker/compose/1.29.2/contrib/completion/bash/docker-compose \
	         -o /etc/bash_completion.d/docker-compose
# -- Para Desintalar docker-compose
sudo rm /usr/local/bin/docker-compose

# -- ejecuta un docker-compose
docker-compose up -d

#   <PROBAR>
    # -- Instalar nginex
      apt-get install nginx #-- Debian Ubuntu
      cd /etc/nginx # Dirigirme archivo configuracines
      cp default domino.nuevo # copiamos el archivo devault
      vim dominio.nuevo
      # dentro de el archivo modificiamos root y le agregamos el dierectorio deonde se
      # encuentra nuestro sitio web seria algo como /var/www/html/dominio_nuevo;
      # ademas modificacmos server_name domino.nuevo
      vim sites-avilable

# -- Loguearse a Docker hub en terminal
sudo docker login -u "usuario" -p "password" docker.io

# -- Ejecuta una imagen de contenedor
docker run "imagen"

docker run "imagen":"tag" # Esto ejecute la vercion espesifica de la imagen

# -- Ejecuta un contenedor nuevo a partir de la imagen  y entra al mismo.
docker run -it "imagen"

# -- Ejecuta un contenedor nuevo a partir de la imagen y la corre en  BackGraund <F>
docker run -d "imagen"

# -- Ejecuta una imagen y la termina despues de utilizar  (--rm) Ademas expone el puerto
docker run --rm -p 8888:3001 


# -- Ejecuta un contenedor y asigna un nombre
docker run --name NuevoNombreContenedor imagen 

# --<?> Montar volumen a imagen
docker run -d --name NombreImagenAsignado --mount src=Voumen,dst=RutaDeContendeor Imagen

# -- <?> Ejecunta  la imagen y monta el volumen 
docker run  -v /DirectorioeEnMiPc:/DirectorioEnContenedor "imagen"

# -- <F> Entrar a un contenedor en ejecucion 
docker exec -it "Name/ContinerID" bash
	
# -- Muestra los volumenes que se encuentran en docker
docker volume ls

# -- Crear un volumen <F>
docker volume create "NombreDeVolumen"

# -- Eliminar volumen <F>
docker volume rm "NombreDeVolumen"

# -- Inspeccionar el volumen <F>
docker volume inspect "NombreDeVolumen"

# -- Elimina todos los volúmenes que no están siendo usados
docker volume prune

# -- Creao una Network de docker 
mkdir "Directorio"
cd "Directorio"

# -- Para crear Network de Docker
  docker network create todo-app


  # Para unir los contenedores a la network creada 
    # Agreuge a docker run 
      --network "NameNetwork" #
      --network-alias "Alias" # Este Alias se utiliza para poder identificar mejor el contenedor en la Network de doekder creada <F>
# -- Para ver las network de docker en el sistema 
  docker network ls

# -- Ver informacion de la red de docker 
  docker run -it --network "NetworkDocker" nicolaka/netshoot 


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

# -- Crea una imagen de un contenedor
docker commit id


# -- baja la imagen de DokckerHab
docker pull "imagen" # si agregamos :1.0 baja la vercion 1.0

# -- Crear una imagen a partir de un Dockerfile

# docker build . 

# docker build -t "name":"tag" . 

# -- Taguea la imagen <F>
docker tag  "ImageId" "UsuarioDockerHob/Name:tag"  # Si agregamos agrega el tag:1.0




# -- Muestra las imagenes de el sistema que coincidan con una palabra
docker images | grep "palagra"


# -- Ve el historial de los comandos corridos en la imagen
docker images history "id"


# -- Ve las imagenes hosteadas en el sistema
docker images # si le agregamos |head muestra las primeras 10
docker images -a # muestra hasta las no tgueadas <F>

# -- Eliminar una imagen
sudo docker rmi "REPOSITORY"

# -- Mostrar o ver los contenedores
docker ps # los que estan en ejecucion acutalmente
docker ps -a # Los que ya no estan en uso
docker ps -a | head # Los ultimos 10 que ya no estan en uso

# -- Deterner un contendeor 
docker stop "CONTAINERID"

# -- Mostrar informacion de el contenedor
docker inspect id-o-namber
docker inspect --format '{{.stat.Pid}}' id-o-namber # <?> Filtra dentro de la salida que entrega en la salida jeison

# -- Eliminar contenedor sugun su DockerID
docker rm "DockerId"

#-- elimina el contenedor con el Name
docker rm -f Name

# -- Elimina todos los contenedores de el sistema

  # -- Para eliminar adicionalmente los contenedores detenidos y todas
  #  las imágenes no utilizadas (no solo aquellas pendientes), \
  #  añada el indicador -a al comando:
  docker system prune -a


# -- Le asigna nombre al contenedor H
docker --rename imagen nuevo-Nombre #- <?>


# -- Renombrar un contenedor
docker renombrar names-Anterior names-Nuevo  #-<?> Dudo que ande


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

# -- Cambiar el origen de git 
git remote set-url orogin "UrlACambiar"


#-- Generar Clave ssh Publica y Privada https://docs.github.com/es/github/authenticating-to-github/connecting-to-github-with-ssh
ssh-keygen -t rsa -b 4096 -C "EmailGitHub"

  #-- Agregar un clave al agente que tenemos en el ordenador
  Inicia el agente SSH en segundo plano.
  eval "$(ssh-agent -s)"

  # Agrega la clave a el agente
  ssh-add ~/.ssh/id_rsa

  # Resolver el error WARNING: UNPROTECTED PRIVATE KEY FILE!  <?>
  sudo chmod 600 ~ /.ssh/"ssl a resolver"



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

# -- Elimina la branch de forma Remato 
git push origni :"Branch"



# -------------------------------<<NPM>>-------------------------------------

# -- Instalar Node.js
sudo apt-get update
sudo apt-get install node
sudo apt-get install nodejs

nodejs -v
# -- Instala npm
sudo apt-get install npm #<Ubuntu>

# -- Muestra la verion acutal de npm
npm -v

# -- Muestra la vercion acutal de Node.Js
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

# `-- Ir al fin de el Documento
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
