{-
Autor: Pierre Vieira
Data: 15/11/2019
Github: https://github.com/PierreVieira
-}
substituir :: Int -> Int -> [Int] -> [Int]
{-
	1° parâmetro: número a ser substituído (a)
	2° parâmetro: númerro que irá substituir (b)
	3° parâmetro lista
	Retorno: Lista com os valores de (a) substituídos por (b)
-}
substituir a b [] = [] -- Se a lista estiver vazia retorne vazio
substituir a b (x:xs) -- Cabeça 'x' e corpo 'xs'
	| (x == a) = (b: substituir a b xs) --Caso a cabeça seja igual ao elemento que se quer substituir, então retorne a substituição de b concatenando com o corpo
	| otherwise = (x: substituir a b xs) --Senão retorne a concatenação da cabeça com o corpo
