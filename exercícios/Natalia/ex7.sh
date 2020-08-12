num="$1"
nome_do_arquivo="$2"
for i in `seq 1 $num`; do
numerogerado=$RANDOM
echo $numerogerado >> $nome_do_arquivo
done
