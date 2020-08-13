#Lê 3 parametros e chama de l1, l2 e l3 (os lados de um triângulo)
l1="$1"
l2="$2"
l3="$3"
echo $l1 $l2 $l3 #imprime quais são os parâmetros

if [ $l1 -eq $l2 ] && [ $l1 -eq $l3 ] ; then  #checa se os 3 lados são iguais"
	echo "O triângulo é equilátero"
elif [ $l1 -eq $l2 ] && [ $l1 -ne $l3 ] ; then #checa se l1 e l2 são iguais e l3 diferente
	echo "O triânguo é isósceles"
elif [ $l1 -eq $l3 ] && [ $l1 -ne $l2 ] ; then #checa se l1 e l3 são iguais e l2 diferente
	echo "O triânguo é isósceles"
elif [ $l2 -eq $l3 ] && [ $l2 -ne $l1 ] ; then #checa se l2 e l3 são iguais e l1 é diferente
	echo "O triânguo é isósceles"
else
	echo "O triângulo é escaleno" #se todas as condições anteriores não forem válidas, então todos os numeros são diferentes
fi #termina a condição
