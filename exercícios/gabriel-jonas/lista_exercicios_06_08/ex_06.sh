echo "Digite o primeiro lado"

read l1

echo "Digite o segundo lado"

read l2

echo "Digite o terceiro lado"

read l3

if [ $l1 -eq $l2 ] && [ $l2 -eq $l3 ]; then 
	echo "Triangulo equilatero"
else
	if [ $l1 -eq $l2 ] || [ $l2 -eq $l3 ] || [ $l3 -eq $l1 ] ; then
		echo "Triangulo isoceles"
	else
		echo "Triangul escaleno"
	fi
fi
