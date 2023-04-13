-- 4.9) Usando a função foldl, crie lambdas para: Contar números negativos de uma lista de Int . Contar letras 'P' de uma String. Para contar Sabados em uma lista de um [DiaSemana]. Para, a partir de uma lista de [DiaSemana], retornar a soma dos dias. Exemplo: [Segunda, Segunda, Quarta] deve retornar 5. Use uma função auxiliar para converter DiaSemana para Int.

data DiaSemana = Segunda | Terca | Quarta | Quinta | Sexta | Sabado | Domingo deriving (Show, Eq)

-- contar os números negativos de uma lista de Int
contaNegativos :: [Int] -> Int
contaNegativos = foldl (\acc x -> if x < 0 then acc + 1 else acc) 0

-- contar as letras "P" de uma String
contaLetraP :: String -> Int 
contaLetraP = foldl (\acc x -> if x == 'P' then acc + 1 else acc) 0

-- contar os sabados
contaSabados :: [DiaSemana] -> Int
contaSabados = foldl (\acc x -> if x == Sabado then acc + 1 else acc) 0

-- função auxiliar para converter [DiaSemana] para Int
diaSemanaInt :: DiaSemana -> Int
diaSemanaInt Segunda = 1 
diaSemanaInt Terca = 2 
diaSemanaInt Quarta = 3 
diaSemanaInt Quinta = 4 
diaSemanaInt Sexta = 5
diaSemanaInt Sabado = 6 
diaSemanaInt Domingo = 7 

-- para somar os dias da semana 
somaDias :: [DiaSemana] -> Int
somaDias = foldl (\acc x -> acc + diaSemanaInt x) 0 