


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
docker run -d \
  --rm \
  --name=duckdns \
  -e PUID=1000 `#optional` \
  -e PGID=1000 `#optional` \
  -e TZ=Europe/London \
  -e SUBDOMAINS=arycasa.duckdns.org \
  -e TOKEN=04e49b80-78e9-4d42-8c27-7f508672984c \
  -e LOG_FILE=false `#optional` \
  -v /home/docker/duckdns/config:/config `#optional` \
  lscr.io/linuxserver/duckdns


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
  
 


#  Docker Wireguard 

docker run -d \
  --rm \
  --name=wireguard \
  --cap-add=NET_ADMIN \
  --cap-add=SYS_MODULE \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -e SERVERURL=arycasa.duckdns.org `#optional` \
  -e SERVERPORT=51820 `#optional` \
  -e PEERS=ary_cel,ary_notebook,ary_ssd,fede_cel,fede_notebook,nego_cel,nego_notegook,renzo_cel,renzo_notebook `#optional` \
  -e PEERDNS=8.8.8.8 `#optional` \
  -e INTERNAL_SUBNET=10.0.2.0 `#optional` \
  -e ALLOWEDIPS=0.0.0.0/0 `#optional` \
  -p 51820:51820/udp \
  -v /home/docker/wireguard/config:/config \
  -v /home/docker/wireguard/lib/modules:/lib/modules \
  --sysctl="net.ipv4.conf.all.src_valid_mark=1" \
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


docker run \
-d \
-v /my/data/directory:/home/vsftpd \
-p 20:20 
-p 21:21 \
-p 21100-21110:21100-21110 \
-e FTP_USER=myuser 
-e FTP_PASS=mypass \
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
