{-
	Autor: Pierre Vieira
	Data: 15/11/2019
	Github: https://github.com/PierreVieira
-}

reversa :: [t] -> [t]
{-
	Entrada: Lista
	Saída: Lista invertida	
-}
reversa [] = []
reversa (x:xs) = reversa xs ++ [x]

palindromo :: [Int] -> Bool
{-
	Entrada: Lista de inteiros
	Saída: booleano informando se a lista é um palíndromo ou não	
-}
-- Uma lista pode ser definida como palindromo se a lista reversa for igual à lista original
palindromo l = if reversa l == l then True else False -- Se a lista reversa for igual à lista original retorne True, senão retorne False