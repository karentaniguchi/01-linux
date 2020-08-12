echo "Digite o número N"

read num

for i in `seq 1 $num` ; do
	echo $RANDOM >> $1
done
