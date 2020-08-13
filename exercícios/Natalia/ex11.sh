read -p 'Insira, separado por um espaço, sua Id, seu nome, sua idade e seu sexo: ' -a cadastro #le os dados e joga cada palavra (sepada por espaço) em uma matriz "cadastro"
echo "${cadastro[0]} ${cadastro[1]} ${cadastro[2]} ${cadastro[3]}" >> cadastro.txt #lê os 4 elemetros da matriz e joga num arquivo cadastro.txt
echo "A média da idade nos cadastros é: "
awk '{ total += $3; count++ } END { print total/count }' cadastro.txt #retorna a média de idades (coluna 3 do arquivo de texto)
