-- 7.6) Escreva uma possível instância de Functor para o tipo
-- data Dupla a = Dupla a Int a .

data Dupla a = Dupla a Int a deriving Show

instance Functor Dupla where
    fmap f (Dupla x n y)  = Dupla (f x) n (f y)