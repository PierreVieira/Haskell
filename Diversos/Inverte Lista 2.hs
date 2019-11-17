invLista :: [t] -> [t]
invLista [] = []
invLista (x:xs) = invLista xs ++ [x]