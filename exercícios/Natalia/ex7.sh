#parametro 1: numero
#parametro 2: nome de um arquivo
num="$1"
nome_do_arquivo="$2"
for i in `seq 1 $num`; do  #loop de uma sequencia de 1 até o numero do parametro
numerogerado=$RANDOM   #define numero gerado como aleatório
echo $numerogerado >> $nome_do_arquivo  #imprime o numero gerado e salva no arquivo colocado como parametro
done #termina
