


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
