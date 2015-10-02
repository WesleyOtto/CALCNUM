program aulaUm
C  Calculo da area de um circulo
C        A = Pi*r**2
C
C Declaracao das Variaveis
C
        REAL*8 a, pi, r
C       REAL
C       REAL*4
C       REAL*16
C
        Open (1, file 'dados.dat', status='unknown')
C ENTRADA
C
C       WRITE(*,10)
10		  FORMAT('Digite o valor do Raio')
		    READ (*,11) r
11      FORMAT(F4,1)
C
C       F4,1 = _ _ , _
C       F6,2 = _ _ _ , _ _
        print*,r
        write (*,11) r
        write (*,*)
C       CALCULO
C       a = 3.1415D0 * r ** 2
C
C       SAIDA
C
	    	write (*,12) r, a
12      format('raio: ', F4.1, áraa:', F6.2')
		end program
