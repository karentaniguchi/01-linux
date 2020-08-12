var1="$1" 
var2="$2" 
echo $1 > variavel1.txt
echo $2 > variavel2.txt
if [ $var1 == $var2 ] ; then
	echo "As duas palavras são iguais"
else
	cmp variavel1.txt variavel2.txt > byte.txt
	echo "A similaridade entre as duas palavras é:"
	awk '{ print substr($0,53,1)-1 }' byte.txt
fi
d=$(diff <(echo "$1" |sed 's/./&\n/g') <(echo "$2" |sed 's/./&\n/g') |grep -c '^[<>]')
echo "As palavras são $((100-100*d/(${#1}+${#2})))% iguais"

