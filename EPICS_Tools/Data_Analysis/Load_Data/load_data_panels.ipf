#pragma TextEncoding = "UTF-8"
#pragma rtGlobals=3		// Use modern global access method and strict wave access.
//Window LoadDataWindow() : Panel
//	PauseUpdate; Silent 1		// building window...
//	KillWindow /Z LoadDataWindow
//	NewPanel /K=1 /FLT=0 /N=LoadDataWindow /W=(9,55,525,677) as "LOAD DATA"
//	SetActiveSubwindow _endfloat_
//	ModifyPanel fixedSize=1
//	SetDrawLayer UserBack

Window LoadDataWindow() : Panel
	PauseUpdate; Silent 1		// building window...
	NewPanel /K=1 /W=(1394,218,1910,846) as "LOAD DATA"
	ModifyPanel fixedSize=1
	SetDrawLayer UserBack
	DrawRect 44,118,464,184
	DrawText 58,146,"DD"
	DrawText 115,146,"MM"
	DrawText 172,146,"YYYY"
	DrawText 268,146,"HH"
	DrawText 329,146,"MM"
	DrawText 394,146,"SS"
	DrawText 44,115,"START DATE/HOUR:"
	DrawRect 44,214,464,280
	DrawText 58,242,"DD"
	DrawText 115,242,"MM"
	DrawText 172,242,"YYYY"
	DrawText 268,242,"HH"
	DrawText 329,242,"MM"
	DrawText 394,242,"SS"
	DrawText 45,210,"END DATE/HOUR:"
	DrawText 48,356,"EPICS Name / Search Filter (RegEx syntax):"
	DrawText 325,52,"TimeZone (h):"
	DrawText 320,79,"TimeStamp(s):"
	SetVariable svStartDay,pos={57.00,150.00},size={50.00,18.00},disable=2,title=" "
	SetVariable svStartDay,help={"Day"},format="%02d"
	SetVariable svStartDay,limits={1,31,1},value= root:GlobalVariables:dds
	SetVariable svStartMonth,pos={114.00,150.00},size={50.00,18.00},disable=2,title=" "
	SetVariable svStartMonth,help={"Month"},format="%02d"
	SetVariable svStartMonth,limits={1,12,1},value= root:GlobalVariables:mms
	SetVariable svStartYear,pos={171.00,150.00},size={50.00,18.00},disable=2,title=" "
	SetVariable svStartYear,help={"Year"},format="%04d"
	SetVariable svStartYear,limits={2000,3000,1},value= root:GlobalVariables:yyyys
	SetVariable svStartHour,pos={267.00,150.00},size={50.00,18.00},disable=2,title=" "
	SetVariable svStartHour,help={"Hour"},format="%02d"
	SetVariable svStartHour,limits={0,23,1},value= root:GlobalVariables:hs
	SetVariable svStartMin,pos={328.00,150.00},size={50.00,18.00},disable=2,title=" "
	SetVariable svStartMin,help={"Minute"},format="%02d"
	SetVariable svStartMin,limits={0,59,1},value= root:GlobalVariables:ms
	SetVariable svStartSec,pos={392.00,150.00},size={58.00,18.00},disable=2,title=" "
	SetVariable svStartSec,help={"Second"},format="%.3f"
	SetVariable svStartSec,limits={0,59,1},value= root:GlobalVariables:ss
	SetVariable svEndDay,pos={57.00,246.00},size={50.00,18.00},disable=2,title=" "
	SetVariable svEndDay,help={"Day"},format="%02d"
	SetVariable svEndDay,limits={1,31,1},value= root:GlobalVariables:dde
	SetVariable svEndMonth,pos={114.00,246.00},size={50.00,18.00},disable=2,title=" "
	SetVariable svEndMonth,help={"Month"},format="%02d"
	SetVariable svEndMonth,limits={1,12,1},value= root:GlobalVariables:mme
	SetVariable svEndYear,pos={171.00,246.00},size={50.00,18.00},disable=2,title=" "
	SetVariable svEndYear,help={"Year"},format="%04d"
	SetVariable svEndYear,limits={2000,3000,1},value= root:GlobalVariables:yyyye
	SetVariable svEndHour,pos={267.00,246.00},size={50.00,18.00},disable=2,title=" "
	SetVariable svEndHour,help={"Hour"},format="%02d"
	SetVariable svEndHour,limits={0,23,1},value= root:GlobalVariables:he
	SetVariable svEndMin,pos={328.00,246.00},size={50.00,18.00},disable=2,title=" "
	SetVariable svEndMin,help={"Minute"},format="%02d"
	SetVariable svEndMin,limits={0,59,1},value= root:GlobalVariables:me
	SetVariable svEndSec,pos={392.00,246.00},size={58.00,18.00},disable=2,title=" "
	SetVariable svEndSec,help={"Second"},format="%.3f"
	SetVariable svEndSec,limits={0,59,1},value= root:GlobalVariables:se
	SetVariable svSearchField,pos={48.00,358.00},size={315.00,18.00},title=" "
	SetVariable svSearchField,help={"Hints:\r(.) = one character;\r(.+) = one or more characters;\r(.*) = zero or more characters;\r(^) = 'start with' character;\r($) = 'end with' character;\rEx: ^SI-02.+CCG-...:Pressure-Mon$\rEx: ^SI-....:DI-BPM.*:PosX-Mon$"}
	SetVariable svSearchField,value= root:GlobalVariables:gSearchField,live= 1
	GroupBox group0,pos={27.00,8.00},size={460.00,289.00},title="\\BPERIOD",fSize=20
	PopupMenu puPeriod,pos={45.00,35.00},size={141.00,19.00},bodyWidth=141,proc=PopMenuProc_Period
	PopupMenu puPeriod,mode=1,popvalue="Last Hour",value= #"\"Last Hour;Last 3 Hours;Last 6 Hours;Last 24 Hours;Fixed Start / Fixed End;Fixed Start / End Now\""
	PopupMenu puInterval,pos={45.00,61.00},size={247.00,19.00},bodyWidth=247,disable=2,proc=PopMenuProc_Interval
	PopupMenu puInterval,mode=1,popvalue="Default Variable Interval",value= #"\"Default Variable Interval;Interval: 10 Seconds;Interval: 30 Seconds;Interval: 1 Minute;Interval: 5 Minutes;Interval: Custom\""
	PopupMenu puMethod,pos={212.00,34.00},size={80.00,19.00},bodyWidth=80,proc=PopMenuProc_Method
	PopupMenu puMethod,mode=1,popvalue="Normal",value= #"\"Normal;Average;Minimum;Maximum;N-th\""
	SetVariable svNth,pos={245.00,89.00},size={47.00,18.00},disable=1,title=" "
	SetVariable svNth,format="%d"
	SetVariable svNth,limits={2,inf,0},value= root:GlobalVariables:gInterval
	GroupBox group1,pos={27.00,309.00},size={460.00,289.00},title="\\BPARAMETERS SELETION"
	GroupBox group1,fSize=20
	Button btnLoadSelection,pos={379.00,418.00},size={90.00,29.00},proc=ButtonProc_LoadSelection,title="Load Selection"
	Button btnAddSelection,pos={379.00,358.00},size={56.00,19.00},proc=ButtonProc_AddSelection,title="Add"
	Button brnDel,pos={47.00,557.00},size={125.00,20.00},proc=ButtonProc_DeleteFromSelection,title="Delete from Selection"
	Button brnDel,help={"Hint:\rYou can 'Shift+Click' the lines above to delete multiple ones."}
	ListBox lbSelectionList,pos={48.00,394.00},size={315.00,146.00}
	ListBox lbSelectionList,listWave=root:VarList:wParameters2Search
	ListBox lbSelectionList,selWave=root:VarList:wParameterSel,mode= 4
	SetVariable svAdjustDH,pos={405.00,62.00},size={60.00,18.00},title=" "
	SetVariable svAdjustDH,value= root:GlobalVariables:gAdjustDH
	CheckBox cburl,pos={381.00,478.00},size={65.00,15.00},title="Print URL"
	CheckBox cburl,variable= root:GlobalVariables:gPrintURL
	SetVariable svAdjustTimezone,pos={405.00,35.00},size={60.00,18.00},title=" "
	SetVariable svAdjustTimezone,help={"Archiver solicitations must have\rfuse adjust for current timezone"}
	SetVariable svAdjustTimezone,format="%d"
	SetVariable svAdjustTimezone,limits={-11,14,1},value= root:GlobalVariables:gTimezone
	CheckBox cbBPMs,pos={381.00,454.00},size={87.00,15.00},title="BPMs to Zero"
	CheckBox cbBPMs,variable= root:GlobalVariables:gZRbpms
	Button btnMore,pos={440.00,358.00},size={28.00,19.00},proc=ButtonProc_OpenPDG,title="..."
	Button btnMore,help={"Hint:\rClick to select predefined groups to add to Selection Parameters."}
	ValDisplay vdBar,pos={27.00,604.00},size={459.00,17.00},disable=1
	ValDisplay vdBar,limits={0,100,0},barmisc={0,0},mode= 3,highColor= (0,65535,0)
	ValDisplay vdBar,value= _NUM:100
	Button btnCancel,pos={379.00,512.00},size={90.00,29.00},disable=1,title="Cancel"
	SetWindow kwTopWin,hook(spinner)=LoadDataWindowSpinHook
EndMacro

Window PreDefinedGroups() : Panel
	PauseUpdate; Silent 1		// building window...
	NewPanel /K=1 /W=(553,168,1187,789) as "Predefined Groups..."
	GroupBox group0,pos={12.00,5.00},size={149.00,239.00},title="LI "
	CheckBox check0,pos={27.00,27.00},size={30.00,15.00},proc=CheckProc_PDG,title="EG"
	CheckBox check0,value= 0
	CheckBox check1,pos={27.00,52.00},size={31.00,15.00},proc=CheckProc_PDG,title="PU"
	CheckBox check1,value= 0
	CheckBox check2,pos={27.00,76.00},size={41.00,15.00},disable=2,proc=CheckProc_PDG,title="LLRF"
	CheckBox check2,value= 0
	CheckBox check3,pos={45.00,101.00},size={40.00,15.00},proc=CheckProc_PDG,title="BUN"
	CheckBox check3,value= 0
	CheckBox check4,pos={45.00,126.00},size={41.00,15.00},proc=CheckProc_PDG,title="KLY1"
	CheckBox check4,value= 0
	CheckBox check5,pos={45.00,150.00},size={41.00,15.00},proc=CheckProc_PDG,title="KLY2"
	CheckBox check5,value= 0
	CheckBox check7,pos={27.00,174.00},size={29.00,15.00},proc=CheckProc_PDG,title="PS"
	CheckBox check7,value= 0
	GroupBox group1,pos={175.00,5.00},size={173.00,168.00},title="TB"
	CheckBox check22,pos={270.00,26.00},size={31.00,15.00},proc=CheckProc_PDG,title="PU"
	CheckBox check22,value= 0
	CheckBox check24,pos={270.00,49.00},size={41.00,15.00},disable=2,title="BPM"
	CheckBox check24,value= 0
	CheckBox check25,pos={187.00,26.00},size={29.00,15.00},disable=2,title="PS"
	CheckBox check25,value= 0
	CheckBox check26,pos={205.00,49.00},size={23.00,15.00},proc=CheckProc_PDG,title="B"
	CheckBox check26,value= 0
	CheckBox check27,pos={205.00,73.00},size={33.00,15.00},proc=CheckProc_PDG,title="QD"
	CheckBox check27,value= 0
	CheckBox check28,pos={205.00,98.00},size={31.00,15.00},proc=CheckProc_PDG,title="QF"
	CheckBox check28,value= 0
	CheckBox check29,pos={205.00,123.00},size={33.00,15.00},proc=CheckProc_PDG,title="CH"
	CheckBox check29,value= 0
	CheckBox check30,pos={205.00,147.00},size={31.00,15.00},proc=CheckProc_PDG,title="CV"
	CheckBox check30,value= 0
	CheckBox check8,pos={27.00,198.00},size={41.00,15.00},disable=2,proc=CheckProc_PDG,title="BPM"
	CheckBox check8,value= 0
	CheckBox check34,pos={288.00,71.00},size={48.00,15.00},proc=CheckProc_PDG,title="XBPM"
	CheckBox check34,value= 0
	CheckBox check35,pos={288.00,96.00},size={48.00,15.00},proc=CheckProc_PDG,title="YBPM"
	CheckBox check35,value= 0
	GroupBox group2,pos={362.00,5.00},size={174.00,238.00},title="BO "
	CheckBox check36,pos={457.00,27.00},size={31.00,15.00},proc=CheckProc_PDG,title="PU"
	CheckBox check36,value= 0
	CheckBox check37,pos={457.00,52.00},size={29.00,15.00},proc=CheckProc_PDG,title="RF"
	CheckBox check37,value= 0
	CheckBox check38,pos={457.00,76.00},size={41.00,15.00},disable=2,title="BPM"
	CheckBox check38,value= 0
	CheckBox check39,pos={374.00,26.00},size={29.00,15.00},disable=2,title="PS"
	CheckBox check39,value= 0
	CheckBox check40,pos={392.00,49.00},size={23.00,15.00},proc=CheckProc_PDG,title="B"
	CheckBox check40,value= 0
	CheckBox check41,pos={392.00,73.00},size={33.00,15.00},proc=CheckProc_PDG,title="QD"
	CheckBox check41,value= 0
	CheckBox check42,pos={392.00,98.00},size={31.00,15.00},proc=CheckProc_PDG,title="QF"
	CheckBox check42,value= 0
	CheckBox check43,pos={392.00,123.00},size={31.00,15.00},proc=CheckProc_PDG,title="QS"
	CheckBox check43,value= 0
	CheckBox check44,pos={392.00,147.00},size={30.00,15.00},proc=CheckProc_PDG,title="SD"
	CheckBox check44,value= 0
	CheckBox check45,pos={392.00,170.00},size={28.00,15.00},proc=CheckProc_PDG,title="SF"
	CheckBox check45,value= 0
	CheckBox check46,pos={392.00,193.00},size={33.00,15.00},proc=CheckProc_PDG,title="CH"
	CheckBox check46,value= 0
	CheckBox check47,pos={392.00,216.00},size={31.00,15.00},proc=CheckProc_PDG,title="CV"
	CheckBox check47,value= 0
	CheckBox check48,pos={475.00,98.00},size={48.00,15.00},proc=CheckProc_PDG,title="XBPM"
	CheckBox check48,value= 0
	CheckBox check49,pos={475.00,123.00},size={48.00,15.00},proc=CheckProc_PDG,title="YBPM"
	CheckBox check49,value= 0
	GroupBox group3,pos={12.00,252.00},size={174.00,168.00},title="TS"
	CheckBox check31,pos={107.00,274.00},size={31.00,15.00},proc=CheckProc_PDG,title="PU"
	CheckBox check31,value= 0
	CheckBox check33,pos={107.00,297.00},size={41.00,15.00},disable=2,title="BPM"
	CheckBox check33,value= 0
	CheckBox check50,pos={24.00,273.00},size={29.00,15.00},disable=2,title="PS"
	CheckBox check50,value= 0
	CheckBox check51,pos={42.00,296.00},size={23.00,15.00},proc=CheckProc_PDG,title="B"
	CheckBox check51,value= 0
	CheckBox check52,pos={42.00,320.00},size={33.00,15.00},proc=CheckProc_PDG,title="QD"
	CheckBox check52,value= 0
	CheckBox check53,pos={42.00,345.00},size={31.00,15.00},proc=CheckProc_PDG,title="QF"
	CheckBox check53,value= 0
	CheckBox check54,pos={42.00,370.00},size={33.00,15.00},proc=CheckProc_PDG,title="CH"
	CheckBox check54,value= 0
	CheckBox check55,pos={42.00,394.00},size={31.00,15.00},proc=CheckProc_PDG,title="CV"
	CheckBox check55,value= 0
	CheckBox check56,pos={125.00,319.00},size={48.00,15.00},proc=CheckProc_PDG,title="XBPM"
	CheckBox check56,value= 0
	CheckBox check57,pos={125.00,344.00},size={48.00,15.00},proc=CheckProc_PDG,title="YBPM"
	CheckBox check57,value= 0
	GroupBox group4,pos={194.00,252.00},size={429.00,357.00},title="SI"
	CheckBox check58,pos={225.00,463.00},size={46.00,15.00},proc=CheckProc_PDG,title="QDP1"
	CheckBox check58,value= 0
	CheckBox check59,pos={225.00,487.00},size={46.00,15.00},proc=CheckProc_PDG,title="QDP2"
	CheckBox check59,value= 0
	CheckBox check60,pos={291.00,295.00},size={31.00,15.00},proc=CheckProc_PDG,title="Q1"
	CheckBox check60,value= 0
	CheckBox check61,pos={207.00,271.00},size={29.00,15.00},disable=2,title="PS"
	CheckBox check61,value= 0
	CheckBox check62,pos={225.00,294.00},size={23.00,15.00},proc=CheckProc_PDG,title="B"
	CheckBox check62,value= 0
	CheckBox check63,pos={225.00,318.00},size={38.00,15.00},proc=CheckProc_PDG,title="QFA"
	CheckBox check63,value= 0
	CheckBox check64,pos={225.00,343.00},size={38.00,15.00},proc=CheckProc_PDG,title="QFB"
	CheckBox check64,value= 0
	CheckBox check65,pos={225.00,368.00},size={38.00,15.00},proc=CheckProc_PDG,title="QFP"
	CheckBox check65,value= 0
	CheckBox check66,pos={225.00,392.00},size={41.00,15.00},proc=CheckProc_PDG,title="QDA"
	CheckBox check66,value= 0
	CheckBox check67,pos={225.00,415.00},size={46.00,15.00},proc=CheckProc_PDG,title="QDB1"
	CheckBox check67,value= 0
	CheckBox check68,pos={225.00,438.00},size={46.00,15.00},proc=CheckProc_PDG,title="QDB2"
	CheckBox check68,value= 0
	CheckBox check70,pos={291.00,318.00},size={31.00,15.00},proc=CheckProc_PDG,title="Q2"
	CheckBox check70,value= 0
	CheckBox check71,pos={291.00,343.00},size={31.00,15.00},proc=CheckProc_PDG,title="Q3"
	CheckBox check71,value= 0
	CheckBox check9,pos={27.00,221.00},size={30.00,15.00},proc=CheckProc_PDG,title="VA"
	CheckBox check9,value= 0
	CheckBox check72,pos={270.00,119.00},size={30.00,15.00},proc=CheckProc_PDG,title="VA"
	CheckBox check72,value= 0
	CheckBox check73,pos={457.00,147.00},size={30.00,15.00},proc=CheckProc_PDG,title="VA"
	CheckBox check73,value= 0
	CheckBox check74,pos={107.00,370.00},size={30.00,15.00},proc=CheckProc_PDG,title="VA"
	CheckBox check74,value= 0
	CheckBox check75,pos={291.00,367.00},size={31.00,15.00},proc=CheckProc_PDG,title="Q4"
	CheckBox check75,value= 0
	CheckBox check76,pos={291.00,392.00},size={41.00,15.00},proc=CheckProc_PDG,title="SFA0"
	CheckBox check76,value= 0
	CheckBox check69,pos={291.00,463.00},size={41.00,15.00},proc=CheckProc_PDG,title="SFB0"
	CheckBox check69,value= 0
	CheckBox check77,pos={291.00,487.00},size={41.00,15.00},proc=CheckProc_PDG,title="SFB1"
	CheckBox check77,value= 0
	CheckBox check78,pos={353.00,298.00},size={41.00,15.00},proc=CheckProc_PDG,title="SFB2"
	CheckBox check78,value= 0
	CheckBox check79,pos={353.00,321.00},size={41.00,15.00},proc=CheckProc_PDG,title="SFP0"
	CheckBox check79,value= 0
	CheckBox check80,pos={353.00,346.00},size={41.00,15.00},proc=CheckProc_PDG,title="SFP1"
	CheckBox check80,value= 0
	CheckBox check81,pos={353.00,370.00},size={41.00,15.00},proc=CheckProc_PDG,title="SFP2"
	CheckBox check81,value= 0
	CheckBox check82,pos={353.00,395.00},size={44.00,15.00},proc=CheckProc_PDG,title="SDA0"
	CheckBox check82,value= 0
	CheckBox check83,pos={291.00,415.00},size={41.00,15.00},proc=CheckProc_PDG,title="SFA1"
	CheckBox check83,value= 0
	CheckBox check84,pos={291.00,439.00},size={41.00,15.00},proc=CheckProc_PDG,title="SFA2"
	CheckBox check84,value= 0
	CheckBox check85,pos={353.00,418.00},size={44.00,15.00},proc=CheckProc_PDG,title="SDA1"
	CheckBox check85,value= 0
	CheckBox check86,pos={353.00,441.00},size={44.00,15.00},proc=CheckProc_PDG,title="SDA2"
	CheckBox check86,value= 0
	CheckBox check87,pos={353.00,465.00},size={44.00,15.00},proc=CheckProc_PDG,title="SDA3"
	CheckBox check87,value= 0
	CheckBox check88,pos={353.00,489.00},size={43.00,15.00},proc=CheckProc_PDG,title="SDB0"
	CheckBox check88,value= 0
	CheckBox check89,pos={418.00,299.00},size={43.00,15.00},proc=CheckProc_PDG,title="SDB1"
	CheckBox check89,value= 0
	CheckBox check90,pos={418.00,322.00},size={43.00,15.00},proc=CheckProc_PDG,title="SDB2"
	CheckBox check90,value= 0
	CheckBox check91,pos={418.00,346.00},size={43.00,15.00},proc=CheckProc_PDG,title="SDB3"
	CheckBox check91,value= 0
	CheckBox check92,pos={418.00,370.00},size={43.00,15.00},proc=CheckProc_PDG,title="SDP0"
	CheckBox check92,value= 0
	CheckBox check93,pos={418.00,395.00},size={43.00,15.00},proc=CheckProc_PDG,title="SDP1"
	CheckBox check93,value= 0
	CheckBox check94,pos={418.00,420.00},size={43.00,15.00},proc=CheckProc_PDG,title="SDP2"
	CheckBox check94,value= 0
	CheckBox check95,pos={418.00,443.00},size={43.00,15.00},proc=CheckProc_PDG,title="SDP3"
	CheckBox check95,value= 0
	CheckBox check96,pos={407.00,512.00},size={31.00,15.00},disable=2,title="CV"
	CheckBox check96,value= 0
	CheckBox check97,pos={291.00,512.00},size={33.00,15.00},disable=2,title="CH"
	CheckBox check97,value= 0
	CheckBox check98,pos={418.00,466.00},size={31.00,15.00},proc=CheckProc_PDG,title="QS"
	CheckBox check98,value= 0
	Button button0,pos={47.00,469.00},size={93.00,33.00},proc=ButtonProc_AddPDG,title="Add Selection"
	CheckBox check99,pos={479.00,274.00},size={41.00,15.00},disable=2,title="BPM"
	CheckBox check99,value= 0
	CheckBox check00,pos={497.00,299.00},size={48.00,15.00},disable=2,title="XBPM"
	CheckBox check00,value= 0
	CheckBox check01,pos={496.00,418.00},size={48.00,15.00},disable=2,title="YBPM"
	CheckBox check01,value= 0
	CheckBox check02,pos={547.00,556.00},size={31.00,15.00},proc=CheckProc_PDG,title="PU"
	CheckBox check02,value= 0
	CheckBox check6,pos={111.00,27.00},size={33.00,15.00},proc=CheckProc_PDG,title="CH"
	CheckBox check6,value= 0
	CheckBox check07,pos={111.00,53.00},size={31.00,15.00},proc=CheckProc_PDG,title="CV"
	CheckBox check07,value= 0
	CheckBox check03,pos={207.00,509.00},size={30.00,15.00},disable=2,title="VA"
	CheckBox check03,value= 0
	CheckBox check04,pos={225.00,532.00},size={40.00,15.00},proc=CheckProc_PDG,title="CCG"
	CheckBox check04,value= 0
	CheckBox check05,pos={225.00,556.00},size={44.00,15.00},proc=CheckProc_PDG,title="SIP20"
	CheckBox check05,value= 0
	CheckBox check06,pos={225.00,580.00},size={28.00,15.00},proc=CheckProc_PDG,title="FE"
	CheckBox check06,value= 0
	CheckBox check08,pos={515.00,324.00},size={33.00,15.00},proc=CheckProc_PDG,title="M1"
	CheckBox check08,value= 0
	CheckBox check09,pos={515.00,347.00},size={33.00,15.00},proc=CheckProc_PDG,title="M2"
	CheckBox check09,value= 0
	CheckBox check10,pos={515.00,370.00},size={41.00,15.00},proc=CheckProc_PDG,title="C1-1"
	CheckBox check10,value= 0
	CheckBox check11,pos={515.00,393.00},size={41.00,15.00},proc=CheckProc_PDG,title="C1-2"
	CheckBox check11,value= 0
	CheckBox check12,pos={568.00,324.00},size={30.00,15.00},proc=CheckProc_PDG,title="C2"
	CheckBox check12,value= 0
	CheckBox check13,pos={568.00,347.00},size={41.00,15.00},proc=CheckProc_PDG,title="C3-1"
	CheckBox check13,value= 0
	CheckBox check14,pos={568.00,370.00},size={41.00,15.00},proc=CheckProc_PDG,title="C3-2"
	CheckBox check14,value= 0
	CheckBox check15,pos={568.00,393.00},size={30.00,15.00},proc=CheckProc_PDG,title="C4"
	CheckBox check15,value= 0
	CheckBox check16,pos={515.00,439.00},size={33.00,15.00},proc=CheckProc_PDG,title="M1"
	CheckBox check16,value= 0
	CheckBox check17,pos={515.00,462.00},size={33.00,15.00},proc=CheckProc_PDG,title="M2"
	CheckBox check17,value= 0
	CheckBox check18,pos={515.00,485.00},size={41.00,15.00},proc=CheckProc_PDG,title="C1-1"
	CheckBox check18,value= 0
	CheckBox check19,pos={515.00,508.00},size={41.00,15.00},proc=CheckProc_PDG,title="C1-2"
	CheckBox check19,value= 0
	CheckBox check20,pos={568.00,439.00},size={30.00,15.00},proc=CheckProc_PDG,title="C2"
	CheckBox check20,value= 0
	CheckBox check21,pos={568.00,462.00},size={41.00,15.00},proc=CheckProc_PDG,title="C3-1"
	CheckBox check21,value= 0
	CheckBox check23,pos={568.00,485.00},size={41.00,15.00},proc=CheckProc_PDG,title="C3-2"
	CheckBox check23,value= 0
	CheckBox check32,pos={568.00,508.00},size={30.00,15.00},proc=CheckProc_PDG,title="C4"
	CheckBox check32,value= 0
	CheckBox check100,pos={308.00,533.00},size={33.00,15.00},proc=CheckProc_PDG,title="M1"
	CheckBox check100,value= 0
	CheckBox check101,pos={308.00,555.00},size={33.00,15.00},proc=CheckProc_PDG,title="M2"
	CheckBox check101,value= 0
	CheckBox check102,pos={308.00,577.00},size={30.00,15.00},proc=CheckProc_PDG,title="C1"
	CheckBox check102,value= 0
	CheckBox check103,pos={353.00,533.00},size={30.00,15.00},proc=CheckProc_PDG,title="C2"
	CheckBox check103,value= 0
	CheckBox check104,pos={353.00,555.00},size={30.00,15.00},proc=CheckProc_PDG,title="C3"
	CheckBox check104,value= 0
	CheckBox check105,pos={353.00,577.00},size={30.00,15.00},proc=CheckProc_PDG,title="C4"
	CheckBox check105,value= 0
	CheckBox check106,pos={424.00,534.00},size={33.00,15.00},proc=CheckProc_PDG,title="M1"
	CheckBox check106,value= 0
	CheckBox check107,pos={424.00,556.00},size={33.00,15.00},proc=CheckProc_PDG,title="M2"
	CheckBox check107,value= 0
	CheckBox check108,pos={424.00,578.00},size={30.00,15.00},proc=CheckProc_PDG,title="C1"
	CheckBox check108,value= 0
	CheckBox check111,pos={469.00,534.00},size={30.00,15.00},proc=CheckProc_PDG,title="C2"
	CheckBox check111,value= 0
	CheckBox check109,pos={469.00,556.00},size={30.00,15.00},proc=CheckProc_PDG,title="C3"
	CheckBox check109,value= 0
	CheckBox check110,pos={469.00,578.00},size={30.00,15.00},proc=CheckProc_PDG,title="C4"
	CheckBox check110,value= 0
	Execute/Q/Z "SetWindow kwTopWin sizeLimit={33,48,inf,inf}" // sizeLimit requires Igor 7 or later
EndMacro

//função para atualizar valor dos controles de seleção de período da janela 'LOAD DATA'
Function PopMenuProc_Period(pa) : PopupMenuControl
	STRUCT WMPopupAction &pa
	NVAR Period = root:GlobalVariables:gPeriod
	string DateHourSControlList = ControlNameList("LoadDataWindow",";","*Start*") //gera lista com nomes dos controles data/hora inicial
	string DateHourEControlList = ControlNameList("LoadDataWindow",";","*End*") //gera lista com nomes dos controles data/hora final
	
	switch( pa.eventCode )
		case 2: // mouse up
			Variable popNum = pa.popNum
			String popStr = pa.popStr
			switch (popNum)
				case 1:
					Period = 1 //Seta variável global com o valor correspondente
					UpdatePeriodControls(1) //Preenche controles data/hora inicial e final com o intervalo da última hora
					ModifyControlList DateHourSControlList disable=2 //desabilita edição dos controles data/hora inicial
					ModifyControlList DateHourEControlList disable=2 //desabilita edição dos controles data/hora final
					break
				case 2:
					Period = 2
					UpdatePeriodControls(3)
					ModifyControlList DateHourSControlList disable=2
					ModifyControlList DateHourEControlList disable=2
					break
				case 3:
					Period = 3
					UpdatePeriodControls(6)
					ModifyControlList DateHourSControlList disable=2
					ModifyControlList DateHourEControlList disable=2
					break
				case 4:
					Period = 4
					UpdatePeriodControls(24)
					ModifyControlList DateHourSControlList disable=2
					ModifyControlList DateHourEControlList disable=2
					break
				case 5:
					Period = 5
					FixedStartFixedEnd()
					ModifyControlList DateHourSControlList disable=0
					ModifyControlList DateHourEControlList disable=0
					SetVariable svStartDay activate
					break
				case 6:
					Period = 6
					FixedStartEndNow()
					ModifyControlList DateHourSControlList disable=0
					ModifyControlList DateHourEControlList disable=2
					break
			endswitch
			break
		case -1: // control being killed
			break
	endswitch
	return 0
End

//Seleciona metodo (aplica funcao na url caso necessario)
Function PopMenuProc_Method(pa) : PopupMenuControl
	STRUCT WMPopupAction &pa
	NVAR/Z Method = root:GlobalVariables:gMethod
	NVAR/Z Interval = root:GlobalVariables:gInterval 
	switch( pa.eventCode )
		case 2: // mouse up
			Variable popNum = pa.popNum
			String popStr = pa.popStr
			strswitch (popStr)
				case "Normal":
					Method = 1
					PopUpMenu/Z puInterval disable=2, mode=1, value= #"\"Default Variable Interval;Interval: 10 Points;Interval: 30 Points;Interval: 60 Points;Interval: 300 Points;Interval: Custom\""
					Interval = 1
					SetVariable/Z svNth disable=1
					break
				case "Average":
					Method = 2
					PopUpMenu/Z puInterval disable=0, mode=1, value= #"\"Interval: 10 Points;Interval: 30 Points;Interval: 60 Points;Interval: 300 Points;Interval: Custom\""
					Interval = 2
					SetVariable/Z svNth disable=1
					PopUpMenu puInterval mode=1, disable=0
				break
				case "Minimum":
					Method = 3
					PopUpMenu/Z puInterval disable=0, mode=1, value= #"\"Interval: 10 Points;Interval: 30 Points;Interval: 60 Points;Interval: 300 Points;Interval: Custom\""
					Interval = 2
					SetVariable/Z svNth disable=1
					PopUpMenu puInterval mode=1, disable=0
					break
				case "Maximum":
					Method = 4
					PopUpMenu/Z puInterval disable=0, mode=1, value= #"\"Interval: 10 Points;Interval: 30 Points;Interval: 60 Points;Interval: 300 Points;Interval: Custom\""
					Interval = 2
					SetVariable/Z svNth disable=1
					PopUpMenu puInterval mode=1, disable=0
					break
				case "N-th":
					Method = 5
					PopUpMenu/Z puInterval disable=0, mode=1, value= #"\"Interval: 10 Points;Interval: 30 Points;Interval: 60 Points;Interval: 300 Points;Interval: Custom\""
					Interval = 2
					SetVariable/Z svNth disable=1
					PopUpMenu puInterval mode=1, disable=0
					break
			endswitch
			break
		case -1: // control being killed
			break
	endswitch
	return 0
End

//função para selecionar o intervalo para a variavel global
Function PopMenuProc_Interval(pa) : PopupMenuControl
	STRUCT WMPopupAction &pa
	NVAR/Z Interval = root:GlobalVariables:gInterval
	NVAR/Z Method = root:GlobalVariables:gMethod
	switch( pa.eventCode )
		case 2: // mouse up
			Variable popNum = pa.popNum
			String popStr = pa.popStr
				strswitch (popStr)
					case "Default Variable Interval":
						Interval = 0 //Padrão da Variável - nunca chamado
						SetVariable/Z svNth disable=1
					break
					case "Interval: 10 Points":
						Interval = 10 //10 Segundos
						SetVariable/Z svNth disable=1
					break
					case "Interval: 30 Points":
						Interval = 30 //30 Segundos
						SetVariable/Z svNth disable=1
					break
					case "Interval: 60 Points":
						Interval = 60 // 1 Minuto
						SetVariable/Z svNth disable=1
					break
					case "Interval: 300 Points":
						Interval = 300 // 5 Minutos
						SetVariable/Z svNth disable=1
					break
					case "Interval: Custom":
						Interval = 2.000 //Customizado
						switch (Method)
							case 1: //Normal - nunca ocorrerá
								SetVariable/Z svNth limits={1,inf,0}
								Interval = 1.000
								break
							case 2: //Médias
								SetVariable/Z svNth limits={2,inf,0}
								Interval = 2.000
								break
							case 3: //Mínimos
								SetVariable/Z svNth limits={2,inf,0}
								Interval = 2.000
								break
							case 4: //Máximos
								SetVariable/Z svNth limits={2,inf,0}
								Interval = 2.000
								break
							case 5: //N-Ésimos
								SetVariable/Z svNth limits={1,inf,0}
								Interval = 2.000
								break
						endswitch
						SetVariable/Z svNth disable=0, activate
					break
				endswitch
			break
		case -1: // control being killed
			break
	endswitch
	return 0
End

//função para botão de Add to Selection do painel principal. Esta função pesquisa do arquivo de PVs na pasta da procedimentos
//de usuário pela PV ou filtro adicionado no campo de pesquisa e se encontra, adiciona o conteúdo da pesquisa à lista para
//carregamento. Se não encontra, emite alerta na área de histórico do Igor.
Function ButtonProc_AddSelection(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	wave/T wGrepRes = root:VarList:wGrepRes
	wave/T wParameters2Search = root:VarList:wParameters2Search
	wave wParameterSel = root:VarList:wParameterSel
	SVAR/Z SearchField = root:GlobalVariables:gSearchField
	SVAR/Z PVsFile = root:GlobalVariables:gPVsfile
	
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			//SearchFieldTemp = ReplaceString("%", SearchFieldTemp, ".+", 0, inf) //.+ procura um ou mais caracteres quaisquer
			//SearchFieldTemp = ReplaceString("*", SearchFieldTemp, ".", 0, inf) //. procura apenas um caracter qualquer
			//SearchFieldTemp = "^" + SearchFieldTemp //^ denota com quais caracteres começa a procura
			//SearchFieldTemp = SearchFieldTemp + "$" //$ denota com quais caracteres termina a procura
			if (strlen(SearchField) != 0) //se há algo no campo SearchField
				Grep/E=SearchField PVsFile as wGrepRes //pesquisa no arquivo pvfile pela PV usando como critério SearchField, retorna na wave wGrepRes
				if (wavedims(wGrepRes) == 0) //verifico se há algum resultado que corresponde à pesquisa, se não há...
					print "There's no item that corresponds to that EPICS Name / Search Filters!" //emito aviso
					SetVariable svSearchField activate // e retorno a seleção ao campo do Nome EPICS/Filtro de Pesquisa
				else	 //se há...
					InsertPoints (inf), 1, wParameterSel, wParameters2Search //^BO-01.+PS.+Current-Mon$
					wParameters2Search[inf] = SearchField //adiciono o valor digitado à wave de itens a serem carregados
					SearchField = "" //esvazio o campo
					SetVariable svSearchField activate //retorno o cursor de texto ao campo do Nome EPICS/Filtro de Pesquisa
					make/T/O/N=0 root:VarList:wGrepRes //esvazio a wave
				endif
				killstrings/A/Z //mato as strings geradas no Grep acima
				killvariables/A/Z //idem para variáveis
			endif
			break
		case -1: // control being killed
			break
	endswitch

	return 0
End


Function ButtonProc_Cancel(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	NVAR/Z gAbort = root:GlobalVariables:gAbort
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			gAbort = 1
			break
		case -1: // control being killed
			break
	endswitch
	return 0
End

Function ButtonProc_DeleteFromSelection(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	wave/T wParameters2Search = root:VarList:wParameters2Search
	wave wParameterSel = root:VarList:wParameterSel
	string Selection = ""
	int i

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			for (i=0;i<numpnts(wParameterSel);i+=1)
				if (wParameterSel[i] == 1)
					Selection = Selection + wParameters2Search[i] + ";"
				endif
			endfor
			
			for (i=0;i<ItemsInList(Selection);i+=1)
				FindValue/TEXT=stringfromlist(i,Selection) wParameters2Search
				//print wParameterSel
				DeletePoints V_Value, 1, wParameterSel, wParameters2Search
				KillVariables/Z V_Value
			endfor
			break
		case -1: // control being killed
			break
	endswitch
	return 0
End

Function ButtonProc_OpenPDG(ba) : ButtonControl
	STRUCT WMButtonAction &ba

	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			OpenPDG()
			break
		case -1: // control being killed
			break
	endswitch
	return 0
End

Function ButtonProc_AddPDG(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	wave/T wPDG = root:VarList:wPDG
	switch( ba.eventCode )
		case 2: // mouse up
			// click code here
			AddPDGSel()
			ZeroSel()
			KillWindow PreDefinedGroups
			break
		case -1: // control being killed
			break
	endswitch
	return 0
End

Function CheckProc_PDG(cba) : CheckBoxControl
	STRUCT WMCheckboxAction &cba
	switch( cba.eventCode )
		case 2: // mouse up
			PDGcheckboxSel(cba.ctrlName, cba.checked)
			break
		case -1: // control being killed
			break
	endswitch
	return 0
End

Function ButtonProc_LoadSelection(ba) : ButtonControl
	STRUCT WMButtonAction &ba
	wave/T wParameters2Search = root:VarList:wParameters2Search
	wave/T wGrepRes = root:VarList:wGrepRes
	SVAR/Z PVsFile = root:GlobalVariables:gPVsfile
	SVAR/Z gEmptyPV = root:GlovalVariables:gEmptyPV
	wave/T wPVs = root:VarList:wPVs
	SVAR/Z gZRbpms = root:GlovalVariables:gZRbpms
	NVAR/Z gAbort = root:GlobalVariables:gAbort
	NVAR/Z Method = root:GlobalVariables:gMethod
	string pvname
	string pvname_TS
	//wave/T wPVstemp
	int i = 0
	string changedname
	variable bar
	
	switch( ba.eventCode )
		case 2: // mouse up
			try
				// click code here
				Button btnLoadSelection, disable=2
				ControlUpdate /W=LoadDataWindow btnLoadSelection
				Button btnCancel, disable=0
				ControlUpdate /W=LoadDataWindow btnCancel	
				Redimension/N=0 wPVs //zera wave wPVs
				DoUpdate /E=1 /W=LoadDataWindow /SPIN=1
				//gera wave de pesquisa
				for (i=0; i < numpnts(wParameters2Search); i+=1)//para cada parametro de pesquisa no caixa de pesquisa
					//Redimension/N=(numpnts(wPVs)) wPVstemp //igualo dimensoes de wPVs(1) e wPVstemp(1)
					//wPVstemp = wPVs //copio wPVs para wPVstemp
					Grep/E=wParameters2Search[i] PVsFile as wGrepRes //pesquiso no arquivo PVsFile e gero o resultado na wave GrepRes
					//Redimension/N=(numpnts(wPVs)+numpnts(wGrepRes)) wPVs //redimensiono wPVs para acomodar o resultado
					Concatenate/NP/T {wGrepRes}, wPVs //junto todas as iterações de wGrepRes na wave wPVs
					//wPVs = wPVstemp + wGrepRes //copio o conteúdo anterior mais o resultado GrepRes para
				endfor
				
				print " "
				ValDisplay vdBar,value= _NUM:0
				ValDisplay vdBar win=LoadDataWindow, disable=0
				DoUpdate /W=LoadDataWindow /E=1 /SPIN=1
				//carrega dados do archiver
				for (i=0; i < numpnts(wPVs); i+=1) //para cada PV na wave
					//DoUpdate /W=LoadDataWindow /E=1 /SPIN=1
					if(V_flag == 2)
						ValDisplay vdBar win=LoadDataWindow, disable=1
						Button btnLoadSelection, disable=0
						ControlUpdate /W=LoadDataWindow btnLoadSelection
						Button btnCancel, disable=1
						ControlUpdate /W=LoadDataWindow btnCancel
						break
					endif
					if (LoadSelection(wPVs[i]) == 0) //se função de carregar retornar ok
						if(Method != 1)
							pvname = wPVs[i]
							pvname = ReplaceString(":", pvname, "_")
							pvname_TS = pvname + "_TS"
							pvname_TS = ReplaceString(":", pvname_TS, "_")
							DeletePoints 0, 1, $pvname
							DeletePoints 0, 1, $pvname_TS
						endif
						if(GetControlValueNbr("cbBPMs", "LoadDataWindow") == 1)
							if(stringmatch(wPVs[i],"*BPM*Mon"))
								changedname = ReplaceString(":", wPVs[i], "_")
								BpmShiftWave(0, changedname)
							endif
						endif
					endif
					bar = 100/numpnts(wPVs)
					ValDisplay vdBar win=LoadDataWindow, value= _NUM:bar+bar*i
					DoUpdate/W=LoadDataWindow
				endfor
				
				FixOnePointWaves(wPVs) //altera waves com um único ponto para terem dois pontos
				ValDisplay vdBar win=LoadDataWindow, disable=1
				Button btnLoadSelection, disable=0
				ControlUpdate /W=LoadDataWindow btnLoadSelection
				DoUpdate /W=LoadDataWindow /E=0 /SPIN=0
				Button btnCancel, disable=1
				ControlUpdate /W=LoadDataWindow btnCancel
				break
			catch
				if (V_AbortCode == -1)
					Button btnLoadSelection, disable=0
					ControlUpdate /W=LoadDataWindow btnLoadSelection
					break
				endif
			endtry
		case -1: // control being killed
			break
	endswitch
	gAbort = 0
End

