c Aula 4, dia 15/10
c x_i+1 = x_i - f(x_i)/f'(x_i)
c f(x) = x² + x - 6, f(2) = 0, x_0 = 1,5
c critério de parada E = 0.001  (precisão)

	program aulaQuatro
	REAL*8  precisao, xa, xb, error, media, res, resAnt
	INTEGER n

	error = 1.0D-3
	xa = 0.0D0	
	xb = 1.0D0
	n=0
	precisao = 2.0D0
	resAnt = 0D0

	DO WHILE (precisao > error)
		media = (xa + xb)/2		
		res = exp(-media) - media
		if (res.gt.0) then
			xa = media
		else
			xb = media
		end if
		
		precisao = xb - xa
			
		n=n+1
	END DO
	
	PRINT* ,  "Resultado xa",xa, "Resultado xb",  xb
	PRINT* , "com", n, "interacoes"

	END PROGRAM 
