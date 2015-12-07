#!/bin/sh
echo Numero de parametros $#

if [ $# -neq 2 ]; then
 echo Debe ingresar los parametros correctos nombre archivo y numero de repeticiones
 exit 1
fi

echo "Archivo a copiar: $1"
echo "Cantidad de veces: $2"
i=0
name=$1 
sinExt=${name%%.*}
ext=${name#*.}
echo "$sinExt"
echo "$ext"
while [ $i -le $2 ]; do
cp $1 $sinExt$i.$ext
echo "Archivo creado: $sinExt$i.$ext"
i=$(($i+1))
done
