echo "Média:"
awk '{ total += $1; count++ } END { print total/count }' seisnumeros.txt
echo "Desvio Padrão:" 
awk '{ sum+=$1; sumsq+=$1*$1 } END { print sqrt(sumsq/NR - (sum/NR)^2) }' seisnumeros.txt
echo "Mediana:" 
sort -n seisnumeros.txt | awk '{arr[NR]=$1} END { if (NR%2==1) print arr[(NR+1)/2]; else print (arr[NR/2]+arr[NR/2+1])/2}' 

