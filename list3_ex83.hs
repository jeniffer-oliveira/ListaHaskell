-- Tres 1 2 3 >>= mult234 >>= mult234:

-- Começamos com a expressão Tres 1 2 3, que cria uma caixa com os valores 1, 2 e 3 nas coordenadas.
-- Em seguida, utilizamos o operador >>= para aplicar a função mult234 a esses valores.
-- A função mult234 multiplica cada valor por 2, 3 e 4 nas coordenadas correspondentes.
-- Portanto, o resultado será a caixa com os valores resultantes: Tres 2 6 12.
-- Dois 2 4 >>= mult234:

-- Começamos com a expressão Dois 2 4, que cria uma caixa com os valores 2 e 4 nas coordenadas.
-- Em seguida, utilizamos o operador >>= para aplicar a função mult234 a esses valores.
-- A função mult234 multiplica cada valor por 2, 3 e 4 nas coordenadas correspondentes.
-- Portanto, o resultado será a caixa com os valores resultantes: Dois 4 12.
-- :kind Coisa:

-- O comando :kind é usado no GHCi para obter o tipo de uma expressão.
-- No caso de Coisa, não é possível determinar o tipo sem a definição do tipo Coisa. Portanto, não é possível determinar o valor dessa expressão sem mais informações.
-- Dois 2 3 >>= \_ -> Dois 7 7:

-- Começamos com a expressão Dois 2 3, que cria uma caixa com os valores 2 e 3 nas coordenadas.
-- Em seguida, utilizamos o operador >>= para aplicar a função lambda \_ -> Dois 7 7 a esses valores.
-- A função lambda ignora o valor anterior e retorna a caixa Dois 7 7.
-- Portanto, o resultado será a caixa Dois 7 7.