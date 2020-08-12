#!/bin/bash
# ex4.sh 

#Recebe duas entradas e armazena nas variáveis var1 e var2
var1="$1"
var2="$2"

#Soma as duas variáveis e armazena na variável sum (comando bc serve para realizar cálculos básicos)
sum=`echo "$var1 + $var2" | bc`
echo "A soma é $sum. "

#Diminui var2 em var1, armazena e imprime o resultado
dif=`echo "$var1 - $var2" | bc`
echo "A diferença é $dif."

#Multiplica var1 e var2, armazena e imprime o resultado
prod=`echo "$var1 * $var2" | bc`
echo "O produto é $prod."

#Divide var1 por var2, armazena e imprime o resultado
div=`echo "$var1 / $var2" | bc`
echo "A divisão é $div."

#Cálcula o resto da divisão de var1 por var2, armazena e imprime o resultado
mod=`echo "$var1 % $var2" | bc`
echo "O resto da divisão é $mod."
