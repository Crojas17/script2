#!/bin/bash

clear
echo "Calculadora"

if [ $# != 3 ]; #Si los comendaos que entran son menos de 3 nos mostara el siguiente mensaje

	then
        	echo "Indique que operacion quiere hacer y ponga dos numeros"
		echo "Las operaciones son sumar, restar, multiplicar y dividir. Ejemplo: sumar 2 2"
        	exit 1
	fi

	sumar () {
        	echo $1 " + " $2 " es "
        	resultado=$(($1 + $2))
        	echo $resultado
	}

	restar () {
        	echo $1 " - " $2 " es "
        	resultado=$(($1-$2))
        	echo $resultado
	}

	multiplicar () {
        	echo $1 " * " $2 " es "
        	resultado=$(($1*$2))
        	echo $resultado
	}

	dividir () {
        	echo $1 " / " $2 " es "
        	resultado=$(($1/$2))
        	echo $resultado
	}

#Esta parte es la de salidas, si las operaciones se realizan bien dara salida 0 por tanto no habra error, la salida 1 que es la del error es por si
#realizamos mal la operacion indicada por ejemplo poniendo numeros de mas o letras asi que, al haber error, mostrara el mensaje indicado. SE señala
#que $1 como primer argumento que entra que es quien hace llamada a la funcion.

if [[ "$1" = "sumar" ]]
then
        sumar $2 $3
        exit 0

elif [[ "$1" = "restar" ]]
then
        restar $2 $3
        exit 0

elif [[ "$1" = "multiplicar" ]]
then
        multiplicar $2 $3
        exit 0

elif [[ "$1" = "dividir" ]]
then
        dividir $2 $3
        exit 0

else
	echo "Indique que operacion quiere hacer y ponga dos numeros"

        exit 1
fi
