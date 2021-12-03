#!/bin/bash


read -p "Introduce una altura en centimetros " paltura
read -p "Introduce una segunda altura en centimetros " saltura
read -p "Introduce una tercera altura en centimetros " taltura

paltura=$((paltura / 100))
saltura=$((saltura / 100))
taltura=$((taltura / 100))


if [ $paltura -gt $saltura ]&&[ $paltura -gt $taltura ]
then echo "$paltura m es la mayor altura"
fi

if [ $saltura -gt $paltura ]&&[ $saltura -gt $taltura ]
then echo "$saltura m es la mayor altura"
fi

if [ $taltura -gt $paltura ]&&[ $taltura -gt $saltura ]
then echo "$taltura m es la mayor altura"
fi


