iguais :: [Int] -> [Int] -> Bool --Recebe duas listas como parâmetro e retorna um valor booelando
iguais [] [] = True --Se as duas listas estão vazias, então elas são iguais
iguais [] _ = False --Se a primeira lista está vazia e a segunda não, então elas não são iguais
iguais _ [] = False --Se a primeira lista não está vazia e a segunda está, então elas não são iguais
iguais (a:b) (c:d) | (a==c) = iguais b d -- Compara a cabeça e chama a função se as cabeças forem iguais
				   | otherwise = False -- Se as cabeças não forem iguais retorna falso
