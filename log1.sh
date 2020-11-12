#!/bin/bash
trap  ''  2  20
error=3
while [ $error != 0 ]; do 
    base=$PWD
    echo -e -n " User: " 
    read -e usar  
    echo -e -n " Password: "
    read -s pswd        
    if [ "$usar" == "salir" ]; then 
        exit 1 
    fi

    linea=`sudo -S grep -r $usar /etc/shadow`

    if [ ${linea} > 1 ]; then 

        IFS='$' read -e -r -a array <<< "$linea"  

        index="\$${array[1]}\$${array[2]}"
        hash=`python -c 'import crypt; import sys; print crypt.crypt( sys.argv[1] , sys.argv[2])' $pswd $index`

        match=`echo "$linea" | grep -c "$hash"`             #detecta si se dieron like en tinder

        if [ "$match" -eq 1 ]; then
            clear
            echo -e "Bienvenid@"
            
            while [ 1 ];do                           #Comandos a ingresar
                printf "\033[1;32mShell$USER@$HOSTNAME\033\033[1;37m:\033\033[1;34m~$PWD\033[1;37m$\033\033[0m " 
                read -e  command
                current=$PWD
                cd $base
                case "$command" in
                    'help')        ./comandos.sh ayuda          ;;
                    'infosys')      ./infosis.sh inforsys $pswd  ;;
                    'arbol')        echo "Escriba directorio o pulse enter"
                                    read -e dir
                                    ./arbol.sh $dir ;;
                    'fecha1')        ./fechayhora1.sh          ;;
                    'fecha2')         ./fechayhora2.sh          ;;
                    'buscar')        ./buscar.sh          ;;
                    'piedrapapel')        ./piedrapapel.sh                    ;;
                    'gato')         ./juegogato.sh                    ;;
                    'prebeplayer')  ./prebeplayer.sh $pswd       ;;
                    'creditos')     ./creditos.sh;;
                    'salir')        exit 1                       ;;
                    *)              cd $current; $command        ;;
                esac
                cd $current
            done
        else
            echo -e " Contrasena incorrecta intentalo de nuevo "
            let fails--
        fi
    else
        echo -e " El usuario no existe "
        let fails--
    fi
done
echo -e " ADIOS! "  
