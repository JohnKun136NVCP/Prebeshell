#!/bin/bash
echo "Que distribucion tienes?"
echo "1) Debian / Ubuntu / Linux Mint"
echo "2) Red Hat / Centos / Fedora"
echo "3) Arch / Manjaro "
echo "4) openSUSE"
read op
if [ $op==$1 ]; then
	sudo apt install -y tree
	cd ~
	echo "alias arbol='tree'">>~/.bashrc
	cd ~
	source ~/.bashrc
	arbol
	clear
elif [ $op==$2 ]; then
	yum install tree
	cd ~
	echo "alias arbol='tree'">>~/.bashrc
	cd ~
	source ~/.bashrc
	arbol
	clear
	
elif [ $op==$3 ]; then
	sudo pacman -S tree
	cd ~
	echo "alias arbol='tree'">>~/.bashrc
	cd ~
	source ~/.bashrc
	arbol
	clear
elif [ $op==$4 ]; then
	zypper install tree
	cd ~
	echo "alias arbol='tree'">>~/.bashrc
	cd ~
	source ~/.bashrc
	arbol
	clear
fi
