#-- Entra configuracion global
config system global;

#-- Configuracion nombre dispositivo -> se debe estar dentro de configuracion global
set hostname NombreDeDispositivo



#-- Sale modo actual
end

#-- Configura una interfas
config system interface 

# --Muestra en contenido de el menu acutal 
show 

# Mustra informacion de la interfas definida
show "interface"
# Muesra el contenido de las interface
show system interface 

# -- Funciona igual que show pero dando informacion de cada puerto mas detallada
get 
# muestra informacion de la inteface definida
get "Inteface"


#-- Editar interfase -> se debe encotrar en configuracion interfase
edit "interfase"

#-- modificar ip de la interfase
set ip 192.168.0.2 255.255.255.0

# -- define el protocolo de acceso a esta interface
set allowaccess 


# -- Acer ping 
execute ping "IP"

#-- Recetear modo fabrica
execute factoryreset

# --Ver las interfaces en Fortinet
get system interface
   

   
# -- Confiturar Sorware Swithc https://docs.fortinet.com/document/fortigate/6.0.0/handbook/42807/virtual-switch
 config system virtual-switch
    edit "HS_RedServidor"
    