#!/bin/bash

trap  ''  2  20

prueba=/etc/sgml/pin

if [ -d "$prueba" ]
	then
	#Esta carpeta sirve como una marca para indicar que no es la primera vez
	sudo mkdir /etc/sgml/pin2
	clear
else
	clear
	printf "Porfavor ingrasa la contrasena para darte la fecha y hora" 
	sudo apt -y  install festival
 	clear	
	#Esta carpeta indica que ya se han instalado los paquetes necesarios
	sudo mkdir /etc/sgml/pin
    	wget https://raw.githubusercontent.com/guadalinex-archive/hispavoces/master/packages/festvox-palpc16k_1.0-1_all.deb
        sudo dpkg -i festvox-palpc16k_1.0-1_all.deb
	fi	
	
clear

cat robot.txt
echo ""
echo "Este proyecto fue creado por: Angeles Hernández Juan  y Abraham Galindo Ruiz"
echo "Este proyecto fue creado por: Angeles Hernández Juan  y Abraham Galindo Ruiz" | iconv -f utf-8 -t iso-8859-1|festival --tts
echo "adios"
echo "adios" | iconv -f utf-8 -t iso-8859-1|festival --tts
clear
