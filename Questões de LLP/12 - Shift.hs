{-
	Autor: Pierre Vieira
	Data: 15/11/2019
	Github: https://github.com/PierreVieira
-}

shift :: Int -> [t] -> [t]
{-
	1° parâmetro: número inteiro
	2° parâmetro: lista	genérica
	Saida: lista shifitada de acordo com o primeiro parâmetro	
-}
shift 0 list = list -- Se o shift é 0 retorne a prórpia lista
shift n list 
			| n < 0 = error "Não existe shift negativo" -- Se o shift é negativo, então houve um erro
            | otherwise = drop n list ++ take n list -- Concatena o drop da lista com o take da mesma
--Sobre as funções drop e take: http://www.facom.ufu.br/~madriana/PF/tutorial_avancado.pdf
{-
	Haskell > drop 3 [2, 4, 6, 8, 10]
	[8, 10]
	Haskell > take 3 [1, 2, 3, 4, 5, 6]
	[1, 2, 3]	
-}