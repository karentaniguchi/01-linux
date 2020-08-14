file=$1
d=$2

medianaIndex=$(((d+1)/2))
mediana=0

total_lines=`wc -l < $file`

for i in `seq 0 $((total_lines-d-1))` ; do
	cut=$((total_lines-i))
	#echo $cut
	count=1
	for j in `tail -n $cut $file | head -n $d | sort -n` ; do
		#echo $j
		if [ $count = $medianaIndex ] ; then
			mediana=$j
		fi
		count=$((count + 1))
	done
	
	numFinal=`tail -n $cut $file | head -n $((d+1)) | tail -n  1`
	
	echo "Mediana: $mediana"
	echo "Num Final: $numFinal"

	limite=$((2*mediana))

	if [ $numFinal -ge $limite ] ; then
		echo "Alerta de possivel fraude"
	fi

done

#echo $medianaIndex
