#!/bin/bash

# Tutorial
# https://atareao.es/tutorial/scripts-en-bash/

# Tutorial CRON
# https://atareao.es/software/utilidades/programacion-de-tareas-con-cron/

# Tutorial Node y JS en terminal de linux
# https://atareao.es/como/node-y-javascript-en-el-terminal-de-linux/

# variables
variable=valor

echo $variable

## Variables especiales

echo El nombre del script es: $0 #representa el nombre del script
echo Primer argumento es: $1 #representa los primero nueve argumentos $0 - $9
echo El número de argumentos es: $# #representa el número de argumentos que se pasan al script
echo Los argumentos son: [$@] #todos los argumentos
echo $? #la salida del último proceso que se ha ejecutado
echo $$ #el ID del proceso del script
echo El nombre del usuario es: $USER # el nombre del usuario que ha ejecutado el script
echo El nombre del host es: $HOSTNAME #el nombre de la máquina
echo La duración del script es: $SECONDS #el número de segundos que duro el script en ejecución
echo Número random: $RANDOM #número random
echo Número de líneas: $LINENO #número de líneas que tiene el script
echo La shell es: $SHELL #nombre de la shell
echo El editor es: $EDITOR #nombre del editor
echo El home es: $HOME #nombre del home
echo El username es: $USERNAME #nombre del username
echo El path es: $PATH #nombre del path


# Comillas

# '' se interpreta literal
variable1=Juan
variable2='Esta es la casa de $variable1'
echo $variable2 #Esta es la casa de $variable1

# "" se interpreta
variable2="Esta es la casa de $variable1"
echo $variable2 #Esta es la casa de Juan


# Asignación de comandos a variables

## find . -maxdepth 1 -type f | wc -l      \ saber cuantos archivos hay en un directorio

##archivos=`find . -maxdepth 1 -type f | wc -l`
archivos=$(find . -maxdepth 1 -type f | wc -l)
directorios=$(find . -maxdepth 1 -type d | wc -l)
echo "Hay $archivos archivos y $directorios directorios"

## Si el resultado tiene varias líneas, se mostrará como una línea sola. Ej:
listado=$(ls ~)
echo $listado

# Manipular texto
# https://atareao.es/como/manipulando-texto-en-el-terminal/

echo '------------ MANIPULAR TEXTO -------------'
cadena='Esto es una cadena'
echo "La cadena es: $cadena"
echo "Extracción de texto: ${cadena:1:2}" # Extraer parte de un texto
echo "Sustitucion (cambias 'de' por 'a'): ${cadena/de/a}" # Sustituir texto de la operación
echo "Eliminación de apariciones (eliminación de 'de'): ${cadena//de}" # eliminar todas las aparencias de un texto dentro de otro
