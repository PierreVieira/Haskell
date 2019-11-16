{-
	Autor: Pierre Vieira
	Data: 15/11/2019
	Github: https://github.com/PierreVieira
-}
linearizar :: [[t]] -> [t]
{-
	Entrada: Lista de lista de termos
	Saida: lista com os termos
-}
linearizar [] = []
linearizar (x:xs) = x++linearizar(xs)
