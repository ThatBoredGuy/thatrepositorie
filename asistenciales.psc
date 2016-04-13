Proceso sin_titulo
	centros<- 0;
	ninios<- 0;//niños//
	edad<- 0;
	peso<- 0;
	sobre<-0;
	bajo<- 0;
	estable<- 0;
	cont_1<- 0;
	cont_2<- 0;
	margen_1<- 0;
	margen_2<- 0;
	bajo1_3<- 0;
	bajo4_6<- 0;
	bajo7_9<- 0;
	max_sobre<- 0;//niños con sobre peso en asistencial com mas sobrepeso//
	asis_sobre<- 0;//central con mas sobre peso//
	max_ninios<- 0;//numero niños centro mas concurrido//
	max_centro<- 0;//centro mas concurrido//
	
	Escribir "ingrese numero de asistenciales";
	Repetir
		leer centros;
		si centros<1 entonces
			Escribir "error, no valido";
		FinSi
	Hasta Que centros>0;
	Repetir
		Escribir "ingrese numero de niños de la asistencial ", cont_1+1;
		Repetir
			leer ninios;//niños//
			si ninios<1 entonces
				Escribir "error, no valido";
			FinSi
		Hasta Que ninios>0;
		cont_2<- 0;
		Repetir
			Escribir "ingrese edad de niño n°", cont_2+1;
			Repetir
				leer edad;
				si edad<1 o edad>9 entonces
					Escribir "error, edad no valida";
				FinSi
			Hasta Que edad>=1 y edad<=9;
			Escribir "ingrese peso de niño n°", cont_2+1;
			leer peso;
			margen_1<- (3*edad+7)-4;
			margen_2<- (3*edad+7)+4;
			Escribir margen_1, " ", margen_2;
			si peso<margen_1 Entonces
				Escribir "esta desnutrido";
				bajo<- bajo+1;
				si edad>=1 y edad<=3 entonces
					bajo1_3<- bajo1_3+1;
				FinSi
				si edad>=4 y edad<=6 Entonces
					bajo4_6<- bajo4_6+1;
				FinSi
				si edad>=7 y edad<=9 Entonces
					bajo7_9<- bajo7_9+1;
				FinSi
			FinSi
			si peso>margen_2 Entonces
				Escribir "esta con sobre peso";
				sobre<- sobre+1;
			FinSi
			si peso>=margen_1 y peso<=margen_2 Entonces
				Escribir "se encuentra bien nutrido";
				estable<- estable+1;
			FinSi
			si sobre>max_sobre Entonces
				max_sobre<- sobre;
				asis_sobre<- cont_1+1;
			FinSi
			si ninios>max_ninios Entonces
				max_ninios<- ninios;
				max_centro<- cont_1+1;
			FinSi
			cont_2<- cont_2+1;
		Hasta Que cont_2=ninios;
		cont_1<- cont_1+1;
	Hasta Que cont_1=centros;
	Escribir "|||estadisticas finales|||";
	Escribir "1) niños con sobre peso, bien nutridos y desnutridos";
	Escribir "niños con sobre peso: ", sobre;
	Escribir "niños bien nutridos:  ", estable;
	Escribir "niños desnutridos:    ", bajo;
	Escribir "-----------------------------------------";
	Escribir "2) centro con mas atencion";
	Escribir "asistencial:          ", max_centro;
	escribir "-----------------------------------------";
	Escribir "3) centro con mas sobre peso";
	Escribir "asistencial:          ", max_sobre;
	Escribir "-----------------------------------------";
	Escribir "4) niños desnutridos entre los rangos:";
	Escribir "1 a 3 años:           ", bajo1_3;
	Escribir "4 a 6 años:           ", bajo4_6;
	Escribir "7 a 9 años:           ", bajo7_9;
FinProceso
