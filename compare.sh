#!/bin/sh
#parametros: 
#$1=file1
#$2=file2

ext=${name#*.}
echo "$ext"

awk 'FNR==NR{a[NR]=$0;next;} $0!=a[FNR]' $1$ext $2$ext
