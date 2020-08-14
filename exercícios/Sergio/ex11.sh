#!/bin/bash
#Tentative de ler cadastro de usuário 
ler_cadastro_usuario(){
        teste=`awk 'NR==1 {print substr($0,1,2),substr($0,4,7)}' lista_clientes`
        echo "$teste"
}

#Realiza o cadastro de cliente e armazena no arquivo "lista_clientes"
cadastro_cliente(){
        echo "Cadastro de Clientes:"

        echo "Digite o id do usuário (2 digitos), seguido de [ENTER]:"
        read id_usuario

        echo "Digite o nome do usuário, seguido de [ENTER]:"
        read nome_usuario

        echo "Digite a idade do usuário (2 digitos), seguido de [ENTER]:"
        read idade_usuario

        echo "Digite o sexo do usuário (Masculino, Feminino ou Outros), seguido de [ENTER]:"
        read sexo_usuario

        echo "$id_usuario $nome_usuario $idade_usuario $sexo_usuario" >> lista_clientes

        ler_cadastro_usuario
}

#Realiza o cadastro de produtos e armazena no arquivo "lista_produtos"
cadastro_produto(){
        echo "Cadastro de Produtos:"

        echo "Digite o id do Produto (2 digitos), seguido de [ENTER]:"
        read id_produto

        echo "Digite o valor do Produto (4 digitos), seguido de [ENTER]:"
        read valor_produto

        echo "Digite o tamanho do Produto (2 digitos), seguido de [ENTER]:"
        read tamanho_produto

        echo "$id_produto $valor_produto $tamanho_produto" >> lista_produtos
}

#Realiza o cadastro de vendas e armazena no arquivo "lista_vendas" e chama a função cadastro_produto_venda
cadastro_venda(){
        echo "Cadastro de Vendas:"

        echo "Digite o id para a compra (2 digitos), seguido de [ENTER]:"
        read id_compra

        echo "Digite o id do usuário que realizou a compra (2 digitos), seguido de [ENTER]:"
        read id_usuario_compra

        echo "Digite a data para a compra (8 digitos, sem espaços e pontuações), seguido de [ENTER]:"
        read data_compra

        echo "$id_compra $id_usuario_compra $data_compra" >> lista_vendas

        cadastro_produto_venda
}

#Realiza o cadastro de venda de produtos para cada venda realizada e armazena no arquivo "lista_produtos_vendas"
cadastro_produto_venda(){
        echo "Produtos Venda"
        echo "Digite o id para a compra (2 digitos), seguido de [ENTER]:"
        read id_venda_compra

        echo "Digite o id para o produto (2 digitos), seguido de [ENTER]:"
        read id_produto_compra

        echo "Digite a quantidade de produtos, seguido de [ENTER}:"
        read quantidade_compra

        echo "$id_venda_compra $id_produto_compra $quantidade_compra" >> lista_produtos_vendas
}

#Menu de cadastros que chama cada função desejada pelo usuário
while true; do
        printf " \n \n Sistema de Compras Exercício 11 \n \n "
        echo "Qual a opção desejada?"
        echo "1-Cadastro de Usuário"
        echo "2-Cadastro de Produtos"
        echo "3-Cadastro de Vendas"
        echo "4-Cálculos"
        read opcao
        case $opcao in
                "1" )   cadastro_cliente ;;
                "2" )   cadastro_produto ;;
                "3" )   cadastro_venda ;;
                "4" )   echo "Em manutenção" ;;
                * )     echo "Entrada Inválida" ;;
        esac
done

