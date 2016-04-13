Proceso sin_titulo
	distancia_1<- 0;
	distancia_2<- 0;
	distancia_3<- 0;
	distancia_4<- 0;
	viaje_actual<- 0;
	peso<- 0;
	peso_actual<- 0;
	dia<- 0;
	estanque<- 0; //40= camion pequeño // 60= camion grande//
	gasto_combustible<- 0;
	dia<- 1;
	respuesta<- 1;
	viajar<- 0; //0 - si // 1 - no//
	gasto_acum<- 0;
	consumo_acum<- 0;
	num_viaje<- 0;
	uso_combustible<- 0;
	acum_km<- 0;
	viaje_c1<- 0;
	viaje_c2<- 0;
	viaje_c3<- 0;
	viaje_c4<- 0;
	km_c1<- 0;
	km_c2<- 0;
	km_c3<- 0;
	km_c4<- 0;
	
	Escribir "distancias deben estar dentro del rango de 9 Km a 600 Km";
	Escribir "ingrese la distancia de la ciudad 1";
	Repetir
		leer distancia_1;
		Si distancia_1<9 o distancia_1>600 Entonces
			Escribir "error, ingrese otra vez";
		finsi
	Hasta Que distancia_1<=600 y distancia_1>=9;
	Escribir "ingrese la distancia de la ciudad 2";
	Repetir
		leer distancia_2;
		Si distancia_2<9 o distancia_2>600 Entonces
			Escribir "error, ingrese otra vez";
		finsi
	Hasta Que distancia_2<=600 y distancia_2>=9;
	Escribir "ingrese la distancia de la ciudad 3";
	Repetir
		leer distancia_3;
		Si distancia_3<9 o distancia_3>600 Entonces
			Escribir "error, ingrese otra vez";
		finsi
	Hasta Que distancia_3<=600 y distancia_3>=9;
	Escribir "ingrese la distancia de la ciudad 4";
	Repetir
		leer distancia_4;
		Si distancia_4<9 o distancia_4>600 Entonces
			Escribir "error, ingrese otra vez";
		finsi
	Hasta Que distancia_4<=600 y distancia_4>=9;
	si dia=1 entonces
		escribir "dia 1";
	finsi
	Repetir
		si dia>1 Entonces
			Escribir "iniciar dia ", dia, "?";
			escribir "si - 1";
			Escribir "no - 2";
			Repetir
				leer respuesta;
				si respuesta<1 o respuesta>2 Entonces
					Escribir "error, no valido";
				FinSi
			Hasta Que respuesta>0 y respuesta<3;
		FinSi
		Si respuesta=1 Entonces
			viajar<- 0;
			num_viaje<- 0;
			acum_km<- 0;
			Repetir
				Escribir "ingrese ciudad destino";
				Escribir "si ciudad 1 - 1";
				Escribir "si ciudad 2 - 2";
				Escribir "si ciudad 3 - 3";
				Escribir "si ciudad 4 - 4";
				Escribir "no mas viajes hoy - 5";
				Repetir
					leer destino;
					si destino>5 o destino<1 Entonces
						escribir "error, no valido";
					FinSi
					si destino<=0 o destino>=6; Entonces
						Segun destino Hacer
							1:
								viaje_actual<- distancia_1;
								num_viaje<- num_viaje+1;
								acum_km<- acum_km+viaje_actual;
								viaje_c1<- viaje_c1+1;
								km_c1<- km_c1+viaje_actual;
							2:
								viaje_actual<- distancia_2;
								num_viaje<- num_viaje+1;
								acum_km<- acum_km+viaje_actual;
								viaje_c2<- viaje_c2+1;
								km_c2<- km_c1+viaje_actual;
							3:
								viaje_actual<- distancia_3;
								num_viaje<- num_viaje+1;
								acum_km<- acum_km+viaje_actual;
								viaje_c3<- viaje_c3+1;
								km_c3<- km_c1+viaje_actual;
							4:
								viaje_actual<- distancia_4;
								num_viaje<- num_viaje+1;
								acum_km<- acum_km+viaje_actual;
								viaje_c4<- viaje_c4+1;
								km_c4<- km_c1+viaje_actual;
							5:
								viajar<- 1;
						FinSegun
					FinSi
				Hasta Que destino>0 y destino<6;
				Si viajar=0 Entonces
					si viaje_actual>520 entonces
						Escribir "se usara camion grande, en caso contrario el combustible no alcanza";
						consumo<- 60-(viaje_actual/11);
						gasto_combustible<- consumo*614;
					Sino
						Repetir
							Escribir "ingrese el peso a trasladar (debe estar en el rango de 1 a 1500 kg)";
							Escribir "1 a 700 kg - camion pequeño";
							Escribir "701 a 1500 kg - camion grande";
							leer peso;
							Si peso>0 y peso<1501 Entonces
								si peso>=1 y peso<=700 Entonces
									estanque<- 40;
									consumo<-estanque-(trunc(viaje_actual/13));
									gasto_combustible<- consumo*850;
								Sino
									estanque<- 60;
									consumo<- estanque-(trunc(viaje_actual/11));
									gasto_combustible<- consumo*614;
								FinSi
							FinSi
						Hasta Que peso>0 y peso<1501;
					consumo_acum<- consumo_acum+consumo;
					gasto_acum<- gasto_acum+gasto_combustible;
					FinSi
				FinSi
			Hasta Que destino=5;
			Escribir "viajes: ", num_viaje;
			Escribir "km recorridos: ", acum_km, " km";
			escribir "consumo combustible: ", consumo_acum;
			Escribir "costo combustible: $", gasto_acum;
			Escribir "viajes a ciudad 1: ", viaje_c1; 
			escribir "kilometros recorridos entre la ciudad 1 y la tienda: ", km_c1, " km";
			Escribir "viajes a ciudad 2: ", viaje_c2;
			escribir "kilometros recorridos entre la ciudad 2 y la tienda: ", km_c2, " km";
			Escribir "viajes a ciudad 3: ", viaje_c3;
			Escribir  "kilometros recorridos entre la ciudad 3 y la tienda: ", km_c3, " km";
			Escribir "viajes a ciudad 4: ", viaje_c4;
			Escribir  "kilometros recorridos entre la ciudad 4 y la tienda: ", km_c4, " km";
		dia<- dia+1;
		FinSi
	Hasta Que respuesta=2;
Escribir "fin informe";
FinProceso
