#! /bin/bash

read -p "Introduce tu edad: " edad

((year=`date +%Y-$edad`)) #Calculamos nuestro año con el comando date - nuestra edad

echo "Has nacido en $year "

decada=`echo $year | cut -c3`
((decada=decada*10)) #Lo hacemos asi para calcular por 10 el ultimo numero
		     #Obtenido con el cut y asi tener la decada sea cual sea el año

echo "Has nacido en la decada de los $decada"
