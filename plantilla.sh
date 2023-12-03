


#Run para levantar la imagen de nagios
sudo \
docker run --name nagios  \
  -v /path-to-nagios/etc/:/opt/nagios/etc/ \
  -v /path-to-nagios/var:/opt/nagios/var/ \
  -v /path-to-nagios/ssmtp.conf:/etc/ssmtp/ssmtp.conf \
  -v /path-to-custom-plugins:/opt/Custom-Nagios-Plugins \
  -p 0.0.0.0:8181:80 \
  manios/nagios:latest;




docker run \
  --rm \
  --name vsftpd \
  -v /var/log/ftp:/var/log \
  -p 21:21 \
  -p 4559-4564:4559-4564 \
  -e FTP_USER=ftp \
  -e FTP_PASSWORD=ftp \
  docker.io/panubo/vsftpd:latest


## -- Docker Kali

sudo docker run \
  --rm \
  -- name kali \
  kalilinux/kali-rolling:latest


sudo docker run \
  -t \
  -i \
  kalilinux/kali-rolling \
  /bin/bash


  
## -- Docker networks

ip link add mac0 link eth0 type macvlan mode bridge

    sudo docker network create \
        -d \
        macvlan \
        --subnet=192.168.4.0/24 \
        --gateway=192.168.4.1 \
        -o \
        parent=enp0s25 Prueba




## -- Plex 

sudo docker stop plex

    docker run -d \
      --rm \
      --name=plex \
      --net=host \
      -e PUID=1000 \
      -e PGID=1000 \
      -e VERSION=docker \
      -e PLEX_CLAIM= `#optional` \
      -v /home/docker/plex/library:/config \
      -v /home/docker/plex/tvseries:/tv \
      -v /media/data/Movies:/movies \
      -p 32400:32400 \
      lscr.io/linuxserver/plex


# DuckDNS
sudo docker run -d \
    --name=duckdns \
    -e PUID=1000 `#optional` \
    -e PGID=1000 `#optional` \
    -e TZ=Europe/London \
    -e SUBDOMAINS=arycasa.duckdns.org \
    -e TOKEN=04e49b80-78e9-4d42-8c27-7f508672984c \
    -e LOG_FILE=false `#optional` \
    -v /home/docker/duckdns/config:/config `#optional` \
    --restart unless-stopped \
    lscr.io/linuxserver/duckdns

# Omada Controller 

sudo docker run -d \
  --network zabbix-network \
  --ip 192.168.100.50 \
  --hostname=omada-controller \
  --name omada-controller \
  --rm \
  -p 8088:8088 \
  -p 8043:8043 \
  -p 8843:8843 \
  -p 29810:29810/udp \
  -p 29811:29811 \
  -p 29812:29812 \
  -p 29813:29813 \
  -p 29814:29814 \
  -e MANAGE_HTTP_PORT=8088 `#Puerto HTTP Interfaz de Gestion`\
  -e MANAGE_HTTPS_PORT=8043 `#Puerto HTTS Interfaz de Gestion`\
  -e PORTAL_HTTP_PORT=8088 `#Puerto HTTP Interfaz de Usuario` \
  -e PORTAL_HTTPS_PORT=8843 `#Puerto HTTPS Interfaz de Usuario` \
  -e SHOW_SERVER_LOGS=true `#Habilita los logs del Servidor.`\
  -e SHOW_MONGODB_LOGS=true \
  -e SSL_CERT_NAME="tls.crt" \
  -e SSL_KEY_NAME="tls.key" \
  -e TZ=Etc/UTC \
  -v /home/docker/Omada/data:/opt/tplink/EAPController/data \
  -v /home/docker/Omada/work:/opt/tplink/EAPController/work \
  -v /home/docker/Omada/logs:/opt/tplink/EAPController/logs \
  mbentley/omada-controller:5.1


  
# Creo los directorios para los volúmenes 
mkdir /home/docker/Omada /home/docker/Omada/logs /home/docker/Omada/work /home/docker/Omada/data
# Asigno permisos como dice la documentación
sudo chown -R 508:508 /home/docker/Omada/data /home/docker/Omada/work /home/docker/Omada/logs



#Zabbix 

sudo docker network create \
  --driver bridge \
  --subnet 192.168.100.0/16 \
  --gateway 192.168.100.1 \
  zabbix-network


# Conenedor Mysql - Para Zabbix 
sudo docker run \
  --network zabbix-network \
  --ip 192.168.100.2 \
  --hostname=mysql-server \
  -dt \
  --name mysql-server \
  -v /home/docker/zabbix/mysql:/var/lib/mysql `#Directorio donde se guarda la base de datos ` \
  -e MYSQL_DATABASE="zabbix" \
  -e MYSQL_USER="ary" \
  -e MYSQL_PASSWORD="hmq7381" \
  -e MYSQL_ROOT_PASSWORD="YjA0OTYajskjadhBiN2EwNWFjMTRjZGU3Yjcy" \
  --restart unless-stopped mysql \
  --character-set-server=utf8 \
  --collation-server=utf8_bin \
  --default-authentication-plugin=mysql_native_password


-v /home/docker/zabbix/mysql/my.cnf:/etc/my.cnf `#Guarda la configuración del servidor` \

-- ip 172.22.0.5 \


# Servidor zabbix

sudo docker run \
  --network zabbix-network \
  --ip 192.168.100.3 \
  --hostname=zabbix-server \
  --name zabbix-server \
  -dt \
  -e DB_SERVER_HOST="mysql-server" \
  -e MYSQL_DATABASE="zabbix" \
  -e MYSQL_USER="ary" \
  -e MYSQL_PASSWORD="hmq7381" \
  -e MYSQL_ROOT_PASSWORD="YjA0OTYajskjadhBiN2EwNWFjMTRjZGU3Yjcy" \
  -e ZBX_TIMEOUT="10" \
  -e ZBX_CACHESIZE=1G \
  -p 10051:10051 \
  --hostname zabbix-server-mysql \
  --restart unless-stopped zabbix/zabbix-server-mysql

# Servidor Wen Zabbix nginx

sudo docker run \
  --network zabbix-network \
  --ip 192.168.100.4 \
  --hostname=zabbix-web-nginx \
  --name zabbix-web-nginx \
  -dt \
  -e DB_SERVER_HOST="mysql-server" \
  -e MYSQL_DATABASE="zabbix" \
  -e MYSQL_USER="ary" \
  -e MYSQL_PASSWORD="hmq7381" \
  -e MYSQL_ROOT_PASSWORD="YjA0OTYajskjadhBiN2EwNWFjMTRjZGU3Yjcy" \
  -e ZBX_SERVER_HOST="zabbix-server-mysql" \
  --restart unless-stopped \
  -p 8081:8080 \
  zabbix/zabbix-web-nginx-mysql

# DockerHub: https://hub.docker.com/r/zabbix/zabbix-web-nginx-mysql

# Agente zabbix
sudo docker run \
  --network zabbix-network \
  --name zabbix-agent \
  -dt \
  --hostname zabbix-agent \
  -e ZBX_TIMEOUT="10" \
  -e ZBX_HOSTNAME="Zabbix server" \
  -e ZBX_ALLOWKEY="system.run[*]" `#No tengo ni idea` \
  -e ZBX_SERVER_HOST="127.0.0.1" \
  -e ZBX_SERVER_PORT="10051" \
  -p 10050:10050 \
  -v /home/docker/zabbix/agenteZabbix:/etc/zabbix \
  --restart unless-stopped \
  zabbix/zabbix-agent2




# Contenedor Monitorizacion MySQL 

sudo docker run \
    --name bd_zabix \
    -e MYSQL_ROOT_PASSWORD=hmq7381 \
    -e MYSQL_USER=zabbix \
    -e MYSQL_PASSWORD=hmq7381 \
    -p  3306:3306 \
    -d \
    -v /home/docker/zabbix/database_mySQL:/var/lib/mysql \
    --network zabbix-network \
    --hostname mysql \
    --rm \
    mysql


#Contenedor para 

sudo docker run 
  --network zabbix-network \
  -dt 
  --name mysql-server \
  --mount type=volume,source=mysql,target=/var/lib/mysql \
  -e MYSQL_DATABASE="zabbix" -e MYSQL_USER="zabbix" \
  -e MYSQL_PASSWORD="evren123" \
  -e MYSQL_ROOT_PASSWORD="YjA0OTYajskjadhBiN2EwNWFjMTRjZGU3Yjcy" \
  --restart unless-stopped mysql \
  --character-set-server=utf8 \
  --collation-server=utf8_bin \
  --default-authentication-plugin=mysql_native_password
    
# mi vercion de comandos sadaco de https://medium.com/adessoturkey/execute-scripts-on-zabbix-host-8c79782022fd


sudo docker run \
    --name mysql-server \
    --network zabbix-network \
    -dt \
    --mount type=volume,source=mysql,target=/var/lib/mysql \
    -e MYSQL_DATABASE="zabbix" \
    -e MYSQL_USER="zabbix" \
    -e MYSQL_PASSWORD="evren123" \
    -e MYSQL_ROOT_PASSWORD="YjA0OTYajskjadhBiN2EwNWFjMTRjZGU3Yjcy" \
    --restart unless-stopped \
    --character-set-server=utf8 \
    --collation-server=utf8_bin \
    --default-authentication-plugin=mysql_native_password/
    mysql
    
    
    
# Puertos Lacka Abiertos TCP

 ✘ ary@ary-SSD128  ~  sudo nmap -n -Pn -sS -p- 192.168.0.234
[sudo] contraseña para ary: 
Starting Nmap 7.80 ( https://nmap.org ) at 2023-01-08 22:53 -03
Nmap scan report for 192.168.0.234
Host is up (0.000090s latency).
Not shown: 65532 closed ports
PORT    STATE SERVICE
111/tcp open  rpcbind
139/tcp open  netbios-ssn
445/tcp open  microsoft-ds
MAC Address: 00:1C:C0:6B:58:A9 (Intel Corporate)



    
    
    
    
# Zabbix 
    
sudo docker run \
    --name zabbix-5 \
    -e DB_SERVER_HOST="mysql" \
    -e MYSQL_USER="zabbix" \
    -e MYSQL_PASSWORD="hmq7381" \
    -d \
    --rm \
    zabbix/zabbix-server-mysql
    
    
sudo docker run \
    --name zabbix-5 \
    -e DB_SERVER_HOST="mysql" \
    -e MYSQL_USER="zabbix" \
    -e MYSQL_PASSWORD="hmq7381" \
    -d \
    --rm \
    zabbix/zabbix-server-mysql    
    

# Netdata DockerCompose

    netdata:
      image: netdata/netdata:v1.19.0
      restart: always
      ports:
        - 8080:19999
      expose:
        - "19999"
      volumes:
        - /etc/passwd:/host/etc/passwd:ro
        - /etc/group:/host/etc/group:ro
        - /proc:/host/proc:ro
        - /sys:/host/sys:ro
        - /var/run/docker.sock:/var/run/docker.sock:ro
        - netdata-etc:/etc/netdata
      cap_add:
        - SYS_PTRACE
      security_opt:
        - apparmor=unconfined
      environment:
        - VIRTUAL_PORT=19999
        - DOCKER_HOST=proxy:2375
        - PGID=999
        - VIRTUALIZATION=kvm
      networks:
        - Red-APP

#   Run Netdata Docker 
sudo docker run -d \
    --name=netdata \
    --rm \
    -p 19999:19999 \
    -v /etc/passwd:/host/etc/passwd:ro \
    -v /etc/group:/host/etc/group:ro \
    -v /proc:/host/proc:ro \
    -v /sys:/host/sys:ro \
    -v /var/run/docker.sock:/var/run/docker.sock:ro \
    --cap-add SYS_PTRACE \
    --security-opt apparmor=unconfined \
    netdata/netdata




    docker run -d \
      --name=netdata \
      --rm \
      -p 19999:19999 \
      -v /etc/passwd:/host/etc/passwd:ro \
      -v /etc/group:/host/etc/group:ro \
      -v /proc:/host/proc:ro \
      -v /sys:/host/sys:ro \
      -v /var/run/docker.sock:/var/run/docker.sock:ro \
      --cap-add SYS_PTRACE \
      --security-opt apparmor=unconfined \
      netdata/netdata










# Servidro torren


    docker run -d \
      --rm \
      --name=qbittorrent \
      -e PUID=1000 \
      -e PGID=1000 \
      -e TZ=Europe/London \
      -e WEBUI_PORT=8080 \
      -p 6881:6881 \
      -p 6881:6881/udp \
      -p 8080:8080 \
      -v /path/to/appdata/config:/config \
      -v /path/to/downloads:/downloads \
      lscr.io/linuxserver/qbittorrent
  
 

# UniFi Controller 

# En otra red para no compartir el host
sudo docker run -d \
  --name=unifi-controller \
  -e PUID=1000 \
  -e PGID=1000 \
  -e MEM_LIMIT=1024 `#optional` \
  -e MEM_STARTUP=1024 `#optional` \
  -p 8443:8443 \
  -p 3478:3478/udp \
  -p 10001:10001/udp \
  -p 8080:8080 \
  -p 1900:1900/udp `#optional` \
  -p 8843:8843 `#optional` \
  -p 8880:8880 `#optional` \
  -p 6789:6789 `#optional` \
  -p 5514:5514/udp `#optional` \
  -v /home/docker/UniFi-Controller:/config \
  --restart=always \
  lscr.io/linuxserver/unifi-controller:latest


# en el mismo host 
sudo docker run -d \
  --name=unifi-controller \
  --rm \
  -e PUID=1000 \
  -e PGID=1000 \
  -e MEM_LIMIT=1024 `#optional` \
  -e MEM_STARTUP=1024 `#optional` \
  -p 8443:8443 \
  -p 3478:3478/udp \
  -p 10001:10001/udp \
  -p 8080:8080 \
  -p 1900:1900/udp `#optional` \
  -p 8843:8843 `#optional` \
  -p 8880:8880 `#optional` \
  -p 6789:6789 `#optional` \
  -p 5514:5514/udp `#optional` \
  -v /home/docker/UniFi-Controller:/config \
  lscr.io/linuxserver/unifi-controller:latest


  /home/docker/

#  Docker Wireguard 

  #VPN Casa 
  sudo docker run -d \
      --name=wireguard \
      --cap-add=NET_ADMIN \d
      --cap-add=SYS_MODULE \
      -e PUID=1000 \
      -e PGID=1000 \
      -e TZ=Europe/London \
      -e SERVERURL=arycasa.duckdns.org `#optional` \
      -e SERVERPORT=51820 `#optional` \
      -e PEERS=ary_cel,ary_notebook,ary_ssd,fede_cel,fede_notebook,nego_cel,nego_notegook,renzo_cel,renzo_notebook,pepe_notebook,pepe_cel `#optional` \
      -e PEERDNS=8.8.8.8 `#optional` \
      -e INTERNAL_SUBNET=10.0.2.0 `#optional` \
      -e ALLOWEDIPS=0.0.0.0/0 `#optional` \
      -p 51820:51820/udp \
      -v /home/docker/wireguard/config:/config \
      -v /home/docker/wireguard/lib/modules:/lib/modules \
      --sysctl="net.ipv4.conf.all.src_valid_mark=1" \
      --restart=always \
      lscr.io/linuxserver/wireguard # imagen-docker 
      

# VPN Montevideo Colors     
sudo docker run -d \
  --name=wireguard \
  --cap-add=NET_ADMIN \
  --cap-add=SYS_MODULE \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -e SERVERURL=montevideocolors.duckdns.org `#optional` \
  -e SERVERPORT=51820 `#optional` \
  -e PEERS=ary_cel,ary_notebook,ary_ssd,martin,ary_compartir `#optional` \
  -e PEERDNS=8.8.8.8 `#optional` \
  -e INTERNAL_SUBNET=10.0.2.0 `#optional` \
  -e ALLOWEDIPS=0.0.0.0/0 `#optional` \
  -p 51820:51820/udp \
  -v /home/docker/wireguard/config:/config \
  -v /home/docker/wireguard/lib/modules:/lib/modules \
  --sysctl="net.ipv4.conf.all.src_valid_mark=1" \
  --restart=always \
  lscr.io/linuxserver/wireguard

# meter al inicio 
mount /dev/sdb2 /media/data 



 





# documentar
 
printf ‘Primera línea de texto\n’ nombrearchivo.txt


# Servidor ftp
docker run \
  -d \
  --rm \
  -v /media/data/Movies:/home/vsftpd \
  -p 20:20 \
  -p 21:21 \
  -p 21100-21110:21100-21110 \
  -e FTP_USER=test \
  -e FTP_PASS=test \
  -e XFERLOG_STD_FORMAT=YES \
  -e LOG_STDOUT \
  --name vsftpd \
  fauria/vsftpd
 mysql-server


docker run \
-d \
-v /my/data/directory:/home/vsftpd \
-p 20:20 
-p 21:21 \
-p 21100-21110:21100-21110 \
-e FTP_USER=myuser -e FTP_PASS=mypass \
-e PASV_ADDRESS=127.0.0.1 \
-e PASV_MIN_PORT=21100 
-e PASV_MAX_PORT=21110 \
--name vsftpd \
--restart=always 
fauria/vsftpd




# cargar srip montar disco peliclas al inicio de window 
# Documentar 

***    
     echo ‘mount /dev/sdb2 /media/movie/’ > /etc/init.d/

     chmod +x nombredetuscript

     mount /dev/sdb2 /media/movie/
     chmod +x nombredetuscript
***


docker run -d \
  --name=qbittorrent \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -e WEBUI_PORT=8081 \
  -p 6881:6881 \
  -p 6881:6881/udp \
  -p 8081:8081 \
  -v /path/to/appdata/config:/config \
  -v /path/to/downloads:/downloads \
  --restart unless-stopped \
  lscr.io/linuxserver/qbittorrent




    docker run \
     -d --user $ary:$aryel1 \
     -p 8083:8080 \
     -p 6881:6881/tcp \
     -p 6881:6881/udp \
     -v $PWD/config:/config \
     -v $PWD/torrents:/torrents \
     -v $PWD/downloads:/downloads \
     wernight/qbittorrent



    docker run \
        --name utorrent \
        -v /path/to/data/dir:/data \
        -p 8080:8080   \
        -p 6882:6881   \
        -p 6882:6881/udp \
        ekho/utorrent:latest








 docker run 
 -d 
 -p 21:21 
 -v /my/data/directory:/home/vsftpd 
 --name vsftpd 
 fauria/vsftpd
# see logs for credentials:
docker logs vsftpd







ip link \
 add mac0 \ 
 link enp0s25 \
 type macvlan \
 mode bridge

ip addr 
 add 192.168.4.1/24 
 dev mac0

ifconfig mac0 up
s
