#pragma TextEncoding = "UTF-8"
#pragma rtGlobals=3		// Use modern global access method and strict wave access.

Function avg() //primeiro uso os cursores para selecionar o intervalo, então uso essa função
	variable crs1, crs2 //variaveis para os pontos dos cursores
	string wv = WaveName("", 0, 1) //string para pegar o nome da wave no gráfico do topo
	variable wv_pnts //pontos da wave
	variable wv_sum //soma de valores da wave
	variable wv_avg //média
    
	crs1 = pcsr(A) //pego o ponto do cursor A
	print "cursor A:", crs1
	crs2 = pcsr(B) //pego o ponto do cursor B
	print "cursor B:", crs2
	wv_pnts = crs2 - crs1 //determino intervalo de cálculo
	print "Quantidade de pontos:", wv_pnts
	wv_sum = sum($wv, crs1, crs2) //somo os valores dos pontos dentro do intervalo
	print "Soma de valores dos pontos:", wv_sum
	wv_avg = wv_sum/wv_pnts //divido pelo total de pontos (média simples)
	print "Média para o Intervalo:", wv_avg

	
End