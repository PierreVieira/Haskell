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
	| (x == a) = substituir a b xs++[b] --Caso a cabeça seja igual ao elemento que se quer substituir, então retorne a substituição do corpo concatenado com b
	| otherwise = substituir a b xs++[x] --Senão retorne a concatenação de xs com a prórpia cabeça