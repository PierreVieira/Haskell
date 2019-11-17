somaImpar :: [Int] -> Int
somaImpar [] = 0
somaImpar (x:xs)
	| (x `mod` 2 == 1) = x + somaImpar xs
	| otherwise = 0 + somaImpar xs