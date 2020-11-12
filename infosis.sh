#!/bin/bash
trap  ''  2  20

clear 

echo -e "\e[36mINFORMACION DEL SISTEMA\e[0m"
echo ""
echo -e "\e[36mLa terminal se esta ejecutando en: \e[0m"
command pwd
echo -e "\e[36mUsuario actual: \e[0m$(whoami)"
echo -e "-----------------------------\e[36mUsuarios conecados :\e[0m----------------------------"
command  w -s -f -h
echo ""
echo -e "\e[36mArquitectura del sistema: \e[0m$(uname -m)"
echo -e "\e[36mSistema operativo: \e[0m$(cat /proc/version) "
echo -e "------------------------\e[36mInformacion de la memoria RAM:\e[0m-----------------------"
command free -h -t

echo ""
echo "presione una tecla para continual"
read x
