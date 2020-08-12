#!/bin/bash

#Lê dois valores de entrada
entrada1="$1"
entrada2="$2"

#Separa os valores de entrada para cada linha, ordena, conta as ocorrências e imprime em um arquivo para cada entrada
echo "$entrada1" | sed 's/./&\n/g' | sort | uniq -c | cat >> teste1
echo "$entrada2" | sed 's/./&\n/g' | sort | uniq -c | cat >> teste2

#Compara as similaridades entre os arquivos, comparando ocorrências
echo "As similaridades pela função fgrep são: "
fgrep -xf teste1 teste2

#Métrica criada: compara arquivos para verificar se entradas são exatamente iguais
printf " \n A outra métrica de similaridade é comparar se as strings são iguais: \n"
diff -q teste1 teste2
