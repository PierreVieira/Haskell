somaLista :: [Int] -> Int
{-
	Parâmetro de entrada: lista de números inteiros
	Saída: soma da lista	
-}
somaLista [] = 0 -- Se a lista está vazia, retorne 0
somaLista (x:xs) = x + somaLista xs -- Retorne a cabeça somada com o valor da soma do corpo