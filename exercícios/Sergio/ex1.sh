main(){
        #Para cada i em sequencia de 1 a 100, a cada 2 números, escreva o número (números pares de 1 à 100).
        for i in `seq 1 2 100` ; do
                echo "$i"
        done
}

main
