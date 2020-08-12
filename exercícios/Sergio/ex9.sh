#!/bin/bash
#lê um valor de entrada e armazena
d="$1"
#Realiza a leitura do número de linhas no arquivo algo
num_linhas=`sort algo | wc -l`

#Para i de 1 até o valor de entrada
for i in `seq 1 1 $d` ; do
        echo "$i"
        #Erro de sintaxe na utilização do comando Sed
        mediana=`sort algo | head -n "$d" | tail -n +"$i" | sed -n $((i/2 + i%2)),$((i/2 + i%2))d  | bc`
        echo "$mediana"
        #if [ $((mediana ** 2)) -gt 10 ] ; then
        #       echo "ALERTA"
        #fi
done
