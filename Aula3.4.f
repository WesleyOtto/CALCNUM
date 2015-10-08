c Erro de arredontamento
c Calcular raiz de 2

	program aulaTres
	real*8 valor, resultado1, erro1
	real*4 resultado2, erro2

	valor = 1.41421356D0
	resultado1 = dsqrt(2.0D0)
	resultado2 = sqrt(2.0D0)

	erro1 = resultado1 - valor
	erro2 = valor - resultado2
	
10	format(F20.14)
	print 10, erro1
	print 10, erro2

	end program

	

	




