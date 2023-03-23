-- 3.10) Faça uma função chamada revNum, que receba uma String s e	um Int n. Esta	deverá	retornar as	n primeiras letras em ordem	reversa	e o	restante em	sua	ordem normal. Exemplo revNum 4 "FATEC"	= "ETAFC"

revNum :: String -> Int -> String
revNum s n = let (s1, s2) = splitAt n s 
             in reverse s1 ++ s2
