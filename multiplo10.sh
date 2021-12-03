#!/bin/bash
numeros='^[0-9]+([,][0-9]+)+?$'
if ! [[ $1 =~ $numeros ]]
then echo "Introduce un numero valido"
else
    divisores=""
    for i in $(seq 1 $1)
    do
        let resto=$1%$i
        if [ $resto -eq 0 ]
        then
            divisores=$divisores$i" "
        fi
    done
	echo "Los divisores de "$1" son los siguientes: " $divisores

fi
