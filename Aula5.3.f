c Aula 5, dia 29/10
C Bruno Vedoveto
C Wesley Otto Garcia Utsunomiya


	program exemplo
	REAL*8  a(20,21), x(20)
	INTEGER i,j,n,n1

	print *, 'Entre com a ordem da Matriz'
	read(*,1)n
1	format(I2)
	n1 = n + 1
	print*, 'Entre com os coeficientes e os temos independentes'
	do 10 i = 1,n
		read(*,2) (a(i,j), j = 1, n1)
		write(*,2)(a(i,j), j = 1, n1)
2		format ( 10 F8.0)
10	continue 
	call retro(a,n,x)

	write(*,21)
21	format ('Vetor solucao')
	do i = 1,n
		write(*,22) x(i),i
22	format (1PE12.5,2x,i2)
	end do 
	end	 

	subroutine retro (a,n,x)	
	
	REAL*8  a(20,21), x(20)
	INTEGER i,j,n,n1,l,k,m

!SUBSTITUIÇÃO 

	n1 = n1 +1 
	k = n -1 
	x(n) = a(n,n1)/a(n,n)
	do i = 1,k
		l = n - i 
		x(l) = a(l,n1)
		m = l+1
		
		do j = m,n
			x(l) = x(l) - a(l,j)*x(j)
		end do 
		x(l) = x(l)/ a(l,L)
	end do 
	return
	end 


