
# -- Laboratorio de docker web
https://labs.play-with-docker.com/

# -- Instalacion Doker en Ubuntu  https://docs.docker.com/engine/install/ubuntu/
# Elimina verciones enteriores
sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common


# -- Instalar dorke fedora 31

# -- Instalar atom Url= https://atom.io/
sudo dnf install ./atom.x86_64.rpm

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

# -- comitiar
docker commit id

# -- Crear DockerFil: Es un conjunto de instrucciones que seirve
#    para crear imagenes

vim Dockerfile

# -- Creamos una imagen vasada en el Dockerfile
docker build -t NombreImagen:v1

# -- docker tagear esto se usa normalmente par colocar verciones
docker imag tag "id" "name" # Si agregamos agrega el tag:1.0

# -- ve el istroiral de los comandos corridos en la imagen
docker imag history "id"


# -- Ve las imagenes en el sistema
docker image ls # si le agregamos |head muestra las primeras 10

# -- muestra los contenedores
docker ps # los que estan en ejecucion acutalmente
docker ps -a # Los que ya no estan en uso

# -- Muestra informacion de el dicker
docker inspect id-o-namber
docker inspect --format '{{.stat.Pid}}'id-o-namber # Filtra dentro de la salida que entrega en la salida jeison
# -- Elimina el docker segun el id
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

# -- Mantar un foluen a un contenedor
docker run imagen # -ti entra al contenedor

# -- baja la imagen de DokckerHab
docker pull "imagen" # si agregamos :1.0 baja la vercion 1.0

# -- Entra en el contenedor en ejecucion
docker exec -it NAMES ComandoDentroDeContenedor
