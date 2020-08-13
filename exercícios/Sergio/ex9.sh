#!/bin/bash
#lê um valor de entrada e armazena
d="$1"
#Realiza a leitura do número de linhas no arquivo algo
num_linhas=`sort algo | wc -l`

#Para i de 1 até o valor de entrada
for i in `seq 1 1 $((num_linhas - d))` ; do
        #ordena os dados, seleciona os D primeiros, dentre estes os i ultimos, e seleciona apenas o número do meio
        mediana=`sort algo | head -n $d | tail -n +$i | sed -n $((d/2))d  | bc`
        #ordena os dados, seleciona entre o total - atual ultimos, os d+1 primeiros, e pega o ultimo valor
        ultimo=`sort algo | tail -n $((num_linhas-i)) | head -n $((d+1)) | tail -n 1`

        #multiplica por 2 a mediana
        mediana=$((mediana*2))
        if [ $ultimo -gt $mediana ] ; then
                echo "ALERTA"
        fi
done

