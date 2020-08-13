var1="$1" 
var2="$2" 
echo $1 > variavel1.txt  #salva os parametros 1 e 2 em arquivos diferentes.
echo $2 > variavel2.txt
if [ $var1 == $var2 ] ; then   #compara para o caso dos dois parametros serem identicos.
	echo "As duas palavras são iguais"
else
	cmp variavel1.txt variavel2.txt > byte.txt    #se nao forem identicos, compara os dois e joga o resultado (que é uma frase) em um novo arquivo de texto
	echo "A similaridade entre as duas palavras é:"
	awk '{ print substr($0,53,2)-1 }' byte.txt  #lê o caracter 53 e 54 do arquivo, que é o que fala em qual byte encontrou uma diferença, subtrai 1, que é ate onde são similares.
fi
d=$(diff <(echo "$1" |sed 's/./&\n/g') <(echo "$2" |sed 's/./&\n/g') |grep -c '^[<>]')  #novo jeito de comparar os parametros pra dizer quanto por cento são parecidos 
echo "As palavras são $((100-100*d/(${#1}+${#2})))% iguais"

