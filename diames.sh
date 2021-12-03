#! /bin/bash


mes=$(date +%m) #COn esta variable tenemos el numero del mes para usarlo abajo y que sea mas facil

case $mes in

	1 | 3 | 5 | 7 | 8 | 10 | 12)
	echo "Estamos en el mes " `date +%B`  " y tiene 31 dias"
	;;

	4 | 6 | 9 | 11)
	echo "Estamos en el mes " `date +%B`  " y tiene 30 dias"
	;;

	2)
	echo "Estamos en el mes " `date +%B`  " y tiene 28 dias o 29 si es bisiesto"
	;;

esac
