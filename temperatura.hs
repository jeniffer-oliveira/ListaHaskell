-- 3.2)	Faça	o	tipo		Temperatura		que	pode	ter	valores		Celsius	, Farenheit		ou		Kelvin	.	Implemente	as	funções: converterCelsius	:	recebe	um	valor		double		e	uma temperatura,	e	faz	a	conversão	para	Celsius. converterKelvin	:	recebe	um	valor		double		e	uma temperatura,	e	faz	a	conversão	para	Kelvin. converterFarenheit	:	 recebe	 um	 valor	 	double		 e uma	temperatura,	e	faz	a	conversão	para	Farenheit.

data Temperatura = Celsius Double | Farenheit Double| Kelvin Double deriving Show 

converterCelsius :: Double -> Temperatura -> Double
converterCelsius x (Celsius c) = c
converterCelsius x (Farenheit f) = f * 1.8 + 32
converterCelsius x (Kelvin k) = k + 273

converterFarenheit :: Double -> Temperatura -> Double
converterFarenheit x (Celsius c) = (c - 32) / 1.8
converterFarenheit x (Farenheit f) = f
converterFarenheit x (Kelvin k) = (k - 32) * (5 / 9) + 273
 
converterKelvin :: Double -> Temperatura -> Double
converterKelvin x (Celsius c) = c - 273
converterKelvin x (Farenheit f) = (f - 273) * 1.8 + 32
converterKelvin x (Kelvin k) = k