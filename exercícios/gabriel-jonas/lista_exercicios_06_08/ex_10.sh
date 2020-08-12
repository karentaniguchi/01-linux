echo "Digite a primeira string:"
read a
echo "Digite a segunda string:"
read b


size_a=${#a}
size_b=${#b}

if [ $size_a -gt $size_b ] ; then
	size=$size_a
else
	size=$size_b
fi

count_sim=0

for i in `seq 1 $size` ; do
    c1=`echo $a|cut -c$i`
    c2=`echo $b|cut -c$i`

    if [ $c1 = $c2 ] ; then
	    count_sim=$((count_sim+1))
    else
	    break
    fi
done

echo "Indice de similaridade $count_sim"
