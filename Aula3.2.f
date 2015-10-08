C Calculo da area de um circulo. a= pi*r**2
C Cria um arquivo e escreve dentro

C      Declaracao das variaveis
	
       	REAL*8 a1, a2, a3, r, PI1, PI2, PI3

	r = 100D0
	PI1 = 3.14D0
	PI2 = 3.1416D0
	PI3 = 3.141592654D0 

       	a1 = PI1 *r ** 2
	a2 = PI2 *r ** 2
	a3 = PI3 *r ** 2

c12     	FORMAT('raio: ', F15.1, 1X, 'area',F6.2)
       	WRITE (*, *) r, a1
       	WRITE (*, *) r, a2
       	WRITE (*, *) r, a3
       	READ(*,*)
       	END
       





