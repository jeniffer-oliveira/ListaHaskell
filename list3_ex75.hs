-- 7.5) Escreva uma instância de Functor para o tipo data
-- Fantasma a = Fantasma .

data Fantasma a = Fantasma

instance Functor Fantasma where 
    fmap _  Fantasma = Fantasma
   