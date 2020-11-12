#!/bin/bash  

error=3
while [ $error != 0 ]; do 
    base=$PWD
    echo -e -n " User: " 
    read usar  
    echo -e -n " Password: "
    read -s pswd        
    if [ "$usar" == "salir" ]; then 
        exit 1 
    fi

    linea=`sudo -S grep -r $usar /etc/shadow`

    if [ ${linea} > 1 ]; then 

        IFS='$' read -r -a array <<< "$linea"  

        index="\$${array[1]}\$${array[2]}"
        hash=`python -c 'import crypt; import sys; print crypt.crypt( sys.argv[1] , sys.argv[2])' $pswd $index`

        match=`echo "$linea" | grep -c "$hash"`             #detecta si se dieron like en tinder

        if [ "$match" -eq 1 ]; then
            clear
            echo -e "Bienvenid@"
            
            while [ 1 ];do                           #Comandos a ingresar
                printf "\033[1;32mShell$USER@$HOSTNAME\033\033[1;37m:\033\033[1;34m~$PWD\033[1;37m$\033\033[0m " 
                read  command
                current=$PWD
                cd $base
                case "$command" in
                    'help')        ./comandos.sh ayuda          ;;
                    'infosys')      ./comandos.sh infosys $pswd  ;;
                    'arbol')        ./tree.sh funcionarbol $base    ;;
                    'fecha')        ./fecha.sh fecha          ;;
                    'hora')         ./hora.sh hora           ;;
                    'busca')        ./buscar.sh busca          ;;
                    'pong')         ./miahorcado.sh                    ;;
                    'gato')         ./gato.sh                    ;;
                    'prebeplayer')  ./PrebePlayer.sh $pswd       ;;
                    'salir')        exit 1                       ;;
                    *)              cd $current; $command        ;;
                esac
                cd $current
            done
        else
            echo -e " Contrasena incorrecta te quedan $(($fails-1)) intentos "
            let fails--
        fi
    else
        echo -e " El usuario no existe "
        let fails--
    fi
done
echo -e " ADIOS! "  