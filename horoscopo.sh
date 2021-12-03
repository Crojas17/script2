#!/bin/bash

clear

read -p "Introduce el año completo en el que naciste : " year
let resto=year%12

case $resto in
	0) horos="el Mono" ;;

	1) horos="el Gallo" ;;

	2) horos="el Perro" ;;

	3) horos="el Cerdo" ;;

	4) horos="la Rata" ;;

	5) horos="el Buey" ;;

	6) horos="el Tigre" ;;

	7) horos="el Conejo" ;;

	8) horos="el Dragon" ;;

	9) horos="la Serpiente" ;;

	10) horos="el Caballo" ;;

	11) horos="la Cabra" ;;

	*) echo "Introduce correctamente el año"
esac
echo "Naciste en $year y por tanto naciste en el año de" $horos
