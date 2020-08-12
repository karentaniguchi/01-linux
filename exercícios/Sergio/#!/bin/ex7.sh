#!/bin/bash
# ex7.sh

#recebe dois valores de entrada e armazena em variáveis
var1="$1"
var2="$2"

#cria um arquivo com o valor da segunda entrada
touch $var2
#Para cada i de 0 até o primeiro valor de entrada
for i in `seq 0 "$var1"` ; do
#Escreve um valor aleatório no arquivo criado anteriormente
        echo $RANDOM >> "$var2"
done
