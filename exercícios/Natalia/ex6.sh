l1="$1"
l2="$2"
l3="$3"
echo $l1 $l2 $l3

if [ $l1 -eq $l2 ] && [ $l1 -eq $l3 ] ; then
	echo "O triângulo é equilátero"
elif [ $l1 -eq $l2 ] && [ $l1 -ne $l3 ] ; then
	echo "O triânguo é isósceles"
elif [ $l1 -eq $l3 ] && [ $l1 -ne $l2 ] ; then
	echo "O triânguo é isósceles"
elif [ $l2 -eq $l3 ] && [ $l2 -ne $l1 ] ; then
	echo "O triânguo é isósceles"
else
	echo "O triângulo é escaleno"
fi
