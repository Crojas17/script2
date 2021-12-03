#!/bin/bash


if test -d $1

then

	tar -rvf copia_script_`date +%d%m%Y`.tar $1/*.sh 1>/dev/null #Cn esto ultimo evitamos que
								     #nos muestre mensajes al empaquetar los ficheros

	else

	echo "Ruta Incorrecta. Introduce de nuevo la ruta"
fi
