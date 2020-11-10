#!/bin/bash
#Parte del usuario y contrasena.
usuario=$USER
pass= $HOME/bin
user=$(zenity --title 'Su contraseña' --password 'Introduzca su contraseña' --username)
if [ ! -z $user ]; then
	# Zenity devuelve ambos campos separados por |
	usu=$(echo $user | cut -d'|' -f1)
	passwd=$(echo $user | cut -d'|' -f2)
	if [ $usuario = $usu ] && [ $pass = $passwd ]; then
		zenity --info --title 'Correcta' --text 'Usuario y contraseña correcta' --ellipsize
	else
		zenity --error --title 'Incorrecta' --text 'Usuario y/o contraseña incorrecta' --ellipsize
	fi
fi

