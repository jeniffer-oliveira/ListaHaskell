
data Arvore a
  = Nulo
  | Leaf a
  | Branch a (Arvore a) (Arvore a)
  deriving (Show)

mapa :: (Arvore a -> Arvore a) -> Arvore a -> Arvore a
mapa f (Branch x l r) = f (Branch x (mapa f l) (mapa f r))
mapa f (Leaf x) = f (Leaf x)
mapa f Nulo = Nulo

--  5.8)Usando o exercício anterior, some 5 a cada elemento de uma árvore de inteiros.
somar5 :: Num a => Arvore a -> Arvore a
somar5 (Branch x l r) = Branch (x + 5) l r
somar5 (Leaf x) = Leaf (x + 5)
somar5 Nulo = Nulo
