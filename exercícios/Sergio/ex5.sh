#!/bin/bash
# ex5.sh

#Lê o valor de entrada e armazena na variável var1
var1="$1"

#Se var1 = Y ou var1 = y Imprime Yes
if  [ "$var1" = "Y" ] || [ "$var1" = "y" ] ; then
        echo "YES"
#Se var1 = N ou var1 = n Imprime Não
elif [ "$var1" = "N" ] || [ "$var1" = "n" ] ; then
        echo "Não"
else
#Caso o comando de entrada não seja nenhum dos casos acima, imprime Não conhecido
        echo "Não conhecido"
fi


