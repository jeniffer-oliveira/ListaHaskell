-- 8.1)) Faça um tipo Caixa com um type parameter a e três
-- construtores chamados Um , Dois e Tres possuindo um, dois e
-- três campos de tipo a , respectivamente.
-- Faça uma instância de Functor para o tipo Caixa . A
-- função deve ser aplicada em todas as coordenadas dos
-- valores ( Um , Dois ou Tres ).
-- Crie uma instância de Monad para o tipo Caixa . Seu
-- return deve ser o value constructor de Um .
-- Observação: quando definir >>= para Caixa , o valor a
-- entrar em f segue as regras:
-- Um : o único campo entra na função (análogo ao
-- Maybe );
-- Dois : o segundo campo entra;
-- Tres : o terceiro campo entra.
import Control.Applicative

data Caixa a
  = Um a
  | Dois a a
  | Tres a a a
  deriving (Show)

instance Functor Caixa where
  fmap f (Um a) = Um (f a)
  fmap f (Dois a b) = Dois (f a) (f b)
  fmap f (Tres a b c) = Tres (f a) (f b) (f c)

instance Applicative Caixa where
  pure = Um

  (Um f) <*> (Um a) = Um (f a)
  (Um f) <*> (Dois a b) = Dois (f a) (f b)
  (Um f) <*> (Tres a b c) = Tres (f a) (f b) (f c)

  (Dois f g) <*> (Um a) = Dois (f a) (g a)
  (Dois f g) <*> (Dois a b) = Dois (f a) (g b)
  (Dois f g) <*> (Tres a b c) = Tres (f a) (g b) (g c)

  (Tres f g h) <*> (Um a) = Tres (f a) (g a) (h a)
  (Tres f g h) <*> (Dois a b) = Tres (f a) (g b) (h b)
  (Tres f g h) <*> (Tres a b c) = Tres (f a) (g b) (h c)

