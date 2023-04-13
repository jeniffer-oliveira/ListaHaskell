-- 4.8) Implemente o tipo Dinheiro que contenha os campos valor e correncia (Real ou Dolar), e uma função que converta todos os "dinheiros" de uma lista para dólar (e outra para real). Com isso, implemente funções para: 
-- a) Filtrar todos os Dolares de uma lista de Dinheiro. 
-- b) Somar todos os Dolares de uma lista. 
-- c) Contar a quantidade de Dolares de uma lista.

data Correncia = Real | Dolar deriving (Show, Eq)

data Dinheiro = Dinheiro {valor :: Double, correncia :: Correncia} | Null deriving (Show)

-- convertendo os "dinheiros" de forma geral
converteDinheiro :: Dinheiro -> Dinheiro
converteDinheiro (Dinheiro valor Real) = Dinheiro (valor * 5.20) Dolar 
converteDinheiro (Dinheiro valor Dolar) = Dinheiro (valor / 5.20) Real

converteDinheiroGuard :: Dinheiro -> Dinheiro
converteDinheiroGuard (Dinheiro valor correncia)
    | correncia == Real = Dinheiro (valor * 5.20) Dolar
    | correncia == Dolar = Dinheiro (valor / 5.20) Real

converteDinheiroLista :: [Dinheiro] -> [Dinheiro]
converteDinheiroLista = map converteDinheiro

-- convertendo dólares
converteDolares :: Dinheiro -> Dinheiro
converteDolares (Dinheiro valor Real) = Dinheiro (valor * 5.20) Dolar
converteDolares (Dinheiro valor Dolar) = Dinheiro valor Dolar
converteDolares _ = Null

converteDolaresGuard :: Dinheiro -> Dinheiro
converteDolaresGuard (Dinheiro valor correncia)
    | correncia == Real = Dinheiro (valor * 5.20) Dolar
    | correncia == Dolar = Dinheiro valor correncia
    | otherwise = Null

converteDolaresLista :: [Dinheiro] -> [Dinheiro]
converteDolaresLista = map converteDolares

-- convertendo reais 
converteReaisGuard :: Dinheiro -> Dinheiro
converteReaisGuard (Dinheiro valor correncia)
    | correncia == Real = Dinheiro valor correncia
    | correncia == Dolar = Dinheiro (valor / 5.20) Real
    | otherwise = Null 

converteReaisLista :: [Dinheiro] -> [Dinheiro]
converteReaisLista = map converteReaisGuard

-- a) Filtrar todos os Dolares de uma lista de Dinheiro. 
checaDolares :: Dinheiro -> Bool
checaDolares (Dinheiro valor correncia)
    | correncia == Dolar = True
    | otherwise = False
checaDolares _ = False

filtraDolares :: [Dinheiro] -> [Dinheiro]
filtraDolares = filter checaDolares

-- b) Somar todos os Dolares de uma lista. 
somarDolares :: [Dinheiro] -> Double
somarDolares xs = foldl (\acc (Dinheiro valor correncia) -> acc + valor) 0 $ filtraDolares xs

-- c) Contar a quantidade de Dolares de uma lista. 
contaDolares :: [Dinheiro] -> Int
contaDolares xs = foldl (\acc _ -> acc + 1) 0 $ filtraDolares xs

contaDolaresSimp :: [Dinheiro] -> Int
contaDolaresSimp = length . filtraDolares