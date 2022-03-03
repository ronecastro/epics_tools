Menu "Macros"
	"Data Analysis", /Q, OpenDataAnalysisWindow()
	"LOAD DATA", /Q, OpenLoadDataWindow()
	"COMPARE DATA", /Q, OpenCompareDataWindow()
	"-"
	"Wave vs Wave Graph", /Q, WaveVsWaveGraph()
	"Compare Graph", /Q, OpenCompareGraphWindow()
	"-"
	Submenu "LI Graphs"
		"EG", /Q, LINAC_EG()
		"PU"
		"BUN"
		"KLY1"
		"KLY2"
		"PS", /Q, LINAC_PS()
		"VA", /Q, LINAC_VA()
		"CH", /Q, LINAC_CH()
		"CV", /Q, LINAC_CV()
	End
	//"-"
	Submenu "TB Graphs"
		"B", /Q, TB_B()
		"QD", /Q, TB_QD()
		"QF", /Q, TB_QF()
		"CH", /Q, TB_CH()
		"CV", /Q, TB_CV()
		"PU", /Q, TB_PU()
		"BPMy", /Q, TB_BPMy()
		"BPMx", /Q, TB_BPMx()
		"VA", /Q, TB_VA()
	End
	//"-"
	Submenu "BO Graphs"
		"B", /Q, BO_B()
		"QD", /Q, BO_QD()
		"QF", /Q, BO_QF()
		"QS", /Q, BO_QS()
		"SD", /Q, BO_SD()
		"SF", /Q, BO_SF()
		"CH", /Q, BO_CH()
		"CV", /Q, BO_CV()
		"PU", /Q, BO_PU()
		"RF", /Q, BO_RF()
		"BPMx", /Q, BO_BPMx()
		"BPMy", /Q, BO_BPMy()
		"VA", /Q, BO_VA()
	End
	//"-"
	Submenu "TS Graphs"
		"B", /Q, TS_B()
		"QD", /Q, TS_QD()
		"QF", /Q, TS_QF()
		"CH", /Q, TS_CH()
		"CV", /Q, TS_CV()
		"PU", /Q, TS_PU()
		"BPMx", /Q, TS_BPMx()
		"BPMy", /Q, TS_BPMy()
		"VA", /Q, TS_VA()
	End
	//"-"
	Submenu "SI Graphs"
		"B", /Q, SI_B()
		"QF", /Q, SI_QF()
		"QD", /Q, SI_QD()
		"Q", /Q, SI_Q()
		"SFA", /Q, SI_SFA()
		"SFB", /Q, SI_SFB()
		"SFP", /Q, SI_SFP()
		"SDP", /Q, SI_SDP()
		"SDA", /Q, SI_SDA()
		"SDB", /Q, SI_SDB()
		"QS", /Q, SI_QS()
		Submenu "CH"
			"M1", /Q, SI_CH_M1()
			"M2", /Q, SI_CH_M2()
			"C1", /Q, SI_CH_C1()
			"C2", /Q, SI_CH_C2()
			"C3", /Q, SI_CH_C3()
			"C4", /Q, SI_CH_C4()
		End
		Submenu "CV"
			"M1", /Q, SI_CV_M1()
			"M2", /Q, SI_CV_M2()
			"C1", /Q, SI_CV_C1()
			"C4", /Q, SI_CV_C4()
		End
		Submenu "VA"
			"FE", /Q, SI_VA_FE()
			"CCG", /Q, SI_VA_CCG()
			"SIP20", /Q, SI_VA_SIP20()
		End
		Submenu "BPMs"
			Submenu "Horizontal"
				"M1", /Q, SI_BPMx_M1()
				"M2", /Q, SI_BPMx_M2()
				"C1-1", /Q, SI_BPMx_C1_1()
				"C1-2", /Q, SI_BPMx_C1_2()
				"C2", /Q, SI_BPMx_C2()
				"C3-1", /Q, SI_BPMx_C3_1()
				"C3-2", /Q, SI_BPMx_C3_2()
				"C4", /Q, SI_BPMx_C4()
			End
			Submenu "Vertical"
				"M1", /Q, SI_BPMy_M1()
				"M2", /Q, SI_BPMy_M2()
				"C1-1", /Q, SI_BPMy_C1_1()
				"C1-2", /Q, SI_BPMy_C1_2()
				"C2", /Q, SI_BPMy_C2()
				"C3-1", /Q, SI_BPMy_C3_1()
				"C3-2", /Q, SI_BPMy_C3_2()
				"C4", /Q, SI_BPMy_C4()
			End
		End
		"PU", /Q, SI_PU()
	End
	"-"
	"Kill All Graphs", /Q, KillAllGraphs()
	"Clear All Waves", /Q, ClearWaves()
	"BPMs to Zero", /Q, ShiftAllBPMs()
	"-"
	"↺ EPICSpvlist.dat", /Q, RefreshEPICSpvlist()
End

//Função para criar gráfico com waves que respeitem o filtro fornecido como argumento.
Function CreateGraph(wfilter, leg)
	string wfilter
	string leg
	variable i
	string displaywave
	string displaywave_TS
	string command
	wave/T wGrepRes = root:VarList:wGrepRes
	wave/T wGrepResTotal
	SVAR/Z PVsFile = root:GlobalVariables:gPVsfile
	
	
	for(i=0;ItemsInList(wfilter)>i;i+=1)
		Grep/O/E=StringFromList(i,wfilter) PVsFile as wGrepRes //pesquiso filtros no arquivo de PVs
		Concatenate/T/NP {wGrepRes}, wGrepResTotal
	endfor
	
	killstrings/A/Z //mato as strings geradas no Grep acima
	killvariables/A/Z //idem para variáveis
	
	if(numpnts(wGrepResTotal)>0)
		displaywave = ReplaceString(":",wGrepResTotal[0],"_")
		displaywave_TS = displaywave + "_TS"
		Display $displaywave vs $displaywave_TS
	
		for(i=1;numpnts(wGrepResTotal)>i;i+=1)
			AppendToGraph $(ReplaceString(":",wGrepResTotal[i],"_")) vs $(ReplaceString(":",wGrepResTotal[i] + "_TS","_"))
		endfor
		Legend/C/N=text0/J/X=0/Y=0 leg
		CommonColorsButtonProc("")
		KillWaves/Z wGrepResTotal
	endif
End

Function CreateBPMGraph(wfilter, leg)
	string wfilter
	string leg
	variable i
	string displaywave
	string displaywave_TS
	string command
	wave/T wGrepRes = root:VarList:wGrepRes
	wave/T wGrepResTotal
	SVAR/Z PVsFile = root:GlobalVariables:gPVsfile
	
	
	for(i=0;ItemsInList(wfilter)>i;i+=1)
		Grep/O/E=StringFromList(i,wfilter) PVsFile as wGrepRes //pesquiso filtros no arquivo de PVs
		Concatenate/T/NP {wGrepRes}, wGrepResTotal
	endfor
	
	killstrings/A/Z //mato as strings geradas no Grep acima
	killvariables/A/Z //idem para variáveis
	
	if(numpnts(wGrepResTotal)>0)
		displaywave = ReplaceString(":",wGrepResTotal[0],"_")
		displaywave_TS = displaywave + "_TS"
		Display $displaywave vs $displaywave_TS
	
		for(i=1;numpnts(wGrepResTotal)>i;i+=1)
			AppendToGraph $(ReplaceString(":",wGrepResTotal[i],"_")) vs $(ReplaceString(":",wGrepResTotal[i] + "_TS","_"))
		endfor
		Legend/C/N=text0/J/X=0/Y=0 leg
		Label left "Posição (µm)"
		CommonColorsButtonProc("")
		KillWaves/Z wGrepResTotal
	endif
End

//Função para configurar waves por eixo nos gráficos. Funciona no gráfico do topo, sem window target
Function GraphModifier(leftaxis, rightaxis, mode)
	variable leftaxis //quantidade de eixos na esquerda
	//variable leftpercent //percentagem do eixo em relação ao gráfico, de 0 a 1
	variable rightaxis
	//variable rightpercent
	//variable traceleft //quantidade de traços no eixo da esquerda
	//variable traceright
	string mode
	string windowname = winname(0,1)
	string traces = tracenamelist(windowname,";",1)
	variable i
	string leftaxisname
	variable qdivaxis
	variable lowfracdivaxis
	variable highfracdivaxis
	variable lowfracdivaxisold
	
		//ModifyGraph axisEnab(left)={0,0.23}
		
		qdivaxis = (leftaxis-1) //quantidade de divisões do eixo
		for(i=0;i<leftaxis-1;i+=1)
			leftaxisname = "left" + num2str(i+1)
			NewFreeAxis $leftaxisname
			if (i==0)
				lowfracdivaxis = 0
				lowfracdivaxisold = 0
				highfracdivaxis = (round(100/leftaxis)/100 * (i+1)) - (0.01 * (i+1))
				ModifyGraph axisEnab(left)={lowfracdivaxis, highfracdivaxis}
			else
				lowfracdivaxis = lowfracdivaxis + (round(100/leftaxis)/100 * (i+1) ) - (0.01 * (i+1))
				//lowfracdivaxisold = lowfracdivaxis
				highfracdivaxis = lowfracdivaxis + (round(100/leftaxis)/100 * (i+1) ) + (0.01 * (i+1))
				Modifygraph axisEnab($leftaxisname) = {lowfracdivaxis, highfracdivaxis}
			endif
			
		endfor
	
		//for(i=0;i 
End

Function ClearWaves()
	string list
	string wname
	DFREF DFR = GetDataFolderDFR()
	variable i
	variable YesOrNo
	
	DoAlert/T="Continue?" 1, "Are you sure?\r\rIf you click 'Yes', the content of all waves will be erased!\r\rUse this if you want to make this Experiment's file smaller or to release memory."
	
	if (V_Flag == 1)
		SetDataFolder root:
		list = WaveList("*",";","")
		for(i=0;ItemsInList(list)>i;i+=1)
			wname = stringfromlist(i,list)
			Redimension/N=0 $wname
		endfor
		//print "YES"
		print "Waves's Content Erased!"
		print " "
		SetDataFolder DFR
	else
		//print "NO"
	endif
	KillVariables/Z V_Flag
End

Function KillAllGraphs()
    string fulllist = WinList("*", ";","WIN:1")
    string name, cmd
    variable i
   
    for(i=0; i<itemsinlist(fulllist); i +=1)
        name = stringfromlist(i, fulllist)
        sprintf cmd, "Dowindow/K %s", name
        execute cmd    
    endfor
end

//Baixa lista com todas PVs do Archiver
Function RefreshEPICSpvlist()
	GetAllPVs("http://10.0.38.42/retrieval/bpl/getMatchingPVs?pv=*&limit=-1")
End

//Essa função gera uma lista com todas as PVs do Archiver
Function GetAllPVs(url)
	string url
	string data
	wave/T wAllPVsList = root:VarList:wAllPVsList
	SVAR/Z PVsFile = root:GlobalVariables:gPVsfile
	variable refnum, i, offset
	string filename
	
	data = FetchURL(url)
	print("Downloaded Data! Parsing...")
	data = ReplaceString("[", data, "")
	data = ReplaceString("\"", data, "")
	data = ReplaceString("\r", data, "")
	data = ReplaceString("\n", data, "")
	data = ReplaceString("]", data, "")
	offset = 0
	Redimension/N=0 wAllPVsList
	for (i=0; ItemsInList(data,",")>i; i+=1)
		InsertPoints inf, 1, wAllPVsList
		wAllPVsList[i] = stringfromlist(i, data, ",")
	endfor
	print("Parsed! Saving to Disk...")
	Save/O/G/M="\r\n"/P=IgorUserFiles wAllPVsList as "EPICSpvlist.dat"
	print("Data Saved to Disk!")
End