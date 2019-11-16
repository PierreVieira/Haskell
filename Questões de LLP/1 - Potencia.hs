{-
Autor: Pierre Vieira
Data: 15/11/2019
Github: https://github.com/PierreVieira
-}
potencia :: Int -> Int -> Int -- Recebe 2 parâmetros inteiros e retorna um parâmetro inteiro tal que o primeiro parâmetro será elevado em potência pelo segundo
potencia _ 0 = 1 -- Recebendo qualquer parâmetro inteiro e 0 o resultado será 1
potencia x y = x * potencia x (y-1) -- Recebendo x y retorna o valor de x elevado à potência de y-1
