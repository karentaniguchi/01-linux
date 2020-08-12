media=0
desvio=0
mediana=0
total=0
count=`wc -l < $1`
medianaIndex=$(((count+1)/2))
index=0

echo $count

for i in `sort -n $1` ; do
	total=$((i+total))
	index=$((index+1))
	if [ $index -eq $medianaIndex ] ; then
		mediana=$i
	fi
done


media=$((total/count))
for i in `sort -n $1` ; do
	square=$((media-i))
	square=$((square*square))

	#echo $square
	soma=$(bc <<< "sqrt($square)")
	#echo $soma
	
	desvio=$((desvio + soma))
done

#desvio=sqrt($desvio)
desvio=$((desvio/count))

echo "Media $media"
echo "Desvio $desvio"
echo "Mediana $mediana"
