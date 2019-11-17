divisores :: Int -> [Int]
{-
	Função que retorna uma lista de divisores de um número N
-}
divisores n = [i | i<-[1..n], n `mod` i == 0] -- Fatores de n é uma lista indo de 1 até n, tal que o resto de n por i (posição) resulte em zero