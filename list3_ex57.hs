-- 5.7) Usando a estrutura de árvore, monte uma função mapa , que jogue uma função passada por parâmetro para todos os
-- elementos de uma árvore. Deixe explícito o tipo desta função. 

data Arvore a
  = Nulo
  | Leaf a
  | Branch a (Arvore a) (Arvore a)
  deriving (Show)

mapa :: (Arvore a -> Arvore a) -> Arvore a -> Arvore a
mapa f (Branch x l r) = f (Branch x (mapa f l) (mapa f r))
mapa f (Leaf x) = f (Leaf x)
mapa f Nulo = Nulo