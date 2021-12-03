#! /bin/bash

clear
estado=s

while [ $estado = s ]

do
	read -p "Introduce un usuario para compribar si esta en el sistema: " usuario

	if [ `cat /etc/passwd | grep $usuario` ]

	then

	nombre=`getent passwd $usuario | cut -d ':' -f 1`
	idUsuario=`getent passwd $usuario | cut -d ':' -f 3`
	idGrupo=`getent passwd $usuario | cut -d ':' -f 4`
	CarpetaUsuario=`getent passwd $usuario | cut -d ':' -f 6`

	echo "EL nombre de usuario es $nombre, el id $idUsuario, el grupo es $idGrupo y la carpeta $CarpetaUsuario. "
	read -p "¿Desea añadir otro usuario? Escriba <<s>> para si o <<n>> para no. " estado

	else

	echo "El usuario $usuario introducido no esta en el sistema. "
	read -p "¿Desea añadir otro usuario? Escriba <<s>> para si o <<n>> para no. " estado
	fi

done
