-- 3.6) Faça um novo tipo chamado Mes, que possui como valores todos os meses do ano. Implemente: A função checaFim, que retorna o número de dias que cada mês possui (considere fevereiro tendo 28 dias). A função prox, que recebe um mês atual e retorna o próximo mês. A função estacao, que retorna a estação do ano de acordo com o mês e com o hemisfério. Use apenas tipos criados pela palavra data aqui.
--mes :: String 

data Mes = Janeiro | Fevereiro | Marco | Abril | Maio | Junho | Julho | Agosto | Setembro | Outubro | Novembro | Dezembro deriving (Enum, Show)

checaFim :: Mes -> Int
checaFim Janeiro = 31
checaFim Fevereiro = 28
checaFim Marco = 31
checaFim Abril = 30
checaFim Maio = 31
checaFim Junho = 30
checaFim Julho = 31
checaFim Agosto = 31 
checaFim Setembro = 30
checaFim Outubro = 31
checaFim Novembro = 30
checaFim Dezembro = 31

prox :: Mes -> Mes
prox mes = succ mes

data Hemisferio = Norte | Sul deriving Show

estacao :: Mes -> Hemisferio -> String
estacao Janeiro Norte = "Inverno"
estacao Fevereiro Norte = "Inverno"
estacao Marco Norte = "Primavera"
estacao Abril Norte = "Primavera"
estacao Maio Norte = "Primavera"
estacao Junho Norte = "Verão"
estacao Julho Norte = "Verão"
estacao Agosto Norte = "Verão"
estacao Setembro Norte = "Outono"
estacao Outubro Norte = "Outono"
estacao Novembro Norte = "Outono"
estacao Dezembro Norte = "Inverno"
estacao Janeiro Sul = "Verão"
estacao Fevereiro Sul = "Verão"
estacao Marco Sul = "Outono"
estacao Abril Sul = "Outono"
estacao Maio Sul = "Outono"
estacao Junho Sul = "Inverno"
estacao Julho Sul = "Inverno"
estacao Agosto Sul = "Inverno"
estacao Setembro Sul = "Primavera"
estacao Outubro Sul = "Primavera"
estacao Novembro Sul = "Primavera"
estacao Dezembro Sul = "Verão"


