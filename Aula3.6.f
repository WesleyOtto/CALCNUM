c erro relativo no arredondamento

	program aulaTres
	real*8 z, x, y, s, erro, soma

	z = 0.2585D1
	x = 0.7237D4
	y = 0.2145D-4
	
	s = 0.723958502D4

	soma = x + y + z
	
	erro = (soma - s) / s

10	format(F10.5)
	print 10, erro

	end program
