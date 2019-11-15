potencia :: Int -> Int -> Int
potencia _ 0 = 1 --A potência de qualquer número elevado a 0 é 1
potencia x y = x * potencia x (y-1) --Definição recursiva da potência
