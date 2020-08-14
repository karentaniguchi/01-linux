echo "Média:"
awk '{ sum += $1; count++ } END { print sum/count }' seisnumeros.txt #awk lê os numeros no arquivo de texto, o sum soma os numeros desde o primeiro e o count conta quantos numeros foram somados.
echo "Desvio Padrão:" 
awk '{ sum += $1; sumsq+=$1*$1 } END { print sqrt(sumsq/NR - (sum/NR)^2) }' seisnumeros.txt #sum soma os numeros desde o primeiro, sumsq soma o quadrado dos numeros, NR é o numero de linhas.
echo "Mediana:" 
sort -n seisnumeros.txt | awk '{arr[NR]=$1} END { if (NR%2==1) print arr[(NR+1)/2]; else print (arr[NR/2]+arr[NR/2+1])/2}' #sort organiza os numeros do texto em ordem crescente, o | liga o resutlado na proxima condição,dentro do awk temos o caso do numero total ser par ou impar para calcular a mediana.

