{-
	Autor: Pierre Vieira
	Data: 15/11/2019
	Github: https://github.com/PierreVieira
-}

binario :: Int -> [Int]
{-
	Entrada: Número inteiro
	Saída: Lista de números 0/1
-}
binario n = if n == 0 then [] else binario (n `div` 2) ++ [i | i <- [n `mod` 2]] 
-- Se o número for 0 retorne uma lista vazia, senão retorne a divisão de n por 2 concatenado com uma lista de n%2 