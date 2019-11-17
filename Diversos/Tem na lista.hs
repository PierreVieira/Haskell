temNaLista :: Int -> [Int] -> Bool
{-
	Primeiro parâmetro: Inteiro a ser pesquisado em uma lista
	Segundo parâmetor: Lista de inteiros em que será realizada a pesquisa
	Saída: booleano dizendo se o número está na lista ou não
-}
temNaLista a [] = False -- Se estou comparando um valor 'a' com uma lista vazia, então esse valor não está na lista
temNaLista a (x:xs) = (x == a) || temNaLista a xs -- Um valor 'a' está presente em uma lista se a cabeça dessa lista for igual a 'a' ou se 'a' está presente no corpo
