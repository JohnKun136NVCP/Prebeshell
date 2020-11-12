#!/bin/bash


trap  ''  2  20

prueba=/etc/sgml/pi

if [ -d "$prueba" ]
	then
	#Esta carpeta sirve como una marca para indicar que no es la primera vez
	sudo mkdir /etc/sgml/pi2
	clear
else
	clear
	echo "Porfavor ingrasa la contrasena para reproducir musica" 
	sudo apt -y  install mpg123
 	clear	
 	sudo mkdir /etc/sgml/pi
	#Esta carpeta indica que ya se han instalado los paquetes necesarios
	
fi	
	
clear
bandera2=0

while [ $bandera2 -ne 1 ]
do

	echo -e "\e[36mUbicacion de la carpeta puede ser ruta absoluta "
	echo -e "o relativa antes de un epacio porfavor colocar '\' \e[0m"
	read -e ubiact

	opcion=0
	band=1

	while [ $opcion -ne 2 ]
	do
	    clear

	    echo -e "Te encuentras en \e[1;32m$ubiact\e[0m "
	    echo "Menu del reproductor prebeshell: "
	    echo "Reproduce todas las canciones de la carpeta con '1'"
	    echo "Salir del reproductor prebeshell con '2'"
	    echo "deseas cambiar de carpeta '3' si "
	    echo "Que quieres hacer"
	    read -e opcion

	    if [ $opcion -le 0 -o $opcion -ge 4 ]
	    then
	      echo "Error numero no existe profavor ingrese cualquier tecla para continuar"
	      read -e opcion
	      opcion=0;
	    elif [ $opcion -eq 3 ]
	    then
	     	opcion=2
	    elif [ $opcion -eq 2 ]
	    then
	    	bandera2=1
	    	

	    else
	    	command clear

	    
	    	if [ $opcion -eq 1 ]
	    	then

		        cont=1
		        for archivo in $ubiact/*.mp3; do
		        
		        	canciones[$(($cont-1))]="${archivo##*/}"
		        	cont=$(($cont+1))
		        done

		        if [ $(which mpg123) ]
		        then

			        while [ $band -eq 1 ]
			        do
			        	echo -e "\e[34mEste es el Menu de reproduccion de directorio \e[0m"
			            echo -e "Estas en la carpeta \e[32m$ubiact\e[0m"

			            cont=1
			            for archivo in $ubiact/*.mp3; do
			              echo "$cont. ${archivo##*/}"
			              canciones[$(($cont-1))]="${archivo##*/}"
			              cont=$(($cont+1))
			            done

			            echo -e "\e[32mDime el nombre de la cancion o utiliza los siguiente comandos\e[0m"
			            echo "Reproduce la lista de canciones con  '*'."
			            echo "Salir del menu de reproduccion de la carpeta con !"
			            echo " "
			            read -e opcion

			            if [ "$opcion" = "!" ]
			            then
			              band=0

			            elif [ "$opcion" = "*" ]
			            then
				            command clear
				            echo ""
				            echo ""
				            echo "Para quitar reproduccion presione q"
				            echo -e "\e[32mpresiona h para ver el menu de reproduccion\e[0m"
				            echo ""
				            command mpg123 -q "${ubiact}"/*


			            else
				            echo "${ubiact}"/"${opcion}.mp3"
				            echo "Para quitar reproduccion presione q"
				            echo -e "\e[32mpresiona h para ver el menu de reproduccion\e[0m"
				            echo ""
				            command mpg123 -C "${ubiact}"/"${opcion}.mp3"

				            command clear 
				            echo "Se acabaron las canciones presiona cualquier tecla para continuar"
				            read le
			            fi

			            command clear

			            opcion=0
			        done
		        	band=1
		        fi
		    fi
			
			fi
	done
done

command clear
