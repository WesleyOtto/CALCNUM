c cancelamento subtrativo

	program aulaTres
	real*8 a, b, result1, result2
	
	a = 0.3491D4
	b = 0.2345D0

	result1 = (b+a) - a
	result2 = (a-a) + b

10	format(F10.6)
	print 10, result1
	print 10, result2

	end program
