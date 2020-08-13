var="$1"  #Chama o parâmetro 1 de var1
echo $var #Imprime var1
#Condição: se o parâmetro for Y ou y, imprime yes, se o parâmetro for n ou N imprime no, se for qualquer outra coisa, imprime não conheço. 
if [ $var = "Y" ] || [ $var = "y" ] ; then
	echo "YES"
elif [ $var = "N" ] || [ $var = "n" ] ; then
	echo "NO"
else 
	echo "Não conheço"
fi #encerra a condição
