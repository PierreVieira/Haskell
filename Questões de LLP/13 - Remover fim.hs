{-
	Autor: Pierre Vieira
	Data: 15/11/2019
	Github: https://github.com/PierreVieira
-}

sizeList :: [Int] -> Int
--Retorna o tamanho de uma lista passada como parâmetro
sizeList [] = 0
sizeList (x:xs) = 1 + sizeList xs

invLista :: [Int] -> [Int]
--Inverte uma lista passada como parâmetro
invLista [] = []
invLista (x:xs) = invLista xs ++ [x]

retornaListaSemCabeca :: [Int] -> [Int]
retornaListaSemCabeca [] = []
retornaListaSemCabeca (x:xs) = xs

removerFim :: Int -> [Int] -> [Int]
{-
	1° parâmetro: Número de n elementos últimos que irei retirar
	2° parâmetro: Lista com elementos
	Saída: Lista sem os n últimos elementos
-}
removerFim n l
	|n >= sizeList l = [] -- Se o número solicitado for maior ou igual ao tamanho da lista, então retorne a lista vazia
	|(n == 0) = l -- Se o número soliciatado for 0, então retorne a lista original
	|otherwise = removerFim (n-1) (invLista(retornaListaSemCabeca (invLista l))) -- Inverte a lista, remove a cabeça e inverte novamente