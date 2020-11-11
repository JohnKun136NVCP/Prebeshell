#!/bin/bash
trap  ''  2  20

#juego gato solo para dos personas
jug1="o"
jug2="o"
gan=0
colorjug=('0' '34' '35')

echo "hola este es el juego gato, esta echo para dos jugadores"
echo "${colorjug[1]}"
echo -e "Cual es el nombre del \e[${colorjug[1]}m jugador 1: \e[${colorjug[0]}m"
read jug1
echo -e "Cual es el nombre del \e[${colorjug[2]}m jugador 2: \e[${colorjug[0]}m"
read jug2

num=('a' 'b' 'c' 'd' 'e' 'f' 'g' 'h' 'i')
color=( '0' '0' '0' '0' '0' '0' '0' '0' '0')

if [ "$jug2" = "" ] || [ "jug1" = "" ]
then
	echo "el nombre de los jugadores no puede estar basio porfavor intentalo de nuevo"
else 
	clear
	echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
	echo "  -------------"
	echo "  | ${num[0]} | ${num[1]} | ${num[2]} |"
	echo "  -------------"
	echo "  | ${num[3]} | ${num[4]} | ${num[5]} |"
	echo "  -------------"
	echo "  | ${num[6]} | ${num[7]} | ${num[8]} |"
	echo "  -------------"
	ban=0
	ban2=0
	while [ "$gan" = "0" ]
	do
		while [ "$ban" = "0" ]
		do
			echo -e "que posicion quiere jugar \e[${colorjug[1]}m $jug1 \e[0m ( de la 'a' la 'i' ) si ya no hay posicion escriba x"
			read posicion
			case $posicion in
				a)
					if [ "${color[0]}" = "34" ] || [ "${color[0]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban=0	
					else
						num[0]='O'
						color[0]='34'

						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "34" ] && [ "${color[1]}" = "34" ] && [ "${color[2]}" = "34" ]
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
							
						elif  [ "${color[0]}" = "34" ] && [ "${color[3]}" = "34" ] && [ "${color[6]}" = "34" ] 
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[0]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[1]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[7]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[5]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[6]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[3]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[5]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[6]}" = "34" ] && [ "${color[7]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						fi	
						ban=1
					fi
				;;
				b)
					if [ "${color[1]}" = "34" ] || [ "${color[1]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban=0	
					else
						num[1]='O'
						color[1]='34'

						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "34" ] && [ "${color[1]}" = "34" ] && [ "${color[2]}" = "34" ]
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
							
						elif  [ "${color[0]}" = "34" ] && [ "${color[3]}" = "34" ] && [ "${color[6]}" = "34" ] 
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[0]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[1]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[7]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[5]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[6]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[3]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[5]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[6]}" = "34" ] && [ "${color[7]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						fi	
						ban=1
					fi
				;;
				c)
					if [ "${color[2]}" = "34" ] || [ "${color[2]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban=0	
					else
						num[2]='O'
						color[2]='34'

						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "34" ] && [ "${color[1]}" = "34" ] && [ "${color[2]}" = "34" ]
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
							
						elif  [ "${color[0]}" = "34" ] && [ "${color[3]}" = "34" ] && [ "${color[6]}" = "34" ] 
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[0]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[1]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[7]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[5]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[6]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[3]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[5]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[6]}" = "34" ] && [ "${color[7]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						fi	
						ban=1
					fi
				;;
				d)
					if [ "${color[3]}" = "34" ] || [ "${color[3]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban=0	
					else
						num[3]='O'
						color[3]='34'

						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "34" ] && [ "${color[1]}" = "34" ] && [ "${color[2]}" = "34" ]
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
							
						elif  [ "${color[0]}" = "34" ] && [ "${color[3]}" = "34" ] && [ "${color[6]}" = "34" ] 
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[0]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[1]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[7]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[5]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[6]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[3]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[5]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[6]}" = "34" ] && [ "${color[7]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						fi	
						ban=1
					fi
				;;
				e)
					if [ "${color[4]}" = "34" ] || [ "${color[4]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban=0	
					else
						num[4]='O'
						color[4]='34'

						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "34" ] && [ "${color[1]}" = "34" ] && [ "${color[2]}" = "34" ]
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
							
						elif  [ "${color[0]}" = "34" ] && [ "${color[3]}" = "34" ] && [ "${color[6]}" = "34" ] 
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[0]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[1]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[7]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[5]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[6]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[3]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[5]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[6]}" = "34" ] && [ "${color[7]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						fi	
						ban=1
					fi
				;;
				f)
					if [ "${color[5]}" = "34" ] || [ "${color[5]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban=0	
					else
						num[5]='O'
						color[5]='34'

						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "34" ] && [ "${color[1]}" = "34" ] && [ "${color[2]}" = "34" ]
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
							
						elif  [ "${color[0]}" = "34" ] && [ "${color[3]}" = "34" ] && [ "${color[6]}" = "34" ] 
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[0]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[1]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[7]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[5]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[6]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[3]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[5]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[6]}" = "34" ] && [ "${color[7]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						fi	
						ban=1
					fi
				;;
				g)
					if [ "${color[6]}" = "34" ] || [ "${color[6]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban=0	
					else
						num[6]='O'
						color[6]='34'

						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "34" ] && [ "${color[1]}" = "34" ] && [ "${color[2]}" = "34" ]
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
							
						elif  [ "${color[0]}" = "34" ] && [ "${color[3]}" = "34" ] && [ "${color[6]}" = "34" ] 
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[0]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[1]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[7]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[5]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[6]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[3]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[5]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[6]}" = "34" ] && [ "${color[7]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						fi	
						ban=1
					fi
				;;
				h)
					if [ "${color[7]}" = "34" ] || [ "${color[7]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban=0	
					else
						num[7]='O'
						color[7]='34'

						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "34" ] && [ "${color[1]}" = "34" ] && [ "${color[2]}" = "34" ]
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
							
						elif  [ "${color[0]}" = "34" ] && [ "${color[3]}" = "34" ] && [ "${color[6]}" = "34" ] 
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1

						elif  [ "${color[0]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[1]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[7]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[5]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[6]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[3]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[5]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[6]}" = "34" ] && [ "${color[7]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						fi	
						ban=1
					fi
				;;
				i)
					if [ "${color[8]}" = "34" ] || [ "${color[8]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban=0	
					else
						num[8]='O'
						color[8]='34'

						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "34" ] && [ "${color[1]}" = "34" ] && [ "${color[2]}" = "34" ]
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
							
						elif  [ "${color[0]}" = "34" ] && [ "${color[3]}" = "34" ] && [ "${color[6]}" = "34" ] 
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[0]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[1]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[7]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[5]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[2]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[6]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[3]}" = "34" ] && [ "${color[4]}" = "34" ] && [ "${color[5]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						elif  [ "${color[6]}" = "34" ] && [ "${color[7]}" = "34" ] && [ "${color[8]}" = "34" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[1]}m$jug1 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							ban2=1
						fi	
						ban=1
					fi
				;;
				*)
					echo "esa opcion no existe"
				;;
			esac
		done
####Jugador2 -----------------------------------------------------------------------------------------------------------------------
		while [ "$ban2" = "0" ]
		do
			echo -e "que posicion quiere jugar \e[${colorjug[2]}m $jug2 \e[0m ( de la 'a' la 'i' ) si ya no hay posicion escriba x"
			read posicion
			case $posicion in
				a)
					if [ "${color[0]}" = "34" ] || [ "${color[0]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban2=0	
					else
						num[0]='X'
						color[0]='35'

						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "35" ] && [ "${color[1]}" = "35" ] && [ "${color[2]}" = "35" ]
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							
						elif  [ "${color[0]}" = "35" ] && [ "${color[3]}" = "35" ] && [ "${color[6]}" = "35" ] 
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[0]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[1]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[7]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[5]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[6]}" = "35" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[3]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[5]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[6]}" = "35" ] && [ "${color[7]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						fi	
						ban2=1
					fi
				;;
				b)
					if [ "${color[1]}" = "34" ] || [ "${color[1]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban2=0	
					else
						num[1]='X'
						color[1]='35'

						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "35" ] && [ "${color[1]}" = "35" ] && [ "${color[2]}" = "35" ]
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							
						elif  [ "${color[0]}" = "35" ] && [ "${color[3]}" = "35" ] && [ "${color[6]}" = "35" ] 
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[0]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[1]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[7]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[5]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[6]}" = "35" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[3]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[5]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[6]}" = "35" ] && [ "${color[7]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						fi	
						ban2=1
					fi
				;;
				c)
					if [ "${color[2]}" = "34" ] || [ "${color[2]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban2=0	
					else
						num[2]='X'
						color[2]='35'

						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "35" ] && [ "${color[1]}" = "35" ] && [ "${color[2]}" = "35" ]
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							
						elif  [ "${color[0]}" = "35" ] && [ "${color[3]}" = "35" ] && [ "${color[6]}" = "35" ] 
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[0]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[1]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[7]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[5]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[6]}" = "35" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[3]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[5]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[6]}" = "35" ] && [ "${color[7]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						fi	
						ban2=1
					fi
				;;
				d)
					if [ "${color[3]}" = "34" ] || [ "${color[3]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban2=0	
					else
						num[3]='X'
						color[3]='35'


						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "35" ] && [ "${color[1]}" = "35" ] && [ "${color[2]}" = "35" ]
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							
						elif  [ "${color[0]}" = "35" ] && [ "${color[3]}" = "35" ] && [ "${color[6]}" = "35" ] 
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[0]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[1]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[7]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[5]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[6]}" = "35" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[3]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[5]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[6]}" = "35" ] && [ "${color[7]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						fi	
						ban2=1
					fi
				;;
				e)
					if [ "${color[4]}" = "34" ] || [ "${color[4]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban2=0	
					else
						num[4]='X'
						color[4]='35'

						
						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "35" ] && [ "${color[1]}" = "35" ] && [ "${color[2]}" = "35" ]
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							
						elif  [ "${color[0]}" = "35" ] && [ "${color[3]}" = "35" ] && [ "${color[6]}" = "35" ] 
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[0]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[1]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[7]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[5]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[6]}" = "35" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[3]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[5]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[6]}" = "35" ] && [ "${color[7]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						fi	
						ban2=1
					fi
				;;
				f)
					if [ "${color[5]}" = "34" ] || [ "${color[5]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban=0	
					else
						num[5]='X'
						color[5]='35'

						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "35" ] && [ "${color[1]}" = "35" ] && [ "${color[2]}" = "35" ]
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							
						elif  [ "${color[0]}" = "35" ] && [ "${color[3]}" = "35" ] && [ "${color[6]}" = "35" ] 
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[0]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[1]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[7]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[5]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[6]}" = "35" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[3]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[5]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[6]}" = "35" ] && [ "${color[7]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						fi	
						ban2=1
					fi
				;;
				g)
					if [ "${color[6]}" = "34" ] || [ "${color[6]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban2=0	
					else
						num[6]='X'
						color[6]='35'

						
						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "35" ] && [ "${color[1]}" = "35" ] && [ "${color[2]}" = "35" ]
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							
						elif  [ "${color[0]}" = "35" ] && [ "${color[3]}" = "35" ] && [ "${color[6]}" = "35" ] 
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[0]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[1]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[7]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[5]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[6]}" = "35" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[3]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[5]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[6]}" = "35" ] && [ "${color[7]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						fi	
						ban2=1
					fi
				;;
				h)
					if [ "${color[7]}" = "34" ] || [ "${color[7]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban2=0	
					else
						num[7]='X'
						color[7]='35'

						
						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "35" ] && [ "${color[1]}" = "35" ] && [ "${color[2]}" = "35" ]
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							
						elif  [ "${color[0]}" = "35" ] && [ "${color[3]}" = "35" ] && [ "${color[6]}" = "35" ] 
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[0]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[1]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[7]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[5]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[6]}" = "35" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[3]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[5]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[6]}" = "35" ] && [ "${color[7]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						fi	
						ban2=1
					fi
				;;
				i)
					if [ "${color[8]}" = "34" ] || [ "${color[8]}" = "35" ]
					then
						echo "esa posicion ya esta tomada"
						ban2=0	
					else
						num[8]='X'
						color[8]='35'

						clear
						echo -e "el jugador \e[${colorjug[1]}m $jug1 sera 0 \e[${colorjug[0]}m y el jugador \e[${colorjug[2]}m $jug2 sera X\e[${colorjug[0]}m"
						echo "  -------------"
						echo -e "  | \e[${color[0]}m${num[0]}\e[0m | \e[${color[1]}m${num[1]}\e[0m | \e[${color[2]}m${num[2]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[3]}m${num[3]}\e[0m | \e[${color[4]}m${num[4]}\e[0m | \e[${color[5]}m${num[5]}\e[0m |"
						echo "  -------------"
						echo -e "  | \e[${color[6]}m${num[6]}\e[0m | \e[${color[7]}m${num[7]}\e[0m | \e[${color[8]}m${num[8]}\e[0m |"
						echo "  -------------"
						if [ "${color[0]}" = "35" ] && [ "${color[1]}" = "35" ] && [ "${color[2]}" = "35" ]
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
							
						elif  [ "${color[0]}" = "35" ] && [ "${color[3]}" = "35" ] && [ "${color[6]}" = "35" ] 
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[0]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[1]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[7]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[5]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[2]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[6]}" = "35" ]  
						then
							echo -e "\e[32m El jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[3]}" = "35" ] && [ "${color[4]}" = "35" ] && [ "${color[5]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						elif  [ "${color[6]}" = "35" ] && [ "${color[7]}" = "35" ] && [ "${color[8]}" = "35" ]  
						then
							echo -e "\e[32mEl jugador \e[${colorjug[2]}m$jug2 \e[32m ha ganado la partida"
							echo "Nos vemos"
							gan=1
						fi	
						ban2=1
					fi
				;;
				*)
					echo "esa opcion no existe"
				;;
			esac
		done

		ban=0
		ban2=0


	done
echo ""
fi  
