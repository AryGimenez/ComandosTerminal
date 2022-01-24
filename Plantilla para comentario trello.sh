**Configurar Clinetes **

***

**WEB:** https://binary-coffee.dev/post/configuar-cliente-de-wireguard-vpn-en-linux


* Instalacione en las diferentes distros 

        **Linux Ubuntu** 
        # Ubuntu/Debian
        sudo apt update
        sudo apt install wireguard

        # Fedora
        sudo dnf install wireguard-tools

        # Mageia
        sudo urpmi wireguard-tools

        # Arch
        sudo pacman -S wireguard-tools

        # Alpine

* Se debe acceder a el directorio de cofiguracion de wireguard 
    cd /etc/wireguard con

* Iniciar el tuner vpn donde mivpn corresponde a el acrivho mivpn.conf
    sudo wg-quick up mivpn

* Para desactivar la coneccion 
    sudo wg-quick down mivpn
    
* Configuracion de ejemplo 

    [Interface]
    Address = 10.0.2.4
    PrivateKey = gOrIzEVGDOds2Z1BlyFKoOu1nJjJg+s5CdLxBz7bdms=
    ListenPort = 51820
    DNS = 10.0.2.1

    [Peer]
    PublicKey = 1ZsAypXtyLkGvXQ9fDLXDfJIoKtow6/dBr9iBDf3VnY=
    Endpoint = arycasa.duckdns.org:51820
    AllowedIPs = 0.0.0.0/0

* Error 



    [#] ip link add peer_ary_ssd type wireguard
    [#] wg setconf peer_ary_ssd /dev/fd/63
    [#] ip -4 address add 10.0.2.4 dev peer_ary_ssd
    [#] ip link set mtu 1420 up dev peer_ary_ssd
    RTNETLINK answers: Address already in use
    [#] ip link delete dev peer_ary_ssd




***

WEB: https://alexpro.sytes.net/cliente-wireguard-linux/

***

* Supuestamente muestra el estado de la coneccion **pero no mpuestra nada** 
   sudo wg

WEB: https://www.vpnunlimited.com/es/help/manuals/wireguard/linux

***

 
    