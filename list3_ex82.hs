-- 8.2)Crie uma função mult234 :: Double -> Caixa
-- Double que receba uma parâmetro x e devolva o dobro de x na
-- primeira coordenada, o triplo na segunda e o quádruplo na terceira
-- usando o operador >>= .

import Control.Monad

data Caixa a = Caixa  a a a deriving Show

mult234 :: Double -> Caixa Double
mult234 x = (\a -> return (2 * a)) x >>= (\b -> return (3 * b)) >>= (\c -> return (4 * c))

instance Functor Caixa where
  fmap f (Caixa x y z) = Caixa (f x) (f y) (f z)

instance Applicative Caixa where
  pure a = Caixa a a a
  (Caixa f g h) <*> (Caixa x y z) = Caixa (f x) (g y) (h z)

instance Monad Caixa where
  (Caixa x y z) >>= f = Caixa x' y' z'
    where
      Caixa x' _ _ = f x
      Caixa _ y' _ = f y
      Caixa _ _ z' = f z
