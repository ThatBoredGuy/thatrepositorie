Proceso area_y_volumen
	p<- 3.14;
	Escribir "ingrese radio del cilindro";
	leer r;
	Escribir "ingrese altura del cilindro";
	leer h;
	perim_base<- 2*p*r;
	A_lateral<- perim_base*h;
	A_base<- p*(r^2);
	A_total<- A_lateral+A_base;
	Escribir "el area es ", A_total;
	volumen<- (p*r^2)*h;
	Escribir "el volumen es ", volumen;
FinProceso
