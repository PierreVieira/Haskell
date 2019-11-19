menor :: Int -> Int -> Int
{-
	Entradas: 2 números
	Saída: Número menor
-}
menor x y = if(x<y) then x else y -- Se x é menor que y, então retorne x, senão retorne y

maior :: Int -> Int -> Int
{-
	Entradas: 2 números
	Saída: Número amaior
-}
maior x y = if(x>y) then x else y -- Se x é maior que y, então retorne x, senão retorne y

intercalar :: [Int] -> [Int] -> [Int]
intercalar [] [] = [] -- A intercalação de duas listas vazias resulta em uma lista vazia
intercalar l [] = l -- A intercalação de uma lista com uma lista vazia é a própria lista
intercalar [] l = l -- A intercalação de uma lista vazia com uma lista é a própria lista
intercalar (a:b) (c:d) = []++[menor a c]++[maior a c]++intercalar b d --Junta uma lista vazia com o menor termo da cabeça da lista com o maior termo da cabeça da lista com a intercalação de cada um dos corpos
