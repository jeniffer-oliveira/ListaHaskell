-- 4.7) Crie um tipo Dia contendo os dias da semana. Faça uma função que receba uma lista de Dias e filtre as Terças.  

data Dia = Segunda | Terca | Quarta | Quinta | Sexta | Sabado | Domingo deriving (Show, Eq)

filtrarTercas :: [Dia] -> [Dia]
filtrarTercas dias = filter (\dia -> dia == Terca) dias
