data Arvore a = Branch a (Arvore a) (Arvore a) | Leaf deriving (Show)

sumElem :: Num a => Arvore a -> a
sumElem Leaf = 0
sumElem (Branch value esq dir) = value + sumElem esq + sumElem dir

arvoreExemplo :: Arvore Int
arvoreExemplo = Branch 1 (Branch 2 Leaf Leaf) (Branch 3 (Branch 4 Leaf Leaf) Leaf)


result :: Int
result = sumElem arvoreExemplo