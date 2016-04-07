Proceso sin_titulo
	escribir "ingrese monto deseado";
	leer monto;
	b_20<- trunc(monto/20000);
	res_b20<- trunc(monto%20000);
	b_10<- trunc(res_b20/10000);
	res_b10<- trunc(res_b20%10000);
	b_5<- trunc(res_b10/5000);
	res_b5<- trunc(res_b10%5000);
    b_1<- trunc(res_b5/1000);
    res_b1<- trunc(res_b5%1000);
	m_500<- trunc(res_b1/500);
	res_m500<- trunc(res_b1%500);
	m_100<- trunc(res_m500/100);
	res_m100<- trunc(res_m500%100);
	m_50<- trunc(res_m100/50);
	res_m50<- trunc(res_m100%50);
	m_10<- trunc(res_m50/10);
	res_m10<- trunc(res_m50%10);
	m_5<- trunc(res_m10/5);
	res_m5<- trunc(res_m10%5);
	m_1<- trunc(res_m5/1);
	Si b_20>0 Entonces
		escribir "billetes de $20000 = ", b_20;
	FinSi
	Si b_10>0 Entonces
		Escribir "billetes de $10000 = ", b_10;
	FinSi
	si b_5>0 entonces
		escribir "billetes de $5000 = ", b_5;
	FinSi
	si b_1>0 Entonces
		Escribir "billetes de $1000 = ", b_1;
	FinSi
	si m_500>0 entonces
		Escribir "monedas de $500 = ", m_500;
	FinSi
	si m_100>0 Entonces
		Escribir "monedas de $100 = ", m_100;
	FinSi
	si m_50>0 Entonces
		Escribir "monedas de $50 = ", m_50;
	FinSi
	si m_10>0 Entonces
		Escribir "monedas de $10 = ", m_10;
	FinSi
	si m_5>0 entonces
		Escribir "monedas de $5 = ", m_5;
	FinSi
	si m_1>0 entonces
		Escribir "monedas de $1 = ", m_1;
	FinSi
FinProceso
