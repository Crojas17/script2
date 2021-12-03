#!/bin/bash

if [ $# -eq 1 ]
then
	  if [ -d $1 ]

	  then
	   cont=0
	   for i in `ls $1`
	    do
	     if [ -f $1/$i ]
		then
		((cont+1))
	     fi
	     echo "$i"
	    done

	    if [ $cont -gt 10 ]
	    then echo "Hay 10 ficheros o mas"
	    else echo "Hay menos de 10 ficheros"
	    fi
	else echo "El parametro no es un directorio"
	fi
else
echo "No se han introducido parametros"
fi
echo "$cont"

