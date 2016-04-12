Proceso sin_titulo
	distancia_1<- 0;
	distancia_2<- 0;
	distancia_3<- 0;
	distancia_4<- 0;
	viaje_actual<- 0;
	peso<- 0;
	peso_actual<- 0;
	dia<- 0;
	
	Escribir "ingrese la distancia de la ciudad 1";
	Repetir
		leer distancia_1;
		Si distancia_1<9 o distancia_1>600 Entonces
			Escribir "error, ingrese otra vez";
		finsi
	Hasta Que distancia_1<600 y distancia_1>9;
	Escribir "ingrese la distancia de la ciudad 2";
	Repetir
		leer distancia_2;
		Si distancia_2<9 o distancia_2>600 Entonces
			Escribir "error, ingrese otra vez";
		finsi
	Hasta Que distancia_2<600 y distancia_2>9;
	Escribir "ingrese la distancia de la ciudad 3";
	Repetir
		leer distancia_3;
		Si distancia_3<9 o distancia_3>600 Entonces
			Escribir "error, ingrese otra vez";
		finsi
	Hasta Que distancia_3<600 y distancia_3>9;
	Escribir "ingrese la distancia de la ciudad 4";
	Repetir
		leer distancia_4;
		Si distancia_4<9 o distancia_4>600 Entonces
			Escribir "error, ingrese otra vez";
		finsi
	Hasta Que distancia_4<600 y distancia_4>9;
	Escribir "ingrese ciudad destino";
	Escribir "si ciudad 1 - 1";
	Escribir "si ciudad 2 - 2";
	Escribir "si ciudad 3 - 3";
	Escribir "si ciudad 4 - 4";
	Repetir
		leer destino;
		si destino<=0 o destino>=5; Entonces
			Segun destino Hacer
				1:
					viaje_actual<- distancia_1;
				2:
					viaje_actual<- distancia_2;
				3:
					viaje_actual<- distancia_3;
				4:
					viaje_actual<- distancia_4;
			FinSegun
		FinSi
	Hasta Que destino>0 y destino<5;
	si viaje_actual>520 entonces
		Escribir "se usara camion grande, en caso contrario el combustible no alcanza";
		consumo<- viaje_actual/11;
	Sino
		Escribir "ingrese el peso a trasladar";
		leer peso;
		si peso>=1 y peso<=700 Entonces
			consumo<- viaje_actual/13;
		Sino
			consumo<- viaje_actual/11;
		FinSi
	FinSi
	Escribir  trunc(consumo);
FinProceso
