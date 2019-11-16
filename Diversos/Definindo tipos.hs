type Nome = String
type Idade = Int
type Linguagem = String

type Pessoa = (Nome, Idade, Linguagem)

pessoa :: Pessoa
pessoa = ("Pierre", 19, "haskell")

my_fst :: Pessoa -> Nome
my_fst (n, i , l) = n