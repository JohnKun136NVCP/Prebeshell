#!/bin/bash
#Código tomado de https://blog.niklasottosson.com/linux/bash-script-simulating-the-tree-command/
trap  ''  2  20
directorio=$PWD;
declare -i dird=0;
function listaarch {
        cd "$1";
        for fichero in *
        do
                for ((i=0; $i < $dird; i++))
                do
                        printf "\t";
                done
                
                if [ -d "$fichero" ]
                then
                        printf "\033[0;31m\1[$fichero]\033[0m\n";
                else
                		
                        printf "└──\e[1;34m$fichero\e[0m\n";
                fi

                
                if [ -d "$fichero" ]
                then

                        dird=$dird+1;
                        listaarch "$fichero";
                        cd ..;
                fi
        done
        
        let dird=$dird-1;
}

listaarch "$1";

cd $directorio;
unset i dird;

