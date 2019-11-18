{-
	Autor: Pierre Vieira
	Data: 15/11/2019
	Github: https://github.com/PierreVieira
-}

temNaLista :: Int -> [Int] -> Bool
{-
	Primeiro parâmetro: Inteiro a ser pesquisado em uma lista
	Segundo parâmetor: Lista de inteiros em que será realizada a pesquisa
	Saída: booleano dizendo se o número está na lista ou não
-}
temNaLista a [] = False -- Se estou comparando um valor 'a' com uma lista vazia, então esse valor não está na lista
temNaLista a (x:xs) = (x == a) || temNaLista a xs -- Um valor 'a' está presente em uma lista se a cabeça dessa lista for igual a 'a' ou se 'a' está presente no corpo

distintos :: [Int] -> Bool
{-
	Parâmetro de entrada: lista de números inteiros
	Saída: booleano dizendo se a lista só possui números diferentes ou não	
-}
distintos [] = True -- Se a lista está vazia, então ela só possui elementos distintos
distintos (x:xs) = if temNaLista x xs then False else distintos xs -- Se a cabeça está presente no corpo de uma lista então, a lista não é distina, senão ela é distina 

disjuntas :: [Int] -> [Int] -> Bool
{-
	Parâmetros de entrada: 2 listas de números inteiros
	Saída: booleano dizendo se as listas são disjuntas	
-}
disjuntas l1 l2 = distintos(l1++l2) --Passa como argumento a concatenação das duas listas e verifica se elas são iguais
