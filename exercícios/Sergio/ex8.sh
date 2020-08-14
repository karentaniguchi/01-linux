!/bin/bash

#Inicia três variáveis com valor 0
soma=0
soma_dp=0
num_linhas=0

#realiza a leitura do arquivo chamado "algo" linha por linha
while IFS= read -r line
do
#soma o valor atual de leitura da linha a variável soma
        soma=$(( $soma + $line ))
#realiza a contagem de mais uma linha
        num_linhas=$(($num_linhas + 1))
done < algo

#Divide a soma total dos valores lidos, pelo número de números lidos, obtendo a média simples e imprimindo na tela
div=`echo "$soma / $num_linhas" | bc`
echo "A média é $div"

#escreve na tela e obtém o valor médio de linhas
echo "A mediana é"
meio=$(($num_linhas / 2))

#Caso número de itens for par
if [ $((num_linhas % 2)) = 0   ] ; then
#Ordena a lista de números e escreve o valor do meio + 1  
        echo | sort -g algo | head -n $meio | tail -n +$(($meio + 1))
else
#Se impar, Ordena a lista de números e escreve o valor do meio
        echo | sort -g algo | head -n $meio | tail -n +$meio
fi

#realiza a leitura do arquivo novamente, linha por linha
while IFS= read -r line
do
#Numerador recebe o valor da linha atual menos a média 
        numerador=$(( $line - $div ))
#Eleva ao quadrado o valor obtido para o numerador        
        numerador_quadrado=$((numerador**2))
#Realiza a soma dos valores obtidos a cada linha       
        soma_dp=$(( $soma_dp + $numerador_quadrado))
done < algo

#Divide o somatório pelo número total de itens
divisao=$(($soma_dp / $num_linhas))
#Realiza a raíz quadrada do valor obtido
dp=`echo "sqrt ( $divisao )" | bc`
#Imprime o Desvio Padrão
echo "O desvio padrão é $dp"
