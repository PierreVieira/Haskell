{-
Autor: Pierre Vieira
Data: 15/11/2019
Github: https://github.com/PierreVieira
-}
somaImpar :: [Int] -> Int -- Recebe uma lista de inteiros e retorna um inteiro
somaImpar [] = 0 -- Se a lista está vaiza o resultado é 0
somaImpar (x:xs)
	| (x `mod` 2 == 1) = x + somaImpar xs -- caso a cabeça seja par, retorne a cabeça + a soma dos ímpares corpo
	| otherwise = 0 + somaImpar xs -- caso a cabeça seja ímpar, retorne a soma dos ímpares corpo
