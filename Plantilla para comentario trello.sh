Imagen:  **linuxserver/wireguard**
***
**Docker Run**

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



***
**GitHubs:** https://github.com/linuxserver/docker-wireguard
* Traduccion: https://github-com.translate.goog/linuxserver/docker-wireguard?_x_tr_sl=en&_x_tr_tl=es&_x_tr_hl=es&_x_tr_pto=wapp

**Docker Hubs:** https://hub.docker.com/r/linuxserver/wireguard
* Traduccion: 

***

Si en la variable de entorno **PEERS** establece algún valor numérico o una cadena separada por como, el contenedor se establecerá en **modo servidor**, Generando los códigos QR y las configuraciones para cada cliente. Estos archivos se guardarán en **/config/peerX**

docker exec -it wireguard /app/show-peer 1 4 5*docker exec -it wireguard 
/app/show-peer 1 4 5**




para instalar en el hostb el módulo que warware necesita para funcionar.

sudo apt install linux-headers 

***

Para volver a mostrar los códigos QR de los pares activos, puede usar el siguiente comando y enumerar los números de los pares como argumentos: **docker exec -it wireguard /app/show-peer 1 4 5** o **docker exec -it wireguard /app/show-peer myPC** myPhone myTablet(Tenga en cuenta que los códigos QR también se almacenan como PNG en la carpeta de configuración).


***
**SERVERURL** URL o IP PUBLICO-  donde se aloga el servidor VPN, Esta es opcional ya que la imagen al parecer cuenta con una manera de saber nuestra ip publica pero si tiene sentido si tenemos ip dinámico.
**SERVERPORT** Puerto que utiliza para el tunel VNP 
