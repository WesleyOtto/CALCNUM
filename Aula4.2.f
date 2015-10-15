c Aula 4, dia 15/10
c x_i+1 = x_i - f(x_i)/f'(x_i)
c f(x) = x² + x - 6, f(2) = 0, x_0 = 1,5
c critério de parada E = 0.001  (precisão)

	program aulaQuatro
	REAL*8  precisao, x, y, error
	INTEGER n

	error = 1D-6

	PRINT *, "Digite valor inicial para x"
	READ *, x

	n=0
	precisao=1D0

	DO WHILE (precisao > error)
		y = x - (((cos(x)) - x)/((-sin(x)) - 1))
		precisao = ABS(x-y)
		x=y
		n=n+1
	END DO
	
	PRINT* , "escreve alguma coisa ai" , y
	PRINT* , "com", n, "interacoes"

	END PROGRAM 
