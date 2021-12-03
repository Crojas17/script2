#!/bin/bash

read -p "INtroduce dos numeros: " numero1 numero2

suma=0
contador=0
for (( i=$numero1; i<=$numero2; i++ ))
do

        contador=$((contador + 1))
        suma=$((suma + i))
done
echo "El total es: $suma"
