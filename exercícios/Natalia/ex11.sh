read -p 'Insira, separado por um espaço, sua Id, seu nome, sua idade e seu sexo: ' -a cadastro 
echo "${cadastro[0]} ${cadastro[1]} ${cadastro[2]} ${cadastro[3]}" >> cadastro.txt

