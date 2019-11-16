{-
	Autor: Pierre Vieira
	Data: 15/11/2019
	Github: https://github.com/PierreVieira
-}

progressaoAritmetica :: Int -> Int
{-
	Entrada: número inteiro
	Saída número inteiro com a soma de 1 até n variando de 1 em 1	
-}
progressaoAritmetica 1 = 1
progressaoAritmetica n = progressaoAritmetica(n-1) + n

somaParciais :: [Int] -> [Int]
{-
	Entrada: lista de números inteiros
	Saída: lista com as somas parciais de cada elemento da lista original
-}
somaParciais [] = [] -- Se a entrada for uma lista vazia, então a saída é uma lista vazia
somaParciais (x:xs) = [progressaoAritmetica x]++somaParciais xs -- Conctena o resultado (em formato de lista) da progressão aritmética de um elemento com a chamada recursiva passando corpo como parâmetro
