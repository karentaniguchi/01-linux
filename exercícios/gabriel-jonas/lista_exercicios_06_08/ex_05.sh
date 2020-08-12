echo "Digite um caracter:"

read char

if [ $char = 'y' ] ; then
	echo "YES"
else 
	if [ $char = 'n' ] ; then
       		echo "NO"
	else
 		echo "não conheço"	
	fi
fi
