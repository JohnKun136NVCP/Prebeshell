#!/bin/bash
trap  ''  2  20

echo "Este juego es piedra papel tijera rata spock"

echo "En la suigiente tabla se muestra quien le gana a quien"

echo "------------------------------------------------------"

echo "|         Gana             |          Pierde         |"
echo "------------------------------------------------------"
echo "|         spock            |          tijera         |"
echo "|        tijera            |           papel         |"
echo "|         papel            |          piedra         |"
echo "|        piedra            |          lagarto        |"
echo "|        lagarto           |          spock          |"
echo "|         spock            |          piedra         |"
echo "|         papel            |          spock          |"
echo "|        lagarto           |          papel          |"
echo "|        tijera            |          lagarto        |"
echo "|        piedra            |          tijera         |"
echo "------------------------------------------------------"
echo "quieres jugar (1 para jugar)"
read jugar
clear
while [ $jugar = '1' ]
	do
		echo "quiere jugar multijugador o con migo (la maquina): numero 1 para multijugador "	
		read multi
		if [ "$multi" = 1 ] 
		then
			echo -e "Cual es el nombre del \e[36m jugador 1: \e[0m"
			read jug1
			echo -e "Cual es el nombre del \e[95m jugador 2: \e[0m"
			read jug2
			if [ "$jug2" = "" ] || [ "jug1" = "" ]
			then
				echo "el nombre de los jugadores no puede estar basio porfavor intentalo de nuevo"
			else 
				clear
			echo "------------------------------------------------------"

			echo "|         Gana             |          Pierde         |"
			echo "------------------------------------------------------"
			echo "|         spock            |          tijera         |"
			echo "|        tijera            |           papel         |"
			echo "|         papel            |          piedra         |"
			echo "|        piedra            |          lagarto        |"
			echo "|        lagarto           |          spock          |"
			echo "|         spock            |          piedra         |"
			echo "|         papel            |          spock          |"
			echo "|        lagarto           |          papel          |"
			echo "|        tijera            |          lagarto        |"
			echo "|        piedra            |          tijera         |"
			echo "------------------------------------------------------"
			echo ""
			echo "que quieres jugar (numero)"
			echo "| num |    Gana             |"
			echo "----------------------------"
			echo "|  1  |    spock            |"
			echo "|  2  |   tijera            |"
			echo "|  3  |    papel            |"
			echo "|  4  |   piedra            |"
			echo "|  5  |   lagarto           |"
			
			echo "elije que quieres jugar $jug1"
			read jugada
			clear 
			echo "------------------------------------------------------"

			echo "|         Gana             |          Pierde         |"
			echo "------------------------------------------------------"
			echo "|         spock            |          tijera         |"
			echo "|        tijera            |           papel         |"
			echo "|         papel            |          piedra         |"
			echo "|        piedra            |          lagarto        |"
			echo "|        lagarto           |          spock          |"
			echo "|         spock            |          piedra         |"
			echo "|         papel            |          spock          |"
			echo "|        lagarto           |          papel          |"
			echo "|        tijera            |          lagarto        |"
			echo "|        piedra            |          tijera         |"
			echo "------------------------------------------------------"
			echo ""
			echo "que quieres jugar (numero)"
			echo "| num |    Gana             |"
			echo "----------------------------"
			echo "|  1  |    spock            |"
			echo "|  2  |   tijera            |"
			echo "|  3  |    papel            |"
			echo "|  4  |   piedra            |"
			echo "|  5  |   lagarto           |"

			echo "elije que quieres jugar $jug2"
			read mijug
			clear

			case $jugada in
				1)
					case $mijug in
						1)
							echo "Escogieron spock"
							echo -e " \e[33m EMPATE intentenlo de nuevo \e[0m" 
						;;
						2)
							echo "jugador $jug1 escogio spock y jugador $jug2 tijeras, spock rompe tijeras "
							echo -e "\e[32m GANA jugador $jug1 felicidades \e[0m"
						;;
						3)
							echo "jugador $jug1 escogio spock y jugador $jug2 papel, papel desautoriza spock"
							echo -e "\e[32m GANA jugador $jug2 felicidades \e[0m"
						;;
						4)
							echo "jugador $jug1 escogio spock y jugador $jug2 piedra, spock vaporiza piedra "
							echo -e "\e[32m GANA jugador $jug1 felicidades \e[0m"
						;;
						5)
							echo "jugador $jug1 escogio spock y jugador $jug2 lagarto, lagarto envenena spock"
							echo -e "\e[32m GANA jugador $jug2 felicidades \e[0m"
						;;
						*)
							echo "el numero $mijug no esta definido porfavor ingresa un numero correcto $jug2"
						;;
			  		esac
				;;
				2)
					case $mijug in
						1)
							echo "jugador $jug1 escogio tijeras y jugador $jug2 spock, spock rompe tijeras "
							echo -e "\e[32m GANA jugador $jug2 felicidades \e[0m"
						;;
						2)
							echo "Escogieron tijeras"
							echo -e " \e[33m EMPATE intentenlo de nuevo \e[0m" 
						;;
						3)
							echo "jugador $jug1 escogio tijeras y jugador $jug2 papel, tijeras corta papel"
							echo -e "\e[32m GANA jugador $jug1 felicidades \e[0m"
						;;
						4)
							echo "jugador $jug1 escogio tijeras y jugador $jug2 piedra, piedra aplasta tijeras "
							echo -e "\e[32m GANA jugador $jug2 felicidades \e[0m"
						;;
						5)
							echo "jugador $jug1 escogio tijeras y jugador $jug2 lagarto, tijeras decapita lagarto"
							echo -e "\e[32m GANA jugador $jug1 felicidades \e[0m"
						;;
						*)
							echo "el numero $mijug no esta definido porfavor ingresa un numero correcto $jug2"
						;;
			  		esac
				;;
				3)
					case $mijug in
						1)
							echo "jugador $jug1 escogio papel y jugador $jug2 spock, papel desautoriza spock"
							echo -e "\e[32m GANA jugador $jug1 felicidades \e[0m"
						;;
						2)
							echo "jugador $jug1 escogio papel y jugador $jug2 tijeras, tijeras corta papel"
							echo -e "\e[32m GANA jugador $jug2 felicidades \e[0m"
						;;
						3)
							echo "Escogieron papel"
							echo -e " \e[33m EMPATE intentenlo de nuevo \e[0m"
						;;
						4)
							echo "jugador $jug1 escogio papel y jugador $jug2 piedra, papel envuelve piedra"
							echo -e "\e[32m GANA jugador $jug1 felicidades \e[0m"
						;;
						5)
							echo "jugador $jug1 escogio papel y jugador $jug2 lagarto, lagarto devora papel"
							echo -e "\e[32m GANA jugador $jug2 felicidades \e[0m"
						;;
						*)
							echo "el numero $mijug no esta definido porfavor ingresa un numero correcto $jug2"
						;;
			  		esac
			  	;;
			  	4)
					case $mijug in
						1)
							echo "jugador $jug1 escogio piedra y jugador $jug2 spock, spock vaporiza piedra "
							echo -e "\e[32m GANA jugador $jug2 felicidades \e[0m"
						;;
						2)
							echo "jugador $jug1 escogio piedra y jugador $jug2 tijeras, piedra aplasta tijeras "
							echo -e "\e[32m GANA jugador $jug1 felicidades \e[0m"
						;;
						3)
							echo "jugador $jug1 escogio piedra y jugador $jug2 papel, papel envuelve piedra"
							echo -e "\e[32m GANA jugador $jug2 felicidades \e[0m"
						;;
						4)
							echo "Escogieron piedra"
							echo -e " \e[33m EMPATE intentenlo de nuevo \e[0m" 
						;;
						5)
							echo "jugador $jug1 escogio piedra y jugador $jug2 lagarto, piedra aplasta lagarto"
							echo -e "\e[32m GANA jugador $jug1 felicidades \e[0m" 
						;;
						*)
							echo "el numero $mijug no esta definido porfavor ingresa un numero correcto $jug2"
						;;
			  		esac
			  	;;
			  	5)
					case $mijug in
						1)
							echo "jugador $jug1 escogio lagarto y jugador $jug2 spock, lagarto envenena spock"
							echo -e "\e[32m GANA jugador $jug1 felicidades \e[0m" 

						;;
						2)
							echo "jugador $jug1 escogio lagarto y jugador $jug2 tijeras, tijeras decapita lagarto"
							echo -e "\e[32m GANA jugador $jug2 felicidades \e[0m"
						;;
						3)
							echo "jugador $jug1 escogio lagarto y jugador $jug2 papel, lagarto devora papel"
							echo -e "\e[32m GANA jugador $jug1 felicidades \e[0m" 
						;;
						4)
							echo "jugador $jug1 escogio lagarto y jugador $jug2 piedra, piedra aplasta lagarto"
							echo -e "\e[32m GANA jugador $jug2 felicidades \e[0m"
						;;
						5)
							echo "jugador $jug1 escogio lagarto"
							echo -e " \e[33m EMPATE intentenlo de nuevo \e[0m"
						;;
						*)
							echo "el numero $mijug no esta definido porfavor ingresa un numero correcto $jug2"
						;;
			  		esac
			  	;;
				*)
					echo "el numero $jugada no esta definido porfavor ingresa un numero correcto $jug1"
				;;
	  		esac

	  		echo "quieren volver a jugar (1 para si)"
	  		read jugar
	  		clear


			fi
	
		else

			echo "------------------------------------------------------"

			echo "|         Gana             |          Pierde         |"
			echo "------------------------------------------------------"
			echo "|         spock            |          tijera         |"
			echo "|        tijera            |           papel         |"
			echo "|         papel            |          piedra         |"
			echo "|        piedra            |          lagarto        |"
			echo "|        lagarto           |          spock          |"
			echo "|         spock            |          piedra         |"
			echo "|         papel            |          spock          |"
			echo "|        lagarto           |          papel          |"
			echo "|        tijera            |          lagarto        |"
			echo "|        piedra            |          tijera         |"
			echo "------------------------------------------------------"
			echo ""
			echo "que quieres jugar (numero)"
			echo "| num |    Gana             |"
			echo "----------------------------"
			echo "|  1  |    spock            |"
			echo "|  2  |   tijera            |"
			echo "|  3  |    papel            |"
			echo "|  4  |   piedra            |"
			echo "|  5  |   lagarto           |"
			
			read jugada

			mijug=$(shuf -n 1 -i 1-5)
			case $jugada in
				1)
					case $mijug in
						1)
							echo "Escogiste spock al igual que yo"
							echo -e " \e[33m EMPATE intentamos de nuevo \e[0m" 
						;;
						2)
							echo "Escogiste spock y yo tijeras, spock rompe tijeras "
							echo -e "\e[32m GANASTE felicidades \e[0m"
						;;
						3)
							echo "Escogiste spock y yo papel, papel desautoriza spock"
							echo -e "\e[31m PERDISTE suerte para la proxima  \e[0m"
						;;
						4)
							echo "Escogiste spock y yo piedra, spock vaporiza piedra "
							echo -e "\e[32m GANASTE felicidades \e[0m"
						;;
						5)
							echo "Escogiste spock y yo lagarto, lagarto envenena spock"
							echo -e "\e[31m PERDISTE suerte para la proxima  \e[0m"
						;;
						*)
							
						;;
			  		esac
				;;
				2)
					case $mijug in
						1)
							echo "Escogiste tijeras y yo spock, spock rompe tijeras "
							echo -e "\e[31m PERDISTE suerte para la proxima  \e[0m"
						;;
						2)
							echo "Escogiste tijeras al igual que yo"
							echo -e " \e[33m EMPATE intentamos de nuevo \e[0m" 
						;;
						3)
							echo "Escogiste tijeras y yo papel, tijeras corta papel"
							echo -e "\e[32m GANASTE felicidades \e[0m"
						;;
						4)
							echo "Escogiste tijeras y yo piedra, piedra aplasta tijeras "
							echo -e "\e[31m PERDISTE suerte para la proxima  \e[0m"
						;;
						5)
							echo "Escogiste tijeras y yo lagarto, tijeras decapita lagarto"
							echo -e "\e[32m GANASTE felicidades \e[0m"
						;;
						*)
							
						;;
			  		esac
				;;
				3)
					case $mijug in
						1)
							echo "Escogiste papel y yo spock, papel desautoriza spock"
							echo -e "\e[32m GANASTE felicidades \e[0m"
						;;
						2)
							echo "Escogiste papel y yo tijeras, tijeras corta papel"
							echo -e "\e[31m PERDISTE suerte para la proxima  \e[0m"
						;;
						3)
							echo "Escogiste papel al igual que yo"
							echo -e " \e[33m EMPATE intentamos de nuevo \e[0m" 
						;;
						4)
							echo "Escogiste papel y yo piedra, papel envuelve piedra"
							echo -e "\e[32m GANASTE felicidades \e[0m"
						;;
						5)
							echo "Escogiste papel y yo lagarto, lagarto devora papel"
							echo -e "\e[31m PERDISTE suerte para la proxima  \e[0m"
						;;
						*)
							
						;;
			  		esac
			  	;;
			  	4)
					case $mijug in
						1)
							echo "Escogiste piedra y yo spock, spock vaporiza piedra "
							echo -e "\e[31m PERDISTE suerte para la proxima  \e[0m"
						;;
						2)
							echo "Escogiste piedra y yo tijeras, piedra aplasta tijeras "
							echo -e "\e[32m GANASTE felicidades \e[0m"
						;;
						3)
							echo "Escogiste piedra y yo papel, papel envuelve piedra"
							echo -e "\e[31m PERDISTE suerte para la proxima  \e[0m"
						;;
						4)
							echo "Escogiste piedra al igual que yo"
							echo -e " \e[33m EMPATE intentamos de nuevo \e[0m" 
						;;
						5)
							echo "Escogiste piedra y yo lagarto, piedra aplasta lagarto"
							echo -e "\e[32m GANASTE felicidades \e[0m" 
						;;
						*)
							
						;;
			  		esac
			  	;;
			  	5)
					case $mijug in
						1)
							echo "Escogiste lagarto y yo spock, lagarto envenena spock"
							echo -e "\e[32m GANASTE felicidades \e[0m" 

						;;
						2)
							echo "Escogiste lagarto y yo tijeras, tijeras decapita lagarto"
							echo -e "\e[31m PERDISTE suerte para la proxima  \e[0m"
						;;
						3)
							echo "Escogiste lagarto y yo papel, lagarto devora papel"
							echo -e "\e[32m GANASTE felicidades \e[0m"
						;;
						4)
							echo "Escogiste lagarto y yo piedra, piedra aplasta lagarto"
							echo -e "\e[31m PERDISTE suerte para la proxima  \e[0m"
						;;
						5)
							echo "Escogiste lagarto al igual que yo"
							echo -e " \e[33m EMPATE intentamos de nuevo \e[0m"
						;;
						*)
							
						;;
			  		esac
			  	;;
				*)
					echo "el numero $jugada no esta definido"
				;;
	  		esac

	  		echo "quieres volver a jugar (1 para si)"
	  		read jugar
	  		clear

  		fi
	done

echo "adios"
