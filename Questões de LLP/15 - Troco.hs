{-
	Autor: Pierre Vieira
	Data: 15/11/2019
	Github: https://github.com/PierreVieira
-}

maisAdequado :: Int -> Int
{-
	1° parâmetro: número inteiro 'n'
	Saida: elemento mais próximo na lista [100, 50, 25, 20, 10, 5, 2, 1] de 'n' que não ultrapasse 'n'
-}
maisAdequado n -- Verificação de qual é a nota mais adequada
	|(n >= 100) = 100
	|(n >= 50) = 50
	|(n >= 10) = 10
	|(n >= 5) = 5
	|otherwise = 1

trocar :: Int -> [Int]
{-
	Entrada: numero inteiro
	Saida: Lista com as notas que compõe o troco informado na entrada
-}
trocar t 
	|(t <= 0) = [] -- Se o troco <= zero então a lista é nula
	|otherwise = reverse ([maisAdequado(t)] ++ reverse (trocar (t - maisAdequado(t)))) --Senão vai concatenando os retornos da maisAdequado, atualizando o valor de 't'