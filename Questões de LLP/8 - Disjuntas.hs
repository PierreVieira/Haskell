{-
	Autor: Pierre Vieira
	Data: 15/11/2019
	Github: https://github.com/PierreVieira
-}

disjuntas :: [Int] -> [Int] -> Bool
{-
	Primeiro parâmetro: lista de inteiros;
	Segundo parâmetro: lista de inteiros;
	Saída: booleano dizendo se as listas são diferentes ou não. 	
-}
disjuntas [] [] = False -- Se as duas listas estão vazias, então elas não são diferentes.
disjuntas [] _ = True -- Se a primeira lista está vazia e a segunda não, então elas são diferentes.
disjuntas _ [] = True -- Se a primeira lista não está vazia e a segunda está, então elas são diferentes. 
disjuntas (a:b) (c:d) 
	| (a==c) = disjuntas b d -- Compara a cabeça e chama a função se as cabeças forem iguais
	| otherwise = True -- Se as cabeças forem diferentes retorna True