 quad :: Int -> Int
 quad x = x ^ 2

 nmap :: (t -> u) -> [t] -> [u]
 nmap f [] = []
 nmap f (a:x) = f a : nmap f x