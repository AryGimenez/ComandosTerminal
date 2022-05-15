Conectarme Desde linux a wireguard 

* Instalacion Ubuntu

    **sudo apt install wireguar**

* Activamos Wireguard

    **modprode wireguard**
    
* Corroborar que este bin activado
    **lsmod | grep wireguard**

* Directorio de configuracion
    **vim /etc/wireguard/wg0.conf**


***

https://help.clouding.io/hc/es/articles/360013528839-C%C3%B3mo-instalar-WireGuard-VPN-en-Ubuntu

https://bandaancha.eu/foros/dudas-wirguard-levantar-wg0-pierdo-1742406


https://www.wireguard.com/quickstart/


sudo wg-quick up wg0
Error 

/usr/bin/wg-quick: line 32: resolvconf: command not found


Foro que abla del tema 

https://superuser.com/questions/1500691/usr-bin-wg-quick-line-31-resolvconf-command-not-found-wireguard-debian



Manual de configuración en Inglés 

https://tech.serhatteker.com/post/2021-01/how-to-set-up-wireguard-client-on-ubuntu-desktop/


