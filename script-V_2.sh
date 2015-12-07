#!/bin/sh
#parametros: 
#$1=archivo(nombre sin numero), el numero se ira agregando al final
#$2=Numero de archivos
#$3=Inicio numeracion
#$4=Reemplazo
echo Numero de parametros $#

if [ $# -le 3 ]; then
 echo Debe ingresar los parametros correctos nombre archivo, numero de repeticiones, inicio y texto a reemplazar
 exit 1
fi

echo "Archivo a copiar: $1"
echo "Cantidad de veces: $2"
echo "Inicio numeracion: $3"
echo "Texto  a reemplazae: $4"
i=$3
fin=$(($2+$3))
name=$1 
sinExt=${name%%.*}
ext=${name#*.}
echo "$sinExt"
echo "$ext"

while [ $i -le $fin ]; do
  cp $1 $sinExt$i.$ext
  echo "Archivo creado: $sinExt$i.$ext"
  nombre="$sinExt$i"
  perl -pi -e "s[$4][$nombre]g" $sinExt$i.$ext
  i=$(($i+1))
done
