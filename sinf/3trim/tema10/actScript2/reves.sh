#!/bin/bash

if [ $# -ne 0 ]
then
    for i in $@
    do
        salida="$i $salida"
    done
        echo $salida
else
    echo "Debes introducir un argumento al menos"
fi