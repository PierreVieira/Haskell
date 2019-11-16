linearizar :: [[t]] -> [t]
{-
	Entrada: Lista de lista de termos
	Saida: lista com os termos
-}
linearizar [] = []
linearizar (x:xs) = x++linearizar(xs)