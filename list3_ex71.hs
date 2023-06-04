-- 7.1) Faça uma instância de Functor para o tipo Coisa ,
-- definido no início do capítulo 5. A função g deve "ir para dentro"
-- em todas as coordenadas de Coisa . No caso de ZeroCoisa , o
-- -- fmap deve retornar ZeroCoisa

data Coisa a = ZeroCoisa | UmaCoisa a deriving Show

instance Functor Coisa where
    fmap _ ZeroCoisa = ZeroCoisa
    fmap g (UmaCoisa x) = UmaCoisa (g x) 