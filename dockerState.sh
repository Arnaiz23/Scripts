#!/bin/bash

PS3="Seleccionar una opcion: "

select option in Prod Dev Down Exit
do
	case $option in
		Prod)
			echo "Arrancando docker en Produccion"
			docker compose up -d
			echo "------------------------------"
			echo "    Contenedores actuales"
			echo "------------------------------"
			docker ps -a
			echo "Exito!!!"
			break
			;;
		Dev)
			echo "Arrancando docker en Development"
			docker compose -f docker-compose-dev.yml up -d
                        echo "------------------------------"
			echo "    Contenedores actuales"
			echo "------------------------------"
		        docker ps -a
			echo "Exito!!!"
			break
			;;
		Down)
			echo "Eliminando los contenedores"
			docker compose down
			echo "|-------------------------------------------------------------------------|"
			echo "|  ¡¡¡¡¡¡Recuerde eliminar la imagen si quieres cambiar de entorno!!!!!!  |"
			echo "|--------------------------------------------------------------------------|"
			break
			;;
		Exit)
			echo "Saliendo..."
			break
			;;
	esac
done
