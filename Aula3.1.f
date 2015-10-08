c Calcular o erro de truncamento de e
c

	program aulaDois
	integer input, ordem, i
	real*8 resultado, valor, e, erro
	
	e = 2.71828182845905D0
	resultado = 1.0D0	
	
	print *, 'Entre com a ordem: '
	read(*,*) ordem
	
	do i=1,ordem-1
		input = i
		call factorial(input)
		resultado = resultado + (1.0D0/dfloat(input))
	end do

	erro = resultado - e
        if (erro.lt.0) then
		erro = erro * (-1)
        end if

10	format('Resultado: ',F16.14)
11	format('Erro: ', F16.14)
	print 10, resultado
	print 11, erro
	read(*,*)
	
	end program
	
     	subroutine factorial(n)
		integer aux, j

	   	aux = 1.0D0

	   	do j=1,n
	       		aux = aux*(j)
	   	end do
	   
		n = aux

	return
	end 

