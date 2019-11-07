main = do
  putStrLn "Qual seu nome?"
  name <- getLine
  putStrLn ( "Olá, " ++ name ++ " eu sou um programa feito em Haskell")
