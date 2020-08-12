var="$1"
echo $var
if [ $var = "Y" ] || [ $var = "y" ] ; then
	echo "YES"
elif [ $var = "N" ] || [ $var = "n" ] ; then
	echo "NO"
else 
	echo "Não conheço"
fi
