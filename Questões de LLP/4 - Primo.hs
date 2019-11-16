{-
Autor: Pierre Vieira
Data: 15/11/2019
Github: https://github.com/PierreVieira
-}
divisores :: Int -> [Int]
{-
	Função que retorna uma lista de divisores de um número N
-}
divisores n = [i | i<-[1..n], n `mod` i == 0] -- Fatores de n é uma lista indo de 1 até n, tal que o resto de n por i (posição) resulte em zero

primo :: Int -> Bool
{-
	Parâmetro de entrada: número de inteiro
	Parâmetro de saída: booleano dizendo se o número passado como parâmetro é primo ou não	
-}
primo n = if (divisores n) == [1,n] then True else False -- Se essa lista contém apenas 1 e o próprio número, então esse número é primo
