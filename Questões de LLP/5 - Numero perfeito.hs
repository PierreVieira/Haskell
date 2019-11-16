{-
Autor: Pierre Vieira
Data: 15/11/2019
Github: https://github.com/PierreVieira
-}
divisores :: Int -> [Int]
{-
	Função que retorna uma lista de divisores de um número N
-}
divisores n = [i | i<-[1..n-1], n `mod` i == 0] -- Fatores de n é uma lista indo de 1 até n-1, tal que o resto de n por i (posição) resulte em zero

somaLista :: [Int] -> Int
{-
	Parâmetro de entrada: lista de números inteiros
	Saída: soma da lista	
-}
somaLista [] = 0 -- Se a lista está vazia, retorne 0
somaLista (x:xs) = x + somaLista xs -- Retorne a cabeça somada com o valor da soma do corpo

perfeito :: Int -> Bool
{-
	Parâmetro de entrada: Número inteiro
	Saída: Booleano dizendo se o número passado como parâmetro é perfeito ou não	
-}
perfeito n = if somaLista (divisores n) == n then True else False -- Se o número n corresponde à soma de seus divisores, então retorne verdadeiro, senão retorne falso 