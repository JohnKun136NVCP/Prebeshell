#!/bin/bash
read -p "Ingrese su nombre de usuario: " USERNAME

id -u $USERNAME > /dev/null
if [ $? -ne 0 ]
then
        echo "Su $USERNAME no es valido"
        exit 1
else
        echo "Ingrese su contrasena:"
        read -s PASSWD
        export PASSWD
        ORIGPASS=`grep -w "$USERNAME" /etc/shadow | cut -d: -f2`
        export ALGO=`echo $ORIGPASS | cut -d'$' -f2`
        export SALT=`echo $ORIGPASS | cut -d'$' -f3`
        GENPASS=$(perl -le 'print crypt("$ENV{PASSWD}","\$$ENV{ALGO}\$$ENV{SALT}\$")')
        if [ "$GENPASS" == "$ORIGPASS" ]
        then
                echo "Bienvenid@"
                ar=tree
                exit 0
        else
                echo "El nombre u contrasena esta mal"
                exit 1
        fi
fi