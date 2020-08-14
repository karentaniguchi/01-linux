echo "Digite o primeiro número:"

read num1

echo "Digite o segundo número:"

read num2

soma=$((num1 + num2))
sub=$((num1-num2))
div=$((num1/num2))
rest=$((num1%num2))

echo "Soma $soma"
echo "Sub $sub"
echo "Div $div"
echo "Rest $rest"
