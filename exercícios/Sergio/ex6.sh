#!/bin/bash
# ex6.sh 

#Lê 3 valores de entrada e armazena em variáveis
var1="$1"
var2="$2"
var3="$3"

#Se var1 = var2 = var3 Imprime Equilátero
if [ "$var1" = "$var2" ] && [ "$var2" = "$var3" ] ; then
        echo "Equilátero"
#Se var1 = var2 ou var2 = var3 Imprime Isósceles
elif [ "$var1" = "$var2" ] || [ "$var2" = "$var3"  ] ; then
        echo "Isósceles"
else
#Se todos valores forem diferentes, imprime Escaleno
        echo "Escaleno"
fi

