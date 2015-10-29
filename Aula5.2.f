c Aula 5, dia 29/10
C Bruno Vedoveto
C Wesley Otto Garcia Utsunomiya
c x_i+1 = x_i - f(x_i)/f'(x_i)
c f(x) = exp x + cos(x) -3 



	program aulaQuatro
	REAL*8  precisao, xa, xb, error, media, res, resAnt
	INTEGER n


C	Erro máximo do valor calculado
	error = 10.0D-6

C	Variaveis utilizadas para definir um valor antes e um depois da curva
C	para convergir para a curva (y=0) - (xa a frente da curva e xb atrás)
	xa = 2.0D0	
	xb = 0D0

	n=0
	precisao = 2.0D0 !Valor teoricamente alto apenas para entrar no loop
	resAnt = 0D0

	DO WHILE (precisao > error)

		media = (xa + xb)/2		
		res = exp(media) + cos(media) - 3

		if (res.gt.0) then 

			xa = media
		else

			xb = media
		end if
		
		precisao = ABS(xb - xa)
			
		n=n+1
	END DO
	
	PRINT* ,  "Resultado xa",xa, "Resultado xb",  xb
	PRINT* , "com", n, "interacoes"

	END PROGRAM 
