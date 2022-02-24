#pragma TextEncoding = "UTF-8"
#pragma rtGlobals=3		// Use modern global access method and strict wave access.
#include <KBColorizeTraces>

Window WLINAC_EG() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(219,75.5,1180.5,582.5)/R=right1 'LI-01_EG-BiasPS_currentinsoft' vs 'LI-01_EG-BiasPS_currentinsoft_TS'
	AppendToGraph/R 'LI-01_EG-FilaPS_currentoutsoft' vs 'LI-01_EG-FilaPS_currentoutsoft_TS'
	AppendToGraph/R=right2 'LI-01_EG-PulsePS_poweroutsoft' vs 'LI-01_EG-PulsePS_poweroutsoft_TS'
	AppendToGraph 'LI-01_EG-HVPS_voltoutsoft' vs 'LI-01_EG-HVPS_voltoutsoft_TS'
	AppendToGraph/L=left1 'LI-01_EG-FilaPS_voltinsoft' vs 'LI-01_EG-FilaPS_voltinsoft_TS'
	AppendToGraph/L=left2 'LI-01_EG-BiasPS_voltoutsoft' vs 'LI-01_EG-BiasPS_voltoutsoft_TS'
	ModifyGraph mode('LI-01_EG-BiasPS_currentinsoft')=4,mode('LI-01_EG-FilaPS_currentoutsoft')=4
	ModifyGraph mode('LI-01_EG-PulsePS_poweroutsoft')=4
	ModifyGraph lSize=2
	ModifyGraph rgb('LI-01_EG-BiasPS_currentinsoft')=(0,0,65535),rgb('LI-01_EG-FilaPS_currentoutsoft')=(65535,16385,16385)
	ModifyGraph rgb('LI-01_EG-PulsePS_poweroutsoft')=(48059,48059,48059),rgb('LI-01_EG-HVPS_voltoutsoft')=(0,0,0)
	ModifyGraph rgb('LI-01_EG-FilaPS_voltinsoft')=(2,39321,1),rgb('LI-01_EG-BiasPS_voltoutsoft')=(39321,1,31457)
	ModifyGraph lblPos(left)=89,lblPos(right)=105,lblPos(left1)=88,lblPos(right1)=105
	ModifyGraph lblPos(left2)=91,lblPos(right2)=104
	ModifyGraph lblLatPos(left)=3,lblLatPos(right1)=1
	ModifyGraph freePos(left1)=0
	ModifyGraph freePos(right1)=0
	ModifyGraph freePos(left2)=0
	ModifyGraph freePos(right2)=0
	ModifyGraph axisEnab(left)={0,0.32}
	ModifyGraph axisEnab(right)={0,0.32}
	ModifyGraph axisEnab(left1)={0.34,0.65}
	ModifyGraph axisEnab(right1)={0.34,0.65}
	ModifyGraph axisEnab(left2)={0.66,1}
	ModifyGraph axisEnab(right2)={0.66,1}
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Tensão (V)"
	Label right "Corrente (A)"
	Label left1 "Tensão (V)"
	Label right1 "Corrente (A)"
	Label left2 "Tensão (V)"
	Label right2 "Potência (W)"
	Legend/C/N=text0/J/X=17.21/Y=1.24
	AppendText "\\s('LI-01_EG-HVPS_voltoutsoft') 'LI-01_EG-HVPS_voltoutsoft'\t\t\\s('LI-01_EG-BiasPS_currentinsoft') 'LI-01_EG-BiasPS_currentinsoft'"
	AppendText "\\s('LI-01_EG-FilaPS_currentoutsoft') 'LI-01_EG-FilaPS_currentoutsoft'\t\\s('LI-01_EG-BiasPS_voltoutsoft') 'LI-01_EG-BiasPS_voltoutsoft'"
	AppendText "\\s('LI-01_EG-FilaPS_voltinsoft') 'LI-01_EG-FilaPS_voltinsoft'\t\t\\s('LI-01_EG-PulsePS_poweroutsoft') 'LI-01_EG-PulsePS_poweroutsoft'"
EndMacro

Function LINAC_EG()
	Execute "WLINAC_EG()"
End

Window WLINAC_PS() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(85.5,51.5,1348.5,653) 'LI-01_PS-Lens-1_Current-Mon' vs 'LI-01_PS-Lens-1_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-Lens-2_Current-Mon' vs 'LI-01_PS-Lens-2_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-Lens-3_Current-Mon' vs 'LI-01_PS-Lens-3_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-Lens-4_Current-Mon' vs 'LI-01_PS-Lens-4_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-LensRev_Current-Mon' vs 'LI-01_PS-LensRev_Current-Mon_TS'
	AppendToGraph/R 'LI-01_PS-QD1_Current-Mon' vs 'LI-01_PS-QD1_Current-Mon_TS'
	AppendToGraph/R 'LI-01_PS-QD2_Current-Mon' vs 'LI-01_PS-QD2_Current-Mon_TS'
	AppendToGraph/R 'LI-01_PS-QF3_Current-Mon' vs 'LI-01_PS-QF3_Current-Mon_TS'
	AppendToGraph/L=left1 'LI-01_PS-Slnd-1_Current-Mon' vs 'LI-01_PS-Slnd-1_Current-Mon_TS'
	AppendToGraph/L=left1 'LI-01_PS-Slnd-2_Current-Mon' vs 'LI-01_PS-Slnd-2_Current-Mon_TS'
	AppendToGraph/L=left1 'LI-01_PS-Slnd-3_Current-Mon' vs 'LI-01_PS-Slnd-3_Current-Mon_TS'
	AppendToGraph/L=left1 'LI-01_PS-Slnd-4_Current-Mon' vs 'LI-01_PS-Slnd-4_Current-Mon_TS'
	AppendToGraph/L=left1 'LI-01_PS-Slnd-5_Current-Mon' vs 'LI-01_PS-Slnd-5_Current-Mon_TS'
	AppendToGraph/L=left1 'LI-01_PS-Slnd-6_Current-Mon' vs 'LI-01_PS-Slnd-6_Current-Mon_TS'
	AppendToGraph/L=left1 'LI-01_PS-Slnd-7_Current-Mon' vs 'LI-01_PS-Slnd-7_Current-Mon_TS'
	AppendToGraph/L=left1 'LI-01_PS-Slnd-8_Current-Mon' vs 'LI-01_PS-Slnd-8_Current-Mon_TS'
	AppendToGraph/L=left1 'LI-01_PS-Slnd-9_Current-Mon' vs 'LI-01_PS-Slnd-9_Current-Mon_TS'
	AppendToGraph/L=left1 'LI-01_PS-Slnd-10_Current-Mon' vs 'LI-01_PS-Slnd-10_Current-Mon_TS'
	AppendToGraph/L=left1 'LI-01_PS-Slnd-11_Current-Mon' vs 'LI-01_PS-Slnd-11_Current-Mon_TS'
	AppendToGraph/L=left1 'LI-01_PS-Slnd-12_Current-Mon' vs 'LI-01_PS-Slnd-12_Current-Mon_TS'
	AppendToGraph/L=left1 'LI-01_PS-Slnd-13_Current-Mon' vs 'LI-01_PS-Slnd-13_Current-Mon_TS'
	AppendToGraph/R=right1 'LI-01_PS-Spect_Current-Mon' vs 'LI-01_PS-Spect_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('LI-01_PS-Lens-1_Current-Mon')=(0,0,0),rgb('LI-01_PS-Lens-2_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('LI-01_PS-Lens-3_Current-Mon')=(2,39321,1),rgb('LI-01_PS-Lens-4_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('LI-01_PS-LensRev_Current-Mon')=(39321,1,31457),rgb('LI-01_PS-QD1_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('LI-01_PS-QD2_Current-Mon')=(65535,32768,32768),rgb('LI-01_PS-QF3_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('LI-01_PS-Slnd-1_Current-Mon')=(16385,65535,65535),rgb('LI-01_PS-Slnd-2_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('LI-01_PS-Slnd-3_Current-Mon')=(0,0,0),rgb('LI-01_PS-Slnd-4_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('LI-01_PS-Slnd-5_Current-Mon')=(2,39321,1),rgb('LI-01_PS-Slnd-6_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('LI-01_PS-Slnd-7_Current-Mon')=(39321,1,31457),rgb('LI-01_PS-Slnd-8_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('LI-01_PS-Slnd-9_Current-Mon')=(65535,32768,32768),rgb('LI-01_PS-Slnd-10_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('LI-01_PS-Slnd-11_Current-Mon')=(16385,65535,65535),rgb('LI-01_PS-Slnd-12_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('LI-01_PS-Slnd-13_Current-Mon')=(0,0,0),rgb('LI-01_PS-Spect_Current-Mon')=(65535,16385,16385)
	ModifyGraph lblPos(left)=114,lblPos(right)=132,lblPos(left1)=113,lblPos(right1)=130
	ModifyGraph lblLatPos(left)=-4,lblLatPos(right)=-3,lblLatPos(left1)=6,lblLatPos(right1)=-3
	ModifyGraph freePos(left1)=0
	ModifyGraph freePos(right1)=0
	ModifyGraph axisEnab(left)={0,0.15}
	ModifyGraph axisEnab(right)={0.15,0.3}
	ModifyGraph axisEnab(left1)={0.31,0.84}
	ModifyGraph axisEnab(right1)={0.85,1}
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Lens"
	Label right "QD/F"
	Label left1 "Solenóides"
	Label right1 "Spec"
	TextBox/C/N=text0/X=89.12/Y=-1.66 "LINAC - PS"
EndMacro


Function LINAC_PS()
	Execute "WLINAC_PS()"
End

Window WLINAC_VA() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(157.5,65,1183.5,627.5) 'LA-VA_H1VGC-01_RdPrs-1' vs 'LA-VA_H1VGC-01_RdPrs-1_TS'
	AppendToGraph 'LA-VA_H1VGC-02_RdPrs-1' vs 'LA-VA_H1VGC-02_RdPrs-1_TS'
	AppendToGraph 'LA-VA_H1VGC-03_RdPrs-1' vs 'LA-VA_H1VGC-03_RdPrs-1_TS'
	AppendToGraph 'LA-VA_H1VGC-04_RdPrs-1' vs 'LA-VA_H1VGC-04_RdPrs-1_TS'
	AppendToGraph 'LA-VA_H1VGC-05_RdPrs-1' vs 'LA-VA_H1VGC-05_RdPrs-1_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('LA-VA_H1VGC-01_RdPrs-1')=(0,0,0),rgb('LA-VA_H1VGC-02_RdPrs-1')=(65535,16385,16385)
	ModifyGraph rgb('LA-VA_H1VGC-03_RdPrs-1')=(2,39321,1),rgb('LA-VA_H1VGC-04_RdPrs-1')=(0,0,65535)
	ModifyGraph rgb('LA-VA_H1VGC-05_RdPrs-1')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Pressão (mBar)"
	Legend/C/N=text0/J/X=71.75/Y=12.38 "\\s('LA-VA_H1VGC-01_RdPrs-1') 'LA-VA_H1VGC-01_RdPrs-1'\r\\s('LA-VA_H1VGC-02_RdPrs-1') 'LA-VA_H1VGC-02_RdPrs-1'"
	AppendText "\\s('LA-VA_H1VGC-03_RdPrs-1') 'LA-VA_H1VGC-03_RdPrs-1'\r\\s('LA-VA_H1VGC-04_RdPrs-1') 'LA-VA_H1VGC-04_RdPrs-1'"
	AppendText "\\s('LA-VA_H1VGC-05_RdPrs-1') 'LA-VA_H1VGC-05_RdPrs-1'"
EndMacro

Function LINAC_VA()
	Execute "WLINAC_VA()"
End

Window WLINAC_CH() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(231.75,87.5,1183.5,603.5) 'LI-01_PS-CH-1_Current-Mon' vs 'LI-01_PS-CH-1_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-CH-2_Current-Mon' vs 'LI-01_PS-CH-2_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-CH-3_Current-Mon' vs 'LI-01_PS-CH-3_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-CH-4_Current-Mon' vs 'LI-01_PS-CH-4_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-CH-5_Current-Mon' vs 'LI-01_PS-CH-5_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-CH-6_Current-Mon' vs 'LI-01_PS-CH-6_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-CH-7_Current-Mon' vs 'LI-01_PS-CH-7_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('LI-01_PS-CH-1_Current-Mon')=(0,0,0),rgb('LI-01_PS-CH-2_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('LI-01_PS-CH-3_Current-Mon')=(2,39321,1),rgb('LI-01_PS-CH-4_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('LI-01_PS-CH-5_Current-Mon')=(39321,1,31457),rgb('LI-01_PS-CH-6_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('LI-01_PS-CH-7_Current-Mon')=(65535,32768,32768)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=24.20/Y=40.62 "\\s('LI-01_PS-CH-1_Current-Mon') 'LI-01_PS-CH-1_Current-Mon'\t\\s('LI-01_PS-CH-5_Current-Mon') 'LI-01_PS-CH-5_Current-Mon'"
	AppendText "\\s('LI-01_PS-CH-2_Current-Mon') 'LI-01_PS-CH-2_Current-Mon'\t\\s('LI-01_PS-CH-6_Current-Mon') 'LI-01_PS-CH-6_Current-Mon'"
	AppendText "\\s('LI-01_PS-CH-3_Current-Mon') 'LI-01_PS-CH-3_Current-Mon'\t\\s('LI-01_PS-CH-7_Current-Mon') 'LI-01_PS-CH-7_Current-Mon'"
	AppendText "\\s('LI-01_PS-CH-4_Current-Mon') 'LI-01_PS-CH-4_Current-Mon'"
EndMacro

Function LINAC_CH()
	Execute "WLINAC_CH()"
End

Window WLINAC_CV() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(202.5,92,1212,625.25) 'LI-01_PS-CV-1_Current-Mon' vs 'LI-01_PS-CV-1_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-CV-2_Current-Mon' vs 'LI-01_PS-CV-2_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-CV-3_Current-Mon' vs 'LI-01_PS-CV-3_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-CV-4_Current-Mon' vs 'LI-01_PS-CV-4_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-CV-5_Current-Mon' vs 'LI-01_PS-CV-5_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-CV-6_Current-Mon' vs 'LI-01_PS-CV-6_Current-Mon_TS'
	AppendToGraph 'LI-01_PS-CV-7_Current-Mon' vs 'LI-01_PS-CV-7_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('LI-01_PS-CV-1_Current-Mon')=(0,0,0),rgb('LI-01_PS-CV-2_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('LI-01_PS-CV-3_Current-Mon')=(2,39321,1),rgb('LI-01_PS-CV-4_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('LI-01_PS-CV-5_Current-Mon')=(39321,1,31457),rgb('LI-01_PS-CV-6_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('LI-01_PS-CV-7_Current-Mon')=(65535,32768,32768)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=29.69/Y=5.51 "\\s('LI-01_PS-CV-1_Current-Mon') 'LI-01_PS-CV-1_Current-Mon'\t\\s('LI-01_PS-CV-5_Current-Mon') 'LI-01_PS-CV-5_Current-Mon'"
	AppendText "\\s('LI-01_PS-CV-2_Current-Mon') 'LI-01_PS-CV-2_Current-Mon'\t\\s('LI-01_PS-CV-6_Current-Mon') 'LI-01_PS-CV-6_Current-Mon'"
	AppendText "\\s('LI-01_PS-CV-3_Current-Mon') 'LI-01_PS-CV-3_Current-Mon'\t\\s('LI-01_PS-CV-7_Current-Mon') 'LI-01_PS-CV-7_Current-Mon'"
	AppendText "\\s('LI-01_PS-CV-4_Current-Mon') 'LI-01_PS-CV-4_Current-Mon'"
EndMacro

Function LINAC_CV()
	Execute "WLINAC_CV()"
End

Window WTB_B() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(266.25,120.5,879,473.75) 'TB-Fam_PS-B_Current-Mon' vs 'TB-Fam_PS-B_Current-Mon_TS'
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
EndMacro

Function TB_B()
	Execute "WTB_B()"
End

Window WTB_QD() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(35.25,41.75,1010.25,535.25) 'TB-01_PS-QD1_Current-Mon' vs 'TB-01_PS-QD1_Current-Mon_TS'
	AppendToGraph/R 'TB-02_PS-QD2B_Current-Mon' vs 'TB-02_PS-QD2B_Current-Mon_TS'
	AppendToGraph/L=left1 'TB-02_PS-QD2A_Current-Mon' vs 'TB-02_PS-QD2A_Current-Mon_TS'
	AppendToGraph/R=right1 'TB-03_PS-QD3_Current-Mon' vs 'TB-03_PS-QD3_Current-Mon_TS'
	AppendToGraph/L=left2 'TB-04_PS-QD4_Current-Mon' vs 'TB-04_PS-QD4_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('TB-01_PS-QD1_Current-Mon')=(0,0,0),rgb('TB-02_PS-QD2B_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('TB-02_PS-QD2A_Current-Mon')=(2,39321,1),rgb('TB-03_PS-QD3_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('TB-04_PS-QD4_Current-Mon')=(39321,1,31457)
	ModifyGraph lblPos(left)=71,lblPos(right)=74,lblPos(left1)=75,lblPos(right1)=72
	ModifyGraph lblPos(left2)=75
	ModifyGraph freePos(left1)=0
	ModifyGraph freePos(right1)=0
	ModifyGraph freePos(left2)=0
	ModifyGraph axisEnab(left)={0,0.19}
	ModifyGraph axisEnab(right)={0.21,0.39}
	ModifyGraph axisEnab(left1)={0.41,0.59}
	ModifyGraph axisEnab(right1)={0.61,0.79}
	ModifyGraph axisEnab(left2)={0.81,1}
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Label right "Corrente (A)"
	Label left1 "Corrente (A)"
	Label right1 "Corrente (A)"
	Label left2 "Corrente (A)"
	Legend/C/N=text0/J/X=1.02/Y=-1.24 "\\s('TB-01_PS-QD1_Current-Mon') 'TB-01_PS-QD1_Current-Mon'\r\\s('TB-02_PS-QD2B_Current-Mon') 'TB-02_PS-QD2B_Current-Mon'"
	AppendText "\\s('TB-02_PS-QD2A_Current-Mon') 'TB-02_PS-QD2A_Current-Mon'\r\\s('TB-03_PS-QD3_Current-Mon') 'TB-03_PS-QD3_Current-Mon'"
	AppendText "\\s('TB-04_PS-QD4_Current-Mon') 'TB-04_PS-QD4_Current-Mon'"
EndMacro

Function TB_QD()
	Execute "WTB_QD()"
End

Window WTB_QF() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(35.25,41.75,1026.75,558.5) 'TB-01_PS-QF1_Current-Mon' vs 'TB-01_PS-QF1_Current-Mon_TS'
	AppendToGraph/R 'TB-02_PS-QF2B_Current-Mon' vs 'TB-02_PS-QF2B_Current-Mon_TS'
	AppendToGraph/L=left1 'TB-02_PS-QF2A_Current-Mon' vs 'TB-02_PS-QF2A_Current-Mon_TS'
	AppendToGraph/R=right1 'TB-03_PS-QF3_Current-Mon' vs 'TB-03_PS-QF3_Current-Mon_TS'
	AppendToGraph/L=left2 'TB-04_PS-QF4_Current-Mon' vs 'TB-04_PS-QF4_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('TB-01_PS-QF1_Current-Mon')=(0,0,0),rgb('TB-02_PS-QF2B_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('TB-02_PS-QF2A_Current-Mon')=(2,39321,1),rgb('TB-03_PS-QF3_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('TB-04_PS-QF4_Current-Mon')=(39321,1,31457)
	ModifyGraph lblPos(left)=79,lblPos(right)=85,lblPos(left1)=83,lblPos(right1)=85
	ModifyGraph lblPos(left2)=81
	ModifyGraph freePos(left1)=0
	ModifyGraph freePos(right1)=0
	ModifyGraph freePos(left2)=0
	ModifyGraph axisEnab(left)={0,0.19}
	ModifyGraph axisEnab(right)={0.21,0.39}
	ModifyGraph axisEnab(left1)={0.41,0.59}
	ModifyGraph axisEnab(right1)={0.61,0.79}
	ModifyGraph axisEnab(left2)={0.81,1}
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Label right "Corrente (A)"
	Label left1 "Corrente (A)"
	Label right1 "Corrente (A)"
	Label left2 "Corrente (A)"
	Legend/C/N=text0/J/X=3.34/Y=-0.69 "\\s('TB-01_PS-QF1_Current-Mon') 'TB-01_PS-QF1_Current-Mon'\r\\s('TB-02_PS-QF2B_Current-Mon') 'TB-02_PS-QF2B_Current-Mon'"
	AppendText "\\s('TB-02_PS-QF2A_Current-Mon') 'TB-02_PS-QF2A_Current-Mon'\r\\s('TB-03_PS-QF3_Current-Mon') 'TB-03_PS-QF3_Current-Mon'"
	AppendText "\\s('TB-04_PS-QF4_Current-Mon') 'TB-04_PS-QF4_Current-Mon'"
EndMacro

Function TB_QF()
	Execute "WTB_QF()"
End

Window WTB_CH() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(24,52.25,1011,556.25) 'TB-01_PS-CH-1_Current-Mon' vs 'TB-01_PS-CH-1_Current-Mon_TS'
	AppendToGraph/R 'TB-01_PS-CH-2_Current-Mon' vs 'TB-01_PS-CH-2_Current-Mon_TS'
	AppendToGraph/L=left1 'TB-02_PS-CH-1_Current-Mon' vs 'TB-02_PS-CH-1_Current-Mon_TS'
	AppendToGraph/R=right1 'TB-02_PS-CH-2_Current-Mon' vs 'TB-02_PS-CH-2_Current-Mon_TS'
	AppendToGraph/L=left2 'TB-04_PS-CH-1_Current-Mon' vs 'TB-04_PS-CH-1_Current-Mon_TS'
	AppendToGraph/R=right2 'TB-04_PS-CH-2_Current-Mon' vs 'TB-04_PS-CH-2_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('TB-01_PS-CH-1_Current-Mon')=(0,0,0),rgb('TB-01_PS-CH-2_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('TB-02_PS-CH-1_Current-Mon')=(2,39321,1),rgb('TB-02_PS-CH-2_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('TB-04_PS-CH-1_Current-Mon')=(39321,1,31457),rgb('TB-04_PS-CH-2_Current-Mon')=(48059,48059,48059)
	ModifyGraph lblPos(left)=79,lblPos(right)=81,lblPos(left1)=78,lblPos(right1)=81
	ModifyGraph lblPos(left2)=78,lblPos(right2)=82
	ModifyGraph freePos(left1)=0
	ModifyGraph freePos(right1)=0
	ModifyGraph freePos(left2)=0
	ModifyGraph freePos(right2)=0
	ModifyGraph axisEnab(left)={0,0.16}
	ModifyGraph axisEnab(right)={0.17,0.32}
	ModifyGraph axisEnab(left1)={0.33,0.49}
	ModifyGraph axisEnab(right1)={0.5,0.64}
	ModifyGraph axisEnab(left2)={0.66,0.8}
	ModifyGraph axisEnab(right2)={0.84,1}
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Label right "Corrente (A)"
	Label left1 "Corrente (A)"
	Label right1 "Corrente (A)"
	Label left2 "Corrente (A)"
	Label right2 "Corrente (A)"
	Legend/C/N=text0/J/X=0.61/Y=-1.74 "\\s('TB-01_PS-CH-1_Current-Mon') 'TB-01_PS-CH-1_Current-Mon'\r\\s('TB-01_PS-CH-2_Current-Mon') 'TB-01_PS-CH-2_Current-Mon'"
	AppendText "\\s('TB-02_PS-CH-1_Current-Mon') 'TB-02_PS-CH-1_Current-Mon'\r\\s('TB-02_PS-CH-2_Current-Mon') 'TB-02_PS-CH-2_Current-Mon'"
	AppendText "\\s('TB-04_PS-CH-1_Current-Mon') 'TB-04_PS-CH-1_Current-Mon'\r\\s('TB-04_PS-CH-2_Current-Mon') 'TB-04_PS-CH-2_Current-Mon'"
EndMacro

Function TB_CH()
	Execute "WTB_CH()"
End

Window WTB_CV() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(35.25,41.75,1033.5,562.25) 'TB-01_PS-CV-1_Current-Mon' vs 'TB-01_PS-CV-1_Current-Mon_TS'
	AppendToGraph/R 'TB-01_PS-CV-2_Current-Mon' vs 'TB-01_PS-CV-2_Current-Mon_TS'
	AppendToGraph/L=left1 'TB-02_PS-CV-1_Current-Mon' vs 'TB-02_PS-CV-1_Current-Mon_TS'
	AppendToGraph/R=right1 'TB-02_PS-CV-2_Current-Mon' vs 'TB-02_PS-CV-2_Current-Mon_TS'
	AppendToGraph/L=left2 'TB-04_PS-CV-1_Current-Mon' vs 'TB-04_PS-CV-1_Current-Mon_TS'
	AppendToGraph/R=right2 'TB-04_PS-CV-2_Current-Mon' vs 'TB-04_PS-CV-2_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('TB-01_PS-CV-1_Current-Mon')=(0,0,0),rgb('TB-01_PS-CV-2_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('TB-02_PS-CV-1_Current-Mon')=(2,39321,1),rgb('TB-02_PS-CV-2_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('TB-04_PS-CV-1_Current-Mon')=(39321,1,31457),rgb('TB-04_PS-CV-2_Current-Mon')=(48059,48059,48059)
	ModifyGraph lblPos(left)=104,lblPos(right)=93,lblPos(left1)=105,lblPos(right1)=93
	ModifyGraph lblPos(left2)=105,lblPos(right2)=94
	ModifyGraph freePos(left1)=0
	ModifyGraph freePos(right1)=0
	ModifyGraph freePos(left2)=0
	ModifyGraph freePos(right2)=0
	ModifyGraph axisEnab(left)={0,0.16}
	ModifyGraph axisEnab(right)={0.17,0.32}
	ModifyGraph axisEnab(left1)={0.33,0.49}
	ModifyGraph axisEnab(right1)={0.51,0.66}
	ModifyGraph axisEnab(left2)={0.67,0.81}
	ModifyGraph axisEnab(right2)={0.82,1}
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Label right "Corrente (A)"
	Label left1 "Corrente (A)"
	Label right1 "Corrente (A)"
	Label left2 "Corrente (A)"
	Label right2 "Corrente (A)"
	Legend/C/N=text0/J/X=1.43/Y=-0.69 "\\s('TB-01_PS-CV-1_Current-Mon') 'TB-01_PS-CV-1_Current-Mon'\r\\s('TB-01_PS-CV-2_Current-Mon') 'TB-01_PS-CV-2_Current-Mon'"
	AppendText "\\s('TB-02_PS-CV-1_Current-Mon') 'TB-02_PS-CV-1_Current-Mon'\r\\s('TB-02_PS-CV-2_Current-Mon') 'TB-02_PS-CV-2_Current-Mon'"
	AppendText "\\s('TB-04_PS-CV-1_Current-Mon') 'TB-04_PS-CV-1_Current-Mon'\r\\s('TB-04_PS-CV-2_Current-Mon') 'TB-04_PS-CV-2_Current-Mon'"
EndMacro

Function TB_CV()
	Execute "WTB_CV()"
End

Window WTB_PU() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(14.25,50,1026.75,563) 'TB-04_PU-InjSept_Voltage-Mon' vs 'TB-04_PU-InjSept_Voltage-Mon_TS'
	AppendToGraph 'TB-04_PU-InjSept_Voltage-SP' vs 'TB-04_PU-InjSept_Voltage-SP_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('TB-04_PU-InjSept_Voltage-SP')=(1,12815,52428)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Tensão (V)"
	Legend/C/N=text0/J/X=0.39/Y=5.11 "\\s('TB-04_PU-InjSept_Voltage-Mon') 'TB-04_PU-InjSept_Voltage-Mon'"
	AppendText "\\s('TB-04_PU-InjSept_Voltage-SP') 'TB-04_PU-InjSept_Voltage-SP'"
EndMacro

Function TB_PU()
	Execute "WTB_PU()"
End

Window WTB_BPMy() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(7.5,41.75,1026,557.75) 'TB-01_DI-BPM-1_PosY-Mon' vs 'TB-01_DI-BPM-1_PosY-Mon_TS'
	AppendToGraph 'TB-01_DI-BPM-2_PosY-Mon' vs 'TB-01_DI-BPM-2_PosY-Mon_TS'
	AppendToGraph 'TB-02_DI-BPM-1_PosY-Mon' vs 'TB-02_DI-BPM-1_PosY-Mon_TS'
	AppendToGraph 'TB-02_DI-BPM-2_PosY-Mon' vs 'TB-02_DI-BPM-2_PosY-Mon_TS'
	ModifyGraph rgb('TB-01_DI-BPM-1_PosY-Mon')=(0,0,0),rgb('TB-01_DI-BPM-2_PosY-Mon')=(65535,16385,16385)
	ModifyGraph rgb('TB-02_DI-BPM-1_PosY-Mon')=(2,39321,1),rgb('TB-02_DI-BPM-2_PosY-Mon')=(0,0,65535)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Posição (µm)"
	Legend/C/N=text0/J/X=0.74/Y=0.44 "\\s('TB-01_DI-BPM-1_PosY-Mon') 'TB-01_DI-BPM-1_PosY-Mon'\r\\s('TB-01_DI-BPM-2_PosY-Mon') 'TB-01_DI-BPM-2_PosY-Mon'"
	AppendText "\\s('TB-02_DI-BPM-1_PosY-Mon') 'TB-02_DI-BPM-1_PosY-Mon'\r\\s('TB-02_DI-BPM-2_PosY-Mon') 'TB-02_DI-BPM-2_PosY-Mon'"
EndMacro

Function TB_BPMy()
	Execute "WTB_BPMy()"
End

Window WTB_BPMx() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(9.75,43.25,1035.75,564.5) 'TB-01_DI-BPM-1_PosX-Mon' vs 'TB-01_DI-BPM-1_PosX-Mon_TS'
	AppendToGraph 'TB-01_DI-BPM-2_PosX-Mon' vs 'TB-01_DI-BPM-2_PosX-Mon_TS'
	AppendToGraph 'TB-02_DI-BPM-1_PosX-Mon' vs 'TB-02_DI-BPM-1_PosX-Mon_TS'
	AppendToGraph 'TB-02_DI-BPM-2_PosX-Mon' vs 'TB-02_DI-BPM-2_PosX-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('TB-01_DI-BPM-1_PosX-Mon')=(0,0,0),rgb('TB-01_DI-BPM-2_PosX-Mon')=(65535,16385,16385)
	ModifyGraph rgb('TB-02_DI-BPM-1_PosX-Mon')=(2,39321,1),rgb('TB-02_DI-BPM-2_PosX-Mon')=(0,0,65535)
	ModifyGraph lblMargin(left)=11
	ModifyGraph lblLatPos(left)=-2
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=1.26/Y=1.03 "\\s('TB-01_DI-BPM-1_PosX-Mon') 'TB-01_DI-BPM-1_PosX-Mon'\r\\s('TB-01_DI-BPM-2_PosX-Mon') 'TB-01_DI-BPM-2_PosX-Mon'"
	AppendText "\\s('TB-02_DI-BPM-1_PosX-Mon') 'TB-02_DI-BPM-1_PosX-Mon'\r\\s('TB-02_DI-BPM-2_PosX-Mon') 'TB-02_DI-BPM-2_PosX-Mon'"
EndMacro

Function TB_BPMx()
	Execute "WTB_BPMx()"
End


Window WTB_VA() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(10.5,44.75,1032,563.75) 'TB-01_VA-CCG-ED_Pressure-Mon' vs 'TB-01_VA-CCG-ED_Pressure-Mon_TS'
	AppendToGraph 'TB-02_VA-SIP20-BG_Pressure-Mon' vs 'TB-02_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'TB-04_VA-CCG-ED_Pressure-Mon' vs 'TB-04_VA-CCG-ED_Pressure-Mon_TS'
	AppendToGraph 'TB-01_VA-SIP20-BG_Pressure-Mon' vs 'TB-01_VA-SIP20-BG_Pressure-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('TB-01_VA-CCG-ED_Pressure-Mon')=(0,0,0),rgb('TB-02_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('TB-04_VA-CCG-ED_Pressure-Mon')=(2,39321,1),rgb('TB-01_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Pressão (mBar)"
	Legend/C/N=text0/J/X=0.17/Y=10.34 "\\s('TB-01_VA-CCG-ED_Pressure-Mon') 'TB-01_VA-CCG-ED_Pressure-Mon'"
	AppendText "\\s('TB-02_VA-SIP20-BG_Pressure-Mon') 'TB-02_VA-SIP20-BG_Pressure-Mon'\r\\s('TB-04_VA-CCG-ED_Pressure-Mon') 'TB-04_VA-CCG-ED_Pressure-Mon'"
	AppendText "\\s('TB-01_VA-SIP20-BG_Pressure-Mon') 'TB-01_VA-SIP20-BG_Pressure-Mon'"
EndMacro

Function TB_VA()
	Execute "WTB_VA()"
End


Window WBO_B() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(13.5,47,1028.25,563) 'BO-Fam_PS-B-1_Current-Mon' vs 'BO-Fam_PS-B-1_Current-Mon_TS'
	AppendToGraph 'BO-Fam_PS-B-2_Current-Mon' vs 'BO-Fam_PS-B-2_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-Fam_PS-B-2_Current-Mon')=(1,12815,52428)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=1.24/Y=1.04 "\\s('BO-Fam_PS-B-1_Current-Mon') 'BO-Fam_PS-B-1_Current-Mon'\r\\s('BO-Fam_PS-B-2_Current-Mon') 'BO-Fam_PS-B-2_Current-Mon'"
EndMacro

Function BO_B()
	Execute "WBO_B()"
End

Window WBO_QD() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(13.5,47.75,1031.25,565.25) 'BO-Fam_PS-QD_Current-Mon' vs 'BO-Fam_PS-QD_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=2.31/Y=3.63 "\\s('BO-Fam_PS-QD_Current-Mon') 'BO-Fam_PS-QD_Current-Mon'"
EndMacro

Function BO_QD()
	Execute "WBO_QD()"
End

Window WBO_QF() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(13.5,46.25,1028.25,565.25) 'BO-Fam_PS-QF_Current-Mon' vs 'BO-Fam_PS-QF_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
EndMacro

Function BO_QF()
	Execute "WBO_QF()"
End

Window WBO_QS() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(14.25,48.5,1032.75,566.75) 'BO-02D_PS-QS_Current-Mon' vs 'BO-02D_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J "\\s('BO-02D_PS-QS_Current-Mon') 'BO-02D_PS-QS_Current-Mon'"
EndMacro

Function BO_QS()
	Execute "WBO_QS()"
End

Window WBO_SD() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(20.25,48.5,1028.25,564.5) 'BO-Fam_PS-SD_Current-Mon' vs 'BO-Fam_PS-SD_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J "\\s('BO-Fam_PS-SD_Current-Mon') 'BO-Fam_PS-SD_Current-Mon'"
EndMacro

Function BO_SD()
	Execute "WBO_SD()"
End


Window WBO_SF() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(18,50,1029.75,562.25) 'BO-Fam_PS-SF_Current-Mon' vs 'BO-Fam_PS-SF_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J "\\s('BO-Fam_PS-SF_Current-Mon') 'BO-Fam_PS-SF_Current-Mon'"
EndMacro

Function BO_SF()
	Execute "WBO_SF()"
End

Window WBO_CH() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(14.25,46.25,1028.25,563.75) 'BO-01U_PS-CH_Current-Mon' vs 'BO-01U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-03U_PS-CH_Current-Mon' vs 'BO-03U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-05U_PS-CH_Current-Mon' vs 'BO-05U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-07U_PS-CH_Current-Mon' vs 'BO-07U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-09U_PS-CH_Current-Mon' vs 'BO-09U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-11U_PS-CH_Current-Mon' vs 'BO-11U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-13U_PS-CH_Current-Mon' vs 'BO-13U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-15U_PS-CH_Current-Mon' vs 'BO-15U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-17U_PS-CH_Current-Mon' vs 'BO-17U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-19U_PS-CH_Current-Mon' vs 'BO-19U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-21U_PS-CH_Current-Mon' vs 'BO-21U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-23U_PS-CH_Current-Mon' vs 'BO-23U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-25U_PS-CH_Current-Mon' vs 'BO-25U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-27U_PS-CH_Current-Mon' vs 'BO-27U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-29U_PS-CH_Current-Mon' vs 'BO-29U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-31U_PS-CH_Current-Mon' vs 'BO-31U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-33U_PS-CH_Current-Mon' vs 'BO-33U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-35U_PS-CH_Current-Mon' vs 'BO-35U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-37U_PS-CH_Current-Mon' vs 'BO-37U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-39U_PS-CH_Current-Mon' vs 'BO-39U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-41U_PS-CH_Current-Mon' vs 'BO-41U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-43U_PS-CH_Current-Mon' vs 'BO-43U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-45U_PS-CH_Current-Mon' vs 'BO-45U_PS-CH_Current-Mon_TS'
	AppendToGraph 'BO-47U_PS-CH_Current-Mon' vs 'BO-47U_PS-CH_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-01U_PS-CH_Current-Mon')=(0,0,0),rgb('BO-03U_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-05U_PS-CH_Current-Mon')=(2,39321,1),rgb('BO-07U_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-09U_PS-CH_Current-Mon')=(39321,1,31457),rgb('BO-11U_PS-CH_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-13U_PS-CH_Current-Mon')=(65535,32768,32768),rgb('BO-15U_PS-CH_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-17U_PS-CH_Current-Mon')=(16385,65535,65535),rgb('BO-19U_PS-CH_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('BO-21U_PS-CH_Current-Mon')=(0,0,0),rgb('BO-23U_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-25U_PS-CH_Current-Mon')=(2,39321,1),rgb('BO-27U_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-29U_PS-CH_Current-Mon')=(39321,1,31457),rgb('BO-31U_PS-CH_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-33U_PS-CH_Current-Mon')=(65535,32768,32768),rgb('BO-35U_PS-CH_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-37U_PS-CH_Current-Mon')=(16385,65535,65535),rgb('BO-39U_PS-CH_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('BO-41U_PS-CH_Current-Mon')=(0,0,0),rgb('BO-43U_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-45U_PS-CH_Current-Mon')=(2,39321,1),rgb('BO-47U_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=0.00/Y=0.00 "Horizontal Correctors"
EndMacro

Function BO_CH()
	Execute "WBO_CH()"
End

Window WBO_CV() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(13.5,44.75,1032,564.5) 'BO-01U_PS-CV_Current-Mon' vs 'BO-01U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-03U_PS-CV_Current-Mon' vs 'BO-03U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-05U_PS-CV_Current-Mon' vs 'BO-05U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-07U_PS-CV_Current-Mon' vs 'BO-07U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-09U_PS-CV_Current-Mon' vs 'BO-09U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-11U_PS-CV_Current-Mon' vs 'BO-11U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-13U_PS-CV_Current-Mon' vs 'BO-13U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-15U_PS-CV_Current-Mon' vs 'BO-15U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-17U_PS-CV_Current-Mon' vs 'BO-17U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-19U_PS-CV_Current-Mon' vs 'BO-19U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-21U_PS-CV_Current-Mon' vs 'BO-21U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-23U_PS-CV_Current-Mon' vs 'BO-23U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-25U_PS-CV_Current-Mon' vs 'BO-25U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-27U_PS-CV_Current-Mon' vs 'BO-27U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-29U_PS-CV_Current-Mon' vs 'BO-29U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-31U_PS-CV_Current-Mon' vs 'BO-31U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-33U_PS-CV_Current-Mon' vs 'BO-33U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-35U_PS-CV_Current-Mon' vs 'BO-35U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-37U_PS-CV_Current-Mon' vs 'BO-37U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-39U_PS-CV_Current-Mon' vs 'BO-39U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-41U_PS-CV_Current-Mon' vs 'BO-41U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-43U_PS-CV_Current-Mon' vs 'BO-43U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-45U_PS-CV_Current-Mon' vs 'BO-45U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-47U_PS-CV_Current-Mon' vs 'BO-47U_PS-CV_Current-Mon_TS'
	AppendToGraph 'BO-49U_PS-CV_Current-Mon' vs 'BO-49U_PS-CV_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-01U_PS-CV_Current-Mon')=(0,0,0),rgb('BO-03U_PS-CV_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-05U_PS-CV_Current-Mon')=(2,39321,1),rgb('BO-07U_PS-CV_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-09U_PS-CV_Current-Mon')=(39321,1,31457),rgb('BO-11U_PS-CV_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-13U_PS-CV_Current-Mon')=(65535,32768,32768),rgb('BO-15U_PS-CV_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-17U_PS-CV_Current-Mon')=(16385,65535,65535),rgb('BO-19U_PS-CV_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('BO-21U_PS-CV_Current-Mon')=(0,0,0),rgb('BO-23U_PS-CV_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-25U_PS-CV_Current-Mon')=(2,39321,1),rgb('BO-27U_PS-CV_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-29U_PS-CV_Current-Mon')=(39321,1,31457),rgb('BO-31U_PS-CV_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-33U_PS-CV_Current-Mon')=(65535,32768,32768),rgb('BO-35U_PS-CV_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-37U_PS-CV_Current-Mon')=(16385,65535,65535),rgb('BO-39U_PS-CV_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('BO-41U_PS-CV_Current-Mon')=(0,0,0),rgb('BO-43U_PS-CV_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-45U_PS-CV_Current-Mon')=(2,39321,1),rgb('BO-47U_PS-CV_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-49U_PS-CV_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=0.00/Y=0.00 "Vertical Correctors"
EndMacro

Function BO_CV()
	Execute "WBO_CV()"
End

Window WBO_PU() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(15,46.25,1023,564.5) 'BO-01D_PU-InjKckr_Voltage-SP' vs 'BO-01D_PU-InjKckr_Voltage-SP_TS'
	AppendToGraph 'BO-01D_PU-InjKckr_Voltage-Mon' vs 'BO-01D_PU-InjKckr_Voltage-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-01D_PU-InjKckr_Voltage-SP')=(1,12815,52428)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Tensão (V)"
	Legend/C/N=text0/J "\\s('BO-01D_PU-InjKckr_Voltage-SP') 'BO-01D_PU-InjKckr_Voltage-SP'\r\\s('BO-01D_PU-InjKckr_Voltage-Mon') 'BO-01D_PU-InjKckr_Voltage-Mon'"
EndMacro

Function BO_PU()
	Execute "WBO_PU()"
End

Window WBO_RF() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(20.25,45.5,1029,563.75)/L=left1 'BO-05D_RF-P5Cav_Cell2Pwr-Mon' vs 'BO-05D_RF-P5Cav_Cell2Pwr-Mon_TS'
	AppendToGraph/L=left1 'BO-05D_RF-P5Cav_Cell4Pwr-Mon' vs 'BO-05D_RF-P5Cav_Cell4Pwr-Mon_TS'
	AppendToGraph/L=left1 'BO-05D_RF-P5Cav_Cell1Pwr-Mon' vs 'BO-05D_RF-P5Cav_Cell1Pwr-Mon_TS'
	AppendToGraph/L=left1 'BO-05D_RF-P5Cav_Cell3Pwr-Mon' vs 'BO-05D_RF-P5Cav_Cell3Pwr-Mon_TS'
	AppendToGraph/L=left1 'BO-05D_RF-P5Cav_Cell5Pwr-Mon' vs 'BO-05D_RF-P5Cav_Cell5Pwr-Mon_TS'
	AppendToGraph 'BO-05D_RF-P5Cav_Sts-Mon' vs 'BO-05D_RF-P5Cav_Sts-Mon_TS'
	AppendToGraph 'BO-05D_RF-P5Cav_PwrRevTop-Mon' vs 'BO-05D_RF-P5Cav_PwrRevTop-Mon_TS'
	AppendToGraph 'BO-05D_RF-P5Cav_PwrRevdBm-Mon' vs 'BO-05D_RF-P5Cav_PwrRevdBm-Mon_TS'
	AppendToGraph 'BO-05D_RF-P5Cav_PwrRevBot-Mon' vs 'BO-05D_RF-P5Cav_PwrRevBot-Mon_TS'
	AppendToGraph 'BO-05D_RF-P5Cav_PwrFwdTop-Mon' vs 'BO-05D_RF-P5Cav_PwrFwdTop-Mon_TS'
	AppendToGraph 'BO-05D_RF-P5Cav_PwrFwddBm-Mon' vs 'BO-05D_RF-P5Cav_PwrFwddBm-Mon_TS'
	AppendToGraph 'BO-05D_RF-P5Cav_PwrFwdBot-Mon' vs 'BO-05D_RF-P5Cav_PwrFwdBot-Mon_TS'
	AppendToGraph/R 'BO-05D_RF-P5Cav_Cylin5T-Mon' vs 'BO-05D_RF-P5Cav_Cylin5T-Mon_TS'
	AppendToGraph/R 'BO-05D_RF-P5Cav_Cylin4T-Mon' vs 'BO-05D_RF-P5Cav_Cylin4T-Mon_TS'
	AppendToGraph/R 'BO-05D_RF-P5Cav_Cylin3T-Mon' vs 'BO-05D_RF-P5Cav_Cylin3T-Mon_TS'
	AppendToGraph/R 'BO-05D_RF-P5Cav_Cylin2T-Mon' vs 'BO-05D_RF-P5Cav_Cylin2T-Mon_TS'
	AppendToGraph/R 'BO-05D_RF-P5Cav_Cylin1T-Mon' vs 'BO-05D_RF-P5Cav_Cylin1T-Mon_TS'
	ModifyGraph mode('BO-05D_RF-P5Cav_Sts-Mon')=4
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-05D_RF-P5Cav_Cell2Pwr-Mon')=(48059,48059,48059),rgb('BO-05D_RF-P5Cav_Cell4Pwr-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-05D_RF-P5Cav_Cell1Pwr-Mon')=(65535,32768,32768),rgb('BO-05D_RF-P5Cav_Cell3Pwr-Mon')=(39321,1,31457)
	ModifyGraph rgb('BO-05D_RF-P5Cav_Cell5Pwr-Mon')=(2,39321,1),rgb('BO-05D_RF-P5Cav_Sts-Mon')=(0,0,0)
	ModifyGraph rgb('BO-05D_RF-P5Cav_PwrRevTop-Mon')=(65535,16385,16385),rgb('BO-05D_RF-P5Cav_PwrRevdBm-Mon')=(2,39321,1)
	ModifyGraph rgb('BO-05D_RF-P5Cav_PwrRevBot-Mon')=(0,0,65535),rgb('BO-05D_RF-P5Cav_PwrFwdTop-Mon')=(39321,1,31457)
	ModifyGraph rgb('BO-05D_RF-P5Cav_PwrFwddBm-Mon')=(48059,48059,48059),rgb('BO-05D_RF-P5Cav_PwrFwdBot-Mon')=(65535,32768,32768)
	ModifyGraph rgb('BO-05D_RF-P5Cav_Cylin5T-Mon')=(0,65535,0),rgb('BO-05D_RF-P5Cav_Cylin4T-Mon')=(16385,65535,65535)
	ModifyGraph rgb('BO-05D_RF-P5Cav_Cylin3T-Mon')=(65535,32768,58981),rgb('BO-05D_RF-P5Cav_Cylin2T-Mon')=(0,0,0)
	ModifyGraph rgb('BO-05D_RF-P5Cav_Cylin1T-Mon')=(65535,16385,16385)
	ModifyGraph lblPos(left)=78,lblPos(left1)=80
	ModifyGraph freePos(left1)=0
	ModifyGraph axisEnab(left)={0,0.32}
	ModifyGraph axisEnab(right)={0.34,0.65}
	ModifyGraph axisEnab(left1)={0.67,1}
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Power (W)"
	Label right "Temperatura (ºC)"
	Label left1 "Power (W)"
	Legend/C/N=text0/J/X=1.62/Y=73.65 "\\Z08\\s('BO-05D_RF-P5Cav_Sts-Mon') 'BO-05D_RF-P5Cav_Sts-Mon'"
	AppendText "\\s('BO-05D_RF-P5Cav_PwrRevTop-Mon') 'BO-05D_RF-P5Cav_PwrRevTop-Mon'\r\\s('BO-05D_RF-P5Cav_PwrRevdBm-Mon') 'BO-05D_RF-P5Cav_PwrRevdBm-Mon'"
	AppendText "\\s('BO-05D_RF-P5Cav_PwrRevBot-Mon') 'BO-05D_RF-P5Cav_PwrRevBot-Mon'\r\\s('BO-05D_RF-P5Cav_PwrFwdTop-Mon') 'BO-05D_RF-P5Cav_PwrFwdTop-Mon'"
	AppendText "\\s('BO-05D_RF-P5Cav_PwrFwddBm-Mon') 'BO-05D_RF-P5Cav_PwrFwddBm-Mon'\r\\s('BO-05D_RF-P5Cav_PwrFwdBot-Mon') 'BO-05D_RF-P5Cav_PwrFwdBot-Mon'"
	TextBox/C/N=text1/X=2.52/Y=42.23 "\\Z08\\s('BO-05D_RF-P5Cav_Cylin5T-Mon') 'BO-05D_RF-P5Cav_Cylin5T-Mon'"
	AppendText "\n\\s('BO-05D_RF-P5Cav_Cylin4T-Mon') 'BO-05D_RF-P5Cav_Cylin4T-Mon'\r\n\\s('BO-05D_RF-P5Cav_Cylin3T-Mon') 'BO-05D_RF-P5Cav_Cylin3T-Mon'"
	AppendText "\n\\s('BO-05D_RF-P5Cav_Cylin2T-Mon') 'BO-05D_RF-P5Cav_Cylin2T-Mon'\r\n\\s('BO-05D_RF-P5Cav_Cylin1T-Mon') 'BO-05D_RF-P5Cav_Cylin1T-Mon'"
	TextBox/C/N=text2/X=2.25/Y=5.93 "\\Z08\\s('BO-05D_RF-P5Cav_Cell5Pwr-Mon') 'BO-05D_RF-P5Cav_Cell5Pwr-Mon'"
	AppendText "\n\\s('BO-05D_RF-P5Cav_Cell4Pwr-Mon') 'BO-05D_RF-P5Cav_Cell4Pwr-Mon'\r\n\\s('BO-05D_RF-P5Cav_Cell3Pwr-Mon') 'BO-05D_RF-P5Cav_Cell3Pwr-Mon'"
	AppendText "\n\\s('BO-05D_RF-P5Cav_Cell2Pwr-Mon') 'BO-05D_RF-P5Cav_Cell2Pwr-Mon'\r\n\\s('BO-05D_RF-P5Cav_Cell1Pwr-Mon') 'BO-05D_RF-P5Cav_Cell1Pwr-Mon'"
EndMacro

Function BO_RF()
	Execute "WBO_RF()"
End

Window WBO_BPMx1() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(6.75,41,401.25,249.5) 'BO-01U_DI-BPM_PosX-Mon' vs 'BO-01U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-02U_DI-BPM_PosX-Mon' vs 'BO-02U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-03U_DI-BPM_PosX-Mon' vs 'BO-03U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-04U_DI-BPM_PosX-Mon' vs 'BO-04U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-05U_DI-BPM_PosX-Mon' vs 'BO-05U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-06U_DI-BPM_PosX-Mon' vs 'BO-06U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-07U_DI-BPM_PosX-Mon' vs 'BO-07U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-08U_DI-BPM_PosX-Mon' vs 'BO-08U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-09U_DI-BPM_PosX-Mon' vs 'BO-09U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-10U_DI-BPM_PosX-Mon' vs 'BO-10U_DI-BPM_PosX-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-01U_DI-BPM_PosX-Mon')=(0,0,0),rgb('BO-02U_DI-BPM_PosX-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-03U_DI-BPM_PosX-Mon')=(2,39321,1),rgb('BO-04U_DI-BPM_PosX-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-05U_DI-BPM_PosX-Mon')=(39321,1,31457),rgb('BO-06U_DI-BPM_PosX-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-07U_DI-BPM_PosX-Mon')=(65535,32768,32768),rgb('BO-08U_DI-BPM_PosX-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-09U_DI-BPM_PosX-Mon')=(16385,65535,65535),rgb('BO-10U_DI-BPM_PosX-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-7.09/Y=-7.22 "\\Z08\\s('BO-01U_DI-BPM_PosX-Mon') 'BO-01U_DI-BPM_PosX-Mon'\r\\s('BO-02U_DI-BPM_PosX-Mon') 'BO-02U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-03U_DI-BPM_PosX-Mon') 'BO-03U_DI-BPM_PosX-Mon'\r\\s('BO-04U_DI-BPM_PosX-Mon') 'BO-04U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-05U_DI-BPM_PosX-Mon') 'BO-05U_DI-BPM_PosX-Mon'\r\\s('BO-06U_DI-BPM_PosX-Mon') 'BO-06U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-07U_DI-BPM_PosX-Mon') 'BO-07U_DI-BPM_PosX-Mon'\r\\s('BO-08U_DI-BPM_PosX-Mon') 'BO-08U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-09U_DI-BPM_PosX-Mon') 'BO-09U_DI-BPM_PosX-Mon'\r\\s('BO-10U_DI-BPM_PosX-Mon') 'BO-10U_DI-BPM_PosX-Mon'"
EndMacro

Window WBO_BPMx2() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(414,41,808.5,249.5) 'BO-11U_DI-BPM_PosX-Mon' vs 'BO-11U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-12U_DI-BPM_PosX-Mon' vs 'BO-12U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-13U_DI-BPM_PosX-Mon' vs 'BO-13U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-14U_DI-BPM_PosX-Mon' vs 'BO-14U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-15U_DI-BPM_PosX-Mon' vs 'BO-15U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-16U_DI-BPM_PosX-Mon' vs 'BO-16U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-17U_DI-BPM_PosX-Mon' vs 'BO-17U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-18U_DI-BPM_PosX-Mon' vs 'BO-18U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-19U_DI-BPM_PosX-Mon' vs 'BO-19U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-20U_DI-BPM_PosX-Mon' vs 'BO-20U_DI-BPM_PosX-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-11U_DI-BPM_PosX-Mon')=(0,0,0),rgb('BO-12U_DI-BPM_PosX-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-13U_DI-BPM_PosX-Mon')=(2,39321,1),rgb('BO-14U_DI-BPM_PosX-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-15U_DI-BPM_PosX-Mon')=(39321,1,31457),rgb('BO-16U_DI-BPM_PosX-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-17U_DI-BPM_PosX-Mon')=(65535,32768,32768),rgb('BO-18U_DI-BPM_PosX-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-19U_DI-BPM_PosX-Mon')=(16385,65535,65535),rgb('BO-20U_DI-BPM_PosX-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-7.09/Y=-7.22 "\\Z08\\s('BO-11U_DI-BPM_PosX-Mon') 'BO-11U_DI-BPM_PosX-Mon'\r\\s('BO-12U_DI-BPM_PosX-Mon') 'BO-12U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-13U_DI-BPM_PosX-Mon') 'BO-13U_DI-BPM_PosX-Mon'\r\\s('BO-14U_DI-BPM_PosX-Mon') 'BO-14U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-15U_DI-BPM_PosX-Mon') 'BO-15U_DI-BPM_PosX-Mon'\r\\s('BO-16U_DI-BPM_PosX-Mon') 'BO-16U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-17U_DI-BPM_PosX-Mon') 'BO-17U_DI-BPM_PosX-Mon'\r\\s('BO-18U_DI-BPM_PosX-Mon') 'BO-18U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-19U_DI-BPM_PosX-Mon') 'BO-19U_DI-BPM_PosX-Mon'\r\\s('BO-20U_DI-BPM_PosX-Mon') 'BO-20U_DI-BPM_PosX-Mon'"
EndMacro

Window WBO_BPMx3() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(6.75,276.5,401.25,485) 'BO-21U_DI-BPM_PosX-Mon' vs 'BO-21U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-22U_DI-BPM_PosX-Mon' vs 'BO-22U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-23U_DI-BPM_PosX-Mon' vs 'BO-23U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-24U_DI-BPM_PosX-Mon' vs 'BO-24U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-25U_DI-BPM_PosX-Mon' vs 'BO-25U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-26U_DI-BPM_PosX-Mon' vs 'BO-26U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-27U_DI-BPM_PosX-Mon' vs 'BO-27U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-28U_DI-BPM_PosX-Mon' vs 'BO-28U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-29U_DI-BPM_PosX-Mon' vs 'BO-29U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-30U_DI-BPM_PosX-Mon' vs 'BO-30U_DI-BPM_PosX-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-21U_DI-BPM_PosX-Mon')=(0,0,0),rgb('BO-22U_DI-BPM_PosX-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-23U_DI-BPM_PosX-Mon')=(2,39321,1),rgb('BO-24U_DI-BPM_PosX-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-25U_DI-BPM_PosX-Mon')=(39321,1,31457),rgb('BO-26U_DI-BPM_PosX-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-27U_DI-BPM_PosX-Mon')=(65535,32768,32768),rgb('BO-28U_DI-BPM_PosX-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-29U_DI-BPM_PosX-Mon')=(16385,65535,65535),rgb('BO-30U_DI-BPM_PosX-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-7.09/Y=-7.22 "\\Z08\\s('BO-21U_DI-BPM_PosX-Mon') 'BO-21U_DI-BPM_PosX-Mon'\r\\s('BO-22U_DI-BPM_PosX-Mon') 'BO-22U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-23U_DI-BPM_PosX-Mon') 'BO-23U_DI-BPM_PosX-Mon'\r\\s('BO-24U_DI-BPM_PosX-Mon') 'BO-24U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-25U_DI-BPM_PosX-Mon') 'BO-25U_DI-BPM_PosX-Mon'\r\\s('BO-26U_DI-BPM_PosX-Mon') 'BO-26U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-27U_DI-BPM_PosX-Mon') 'BO-27U_DI-BPM_PosX-Mon'\r\\s('BO-28U_DI-BPM_PosX-Mon') 'BO-28U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-29U_DI-BPM_PosX-Mon') 'BO-29U_DI-BPM_PosX-Mon'\r\\s('BO-30U_DI-BPM_PosX-Mon') 'BO-30U_DI-BPM_PosX-Mon'"
EndMacro

Window WBO_BPMx4() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(414,276.5,808.5,485) 'BO-31U_DI-BPM_PosX-Mon' vs 'BO-31U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-32U_DI-BPM_PosX-Mon' vs 'BO-32U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-33U_DI-BPM_PosX-Mon' vs 'BO-33U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-34U_DI-BPM_PosX-Mon' vs 'BO-34U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-35U_DI-BPM_PosX-Mon' vs 'BO-35U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-36U_DI-BPM_PosX-Mon' vs 'BO-36U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-37U_DI-BPM_PosX-Mon' vs 'BO-37U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-38U_DI-BPM_PosX-Mon' vs 'BO-38U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-39U_DI-BPM_PosX-Mon' vs 'BO-39U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-40U_DI-BPM_PosX-Mon' vs 'BO-40U_DI-BPM_PosX-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-31U_DI-BPM_PosX-Mon')=(0,0,0),rgb('BO-32U_DI-BPM_PosX-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-33U_DI-BPM_PosX-Mon')=(2,39321,1),rgb('BO-34U_DI-BPM_PosX-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-35U_DI-BPM_PosX-Mon')=(39321,1,31457),rgb('BO-36U_DI-BPM_PosX-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-37U_DI-BPM_PosX-Mon')=(65535,32768,32768),rgb('BO-38U_DI-BPM_PosX-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-39U_DI-BPM_PosX-Mon')=(16385,65535,65535),rgb('BO-40U_DI-BPM_PosX-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-7.09/Y=-7.22 "\\Z08\\s('BO-31U_DI-BPM_PosX-Mon') 'BO-31U_DI-BPM_PosX-Mon'\r\\s('BO-32U_DI-BPM_PosX-Mon') 'BO-32U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-33U_DI-BPM_PosX-Mon') 'BO-33U_DI-BPM_PosX-Mon'\r\\s('BO-34U_DI-BPM_PosX-Mon') 'BO-34U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-35U_DI-BPM_PosX-Mon') 'BO-35U_DI-BPM_PosX-Mon'\r\\s('BO-36U_DI-BPM_PosX-Mon') 'BO-36U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-37U_DI-BPM_PosX-Mon') 'BO-37U_DI-BPM_PosX-Mon'\r\\s('BO-38U_DI-BPM_PosX-Mon') 'BO-38U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-39U_DI-BPM_PosX-Mon') 'BO-39U_DI-BPM_PosX-Mon'\r\\s('BO-40U_DI-BPM_PosX-Mon') 'BO-40U_DI-BPM_PosX-Mon'"
EndMacro

Window WBO_BPMx5() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(821.25,41,1215.75,249.5) 'BO-41U_DI-BPM_PosX-Mon' vs 'BO-41U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-42U_DI-BPM_PosX-Mon' vs 'BO-42U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-43U_DI-BPM_PosX-Mon' vs 'BO-43U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-44U_DI-BPM_PosX-Mon' vs 'BO-44U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-45U_DI-BPM_PosX-Mon' vs 'BO-45U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-46U_DI-BPM_PosX-Mon' vs 'BO-46U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-47U_DI-BPM_PosX-Mon' vs 'BO-47U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-48U_DI-BPM_PosX-Mon' vs 'BO-48U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-49U_DI-BPM_PosX-Mon' vs 'BO-49U_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'BO-50U_DI-BPM_PosX-Mon' vs 'BO-50U_DI-BPM_PosX-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-41U_DI-BPM_PosX-Mon')=(0,0,0),rgb('BO-42U_DI-BPM_PosX-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-43U_DI-BPM_PosX-Mon')=(2,39321,1),rgb('BO-44U_DI-BPM_PosX-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-45U_DI-BPM_PosX-Mon')=(39321,1,31457),rgb('BO-46U_DI-BPM_PosX-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-47U_DI-BPM_PosX-Mon')=(65535,32768,32768),rgb('BO-48U_DI-BPM_PosX-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-49U_DI-BPM_PosX-Mon')=(16385,65535,65535),rgb('BO-50U_DI-BPM_PosX-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-6.84/Y=-7.22 "\\Z08\\s('BO-41U_DI-BPM_PosX-Mon') 'BO-41U_DI-BPM_PosX-Mon'\r\\s('BO-42U_DI-BPM_PosX-Mon') 'BO-42U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-43U_DI-BPM_PosX-Mon') 'BO-43U_DI-BPM_PosX-Mon'\r\\s('BO-44U_DI-BPM_PosX-Mon') 'BO-44U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-45U_DI-BPM_PosX-Mon') 'BO-45U_DI-BPM_PosX-Mon'\r\\s('BO-46U_DI-BPM_PosX-Mon') 'BO-46U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-47U_DI-BPM_PosX-Mon') 'BO-47U_DI-BPM_PosX-Mon'\r\\s('BO-48U_DI-BPM_PosX-Mon') 'BO-48U_DI-BPM_PosX-Mon'"
	AppendText "\\s('BO-49U_DI-BPM_PosX-Mon') 'BO-49U_DI-BPM_PosX-Mon'\r\\s('BO-50U_DI-BPM_PosX-Mon') 'BO-50U_DI-BPM_PosX-Mon'"
EndMacro

Function BO_BPMx()
	Execute "WBO_BPMx1()"
	Execute "WBO_BPMx2()"
	Execute "WBO_BPMx3()"
	Execute "WBO_BPMx4()"
	Execute "WBO_BPMx5()"
End


Window WBO_BPMy1() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(6.75,41,401.25,249.5) 'BO-01U_DI-BPM_PosY-Mon' vs 'BO-01U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-02U_DI-BPM_PosY-Mon' vs 'BO-02U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-03U_DI-BPM_PosY-Mon' vs 'BO-03U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-04U_DI-BPM_PosY-Mon' vs 'BO-04U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-05U_DI-BPM_PosY-Mon' vs 'BO-05U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-06U_DI-BPM_PosY-Mon' vs 'BO-06U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-07U_DI-BPM_PosY-Mon' vs 'BO-07U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-08U_DI-BPM_PosY-Mon' vs 'BO-08U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-09U_DI-BPM_PosY-Mon' vs 'BO-09U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-10U_DI-BPM_PosY-Mon' vs 'BO-10U_DI-BPM_PosY-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-01U_DI-BPM_PosY-Mon')=(0,0,0),rgb('BO-02U_DI-BPM_PosY-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-03U_DI-BPM_PosY-Mon')=(2,39321,1),rgb('BO-04U_DI-BPM_PosY-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-05U_DI-BPM_PosY-Mon')=(39321,1,31457),rgb('BO-06U_DI-BPM_PosY-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-07U_DI-BPM_PosY-Mon')=(65535,32768,32768),rgb('BO-08U_DI-BPM_PosY-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-09U_DI-BPM_PosY-Mon')=(16385,65535,65535),rgb('BO-10U_DI-BPM_PosY-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-7.09/Y=-7.22 "\\Z08\\s('BO-01U_DI-BPM_PosY-Mon') 'BO-01U_DI-BPM_PosY-Mon'\r\\s('BO-02U_DI-BPM_PosY-Mon') 'BO-02U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-03U_DI-BPM_PosY-Mon') 'BO-03U_DI-BPM_PosY-Mon'\r\\s('BO-04U_DI-BPM_PosY-Mon') 'BO-04U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-05U_DI-BPM_PosY-Mon') 'BO-05U_DI-BPM_PosY-Mon'\r\\s('BO-06U_DI-BPM_PosY-Mon') 'BO-06U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-07U_DI-BPM_PosY-Mon') 'BO-07U_DI-BPM_PosY-Mon'\r\\s('BO-08U_DI-BPM_PosY-Mon') 'BO-08U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-09U_DI-BPM_PosY-Mon') 'BO-09U_DI-BPM_PosY-Mon'\r\\s('BO-10U_DI-BPM_PosY-Mon') 'BO-10U_DI-BPM_PosY-Mon'"
EndMacro

Window WBO_BPMy2() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(414,41,808.5,249.5) 'BO-11U_DI-BPM_PosY-Mon' vs 'BO-11U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-12U_DI-BPM_PosY-Mon' vs 'BO-12U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-13U_DI-BPM_PosY-Mon' vs 'BO-13U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-14U_DI-BPM_PosY-Mon' vs 'BO-14U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-15U_DI-BPM_PosY-Mon' vs 'BO-15U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-16U_DI-BPM_PosY-Mon' vs 'BO-16U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-17U_DI-BPM_PosY-Mon' vs 'BO-17U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-18U_DI-BPM_PosY-Mon' vs 'BO-18U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-19U_DI-BPM_PosY-Mon' vs 'BO-19U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-20U_DI-BPM_PosY-Mon' vs 'BO-20U_DI-BPM_PosY-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-11U_DI-BPM_PosY-Mon')=(0,0,0),rgb('BO-12U_DI-BPM_PosY-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-13U_DI-BPM_PosY-Mon')=(2,39321,1),rgb('BO-14U_DI-BPM_PosY-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-15U_DI-BPM_PosY-Mon')=(39321,1,31457),rgb('BO-16U_DI-BPM_PosY-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-17U_DI-BPM_PosY-Mon')=(65535,32768,32768),rgb('BO-18U_DI-BPM_PosY-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-19U_DI-BPM_PosY-Mon')=(16385,65535,65535),rgb('BO-20U_DI-BPM_PosY-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-7.09/Y=-7.22 "\\Z08\\s('BO-11U_DI-BPM_PosY-Mon') 'BO-11U_DI-BPM_PosY-Mon'\r\\s('BO-12U_DI-BPM_PosY-Mon') 'BO-12U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-13U_DI-BPM_PosY-Mon') 'BO-13U_DI-BPM_PosY-Mon'\r\\s('BO-14U_DI-BPM_PosY-Mon') 'BO-14U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-15U_DI-BPM_PosY-Mon') 'BO-15U_DI-BPM_PosY-Mon'\r\\s('BO-16U_DI-BPM_PosY-Mon') 'BO-16U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-17U_DI-BPM_PosY-Mon') 'BO-17U_DI-BPM_PosY-Mon'\r\\s('BO-18U_DI-BPM_PosY-Mon') 'BO-18U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-19U_DI-BPM_PosY-Mon') 'BO-19U_DI-BPM_PosY-Mon'\r\\s('BO-20U_DI-BPM_PosY-Mon') 'BO-20U_DI-BPM_PosY-Mon'"
EndMacro

Window WBO_BPMy3() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(6.75,276.5,401.25,485) 'BO-21U_DI-BPM_PosY-Mon' vs 'BO-21U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-22U_DI-BPM_PosY-Mon' vs 'BO-22U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-23U_DI-BPM_PosY-Mon' vs 'BO-23U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-24U_DI-BPM_PosY-Mon' vs 'BO-24U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-25U_DI-BPM_PosY-Mon' vs 'BO-25U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-26U_DI-BPM_PosY-Mon' vs 'BO-26U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-27U_DI-BPM_PosY-Mon' vs 'BO-27U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-28U_DI-BPM_PosY-Mon' vs 'BO-28U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-29U_DI-BPM_PosY-Mon' vs 'BO-29U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-30U_DI-BPM_PosY-Mon' vs 'BO-30U_DI-BPM_PosY-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-21U_DI-BPM_PosY-Mon')=(0,0,0),rgb('BO-22U_DI-BPM_PosY-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-23U_DI-BPM_PosY-Mon')=(2,39321,1),rgb('BO-24U_DI-BPM_PosY-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-25U_DI-BPM_PosY-Mon')=(39321,1,31457),rgb('BO-26U_DI-BPM_PosY-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-27U_DI-BPM_PosY-Mon')=(65535,32768,32768),rgb('BO-28U_DI-BPM_PosY-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-29U_DI-BPM_PosY-Mon')=(16385,65535,65535),rgb('BO-30U_DI-BPM_PosY-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-7.09/Y=-7.22 "\\Z08\\s('BO-21U_DI-BPM_PosY-Mon') 'BO-21U_DI-BPM_PosY-Mon'\r\\s('BO-22U_DI-BPM_PosY-Mon') 'BO-22U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-23U_DI-BPM_PosY-Mon') 'BO-23U_DI-BPM_PosY-Mon'\r\\s('BO-24U_DI-BPM_PosY-Mon') 'BO-24U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-25U_DI-BPM_PosY-Mon') 'BO-25U_DI-BPM_PosY-Mon'\r\\s('BO-26U_DI-BPM_PosY-Mon') 'BO-26U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-27U_DI-BPM_PosY-Mon') 'BO-27U_DI-BPM_PosY-Mon'\r\\s('BO-28U_DI-BPM_PosY-Mon') 'BO-28U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-29U_DI-BPM_PosY-Mon') 'BO-29U_DI-BPM_PosY-Mon'\r\\s('BO-30U_DI-BPM_PosY-Mon') 'BO-30U_DI-BPM_PosY-Mon'"
EndMacro

Window WBO_BPMy4() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(414,276.5,808.5,485) 'BO-31U_DI-BPM_PosY-Mon' vs 'BO-31U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-32U_DI-BPM_PosY-Mon' vs 'BO-32U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-33U_DI-BPM_PosY-Mon' vs 'BO-33U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-34U_DI-BPM_PosY-Mon' vs 'BO-34U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-35U_DI-BPM_PosY-Mon' vs 'BO-35U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-36U_DI-BPM_PosY-Mon' vs 'BO-36U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-37U_DI-BPM_PosY-Mon' vs 'BO-37U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-38U_DI-BPM_PosY-Mon' vs 'BO-38U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-39U_DI-BPM_PosY-Mon' vs 'BO-39U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-40U_DI-BPM_PosY-Mon' vs 'BO-40U_DI-BPM_PosY-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-31U_DI-BPM_PosY-Mon')=(0,0,0),rgb('BO-32U_DI-BPM_PosY-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-33U_DI-BPM_PosY-Mon')=(2,39321,1),rgb('BO-34U_DI-BPM_PosY-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-35U_DI-BPM_PosY-Mon')=(39321,1,31457),rgb('BO-36U_DI-BPM_PosY-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-37U_DI-BPM_PosY-Mon')=(65535,32768,32768),rgb('BO-38U_DI-BPM_PosY-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-39U_DI-BPM_PosY-Mon')=(16385,65535,65535),rgb('BO-40U_DI-BPM_PosY-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-7.09/Y=-7.22 "\\Z08\\s('BO-31U_DI-BPM_PosY-Mon') 'BO-31U_DI-BPM_PosY-Mon'\r\\s('BO-32U_DI-BPM_PosY-Mon') 'BO-32U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-33U_DI-BPM_PosY-Mon') 'BO-33U_DI-BPM_PosY-Mon'\r\\s('BO-34U_DI-BPM_PosY-Mon') 'BO-34U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-35U_DI-BPM_PosY-Mon') 'BO-35U_DI-BPM_PosY-Mon'\r\\s('BO-36U_DI-BPM_PosY-Mon') 'BO-36U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-37U_DI-BPM_PosY-Mon') 'BO-37U_DI-BPM_PosY-Mon'\r\\s('BO-38U_DI-BPM_PosY-Mon') 'BO-38U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-39U_DI-BPM_PosY-Mon') 'BO-39U_DI-BPM_PosY-Mon'\r\\s('BO-40U_DI-BPM_PosY-Mon') 'BO-40U_DI-BPM_PosY-Mon'"
EndMacro

Window WBO_BPMy5() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(821.25,41,1215.75,249.5) 'BO-41U_DI-BPM_PosY-Mon' vs 'BO-41U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-42U_DI-BPM_PosY-Mon' vs 'BO-42U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-43U_DI-BPM_PosY-Mon' vs 'BO-43U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-44U_DI-BPM_PosY-Mon' vs 'BO-44U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-45U_DI-BPM_PosY-Mon' vs 'BO-45U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-46U_DI-BPM_PosY-Mon' vs 'BO-46U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-47U_DI-BPM_PosY-Mon' vs 'BO-47U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-48U_DI-BPM_PosY-Mon' vs 'BO-48U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-49U_DI-BPM_PosY-Mon' vs 'BO-49U_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'BO-50U_DI-BPM_PosY-Mon' vs 'BO-50U_DI-BPM_PosY-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-41U_DI-BPM_PosY-Mon')=(0,0,0),rgb('BO-42U_DI-BPM_PosY-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-43U_DI-BPM_PosY-Mon')=(2,39321,1),rgb('BO-44U_DI-BPM_PosY-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-45U_DI-BPM_PosY-Mon')=(39321,1,31457),rgb('BO-46U_DI-BPM_PosY-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-47U_DI-BPM_PosY-Mon')=(65535,32768,32768),rgb('BO-48U_DI-BPM_PosY-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-49U_DI-BPM_PosY-Mon')=(16385,65535,65535),rgb('BO-50U_DI-BPM_PosY-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-6.84/Y=-7.22 "\\Z08\\s('BO-41U_DI-BPM_PosY-Mon') 'BO-41U_DI-BPM_PosY-Mon'\r\\s('BO-42U_DI-BPM_PosY-Mon') 'BO-42U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-43U_DI-BPM_PosY-Mon') 'BO-43U_DI-BPM_PosY-Mon'\r\\s('BO-44U_DI-BPM_PosY-Mon') 'BO-44U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-45U_DI-BPM_PosY-Mon') 'BO-45U_DI-BPM_PosY-Mon'\r\\s('BO-46U_DI-BPM_PosY-Mon') 'BO-46U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-47U_DI-BPM_PosY-Mon') 'BO-47U_DI-BPM_PosY-Mon'\r\\s('BO-48U_DI-BPM_PosY-Mon') 'BO-48U_DI-BPM_PosY-Mon'"
	AppendText "\\s('BO-49U_DI-BPM_PosY-Mon') 'BO-49U_DI-BPM_PosY-Mon'\r\\s('BO-50U_DI-BPM_PosY-Mon') 'BO-50U_DI-BPM_PosY-Mon'"
EndMacro

Function BO_BPMy()
	Execute "WBO_BPMy1()"
	Execute "WBO_BPMy2()"
	Execute "WBO_BPMy3()"
	Execute "WBO_BPMy4()"
	Execute "WBO_BPMy5()"
End

Window WBO_VA1() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(8.25,42.5,305.25,206) 'BO-01U_VA-SIP20-BG_Pressure-Mon' vs 'BO-01U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-02U_VA-SIP20-BG_Pressure-Mon' vs 'BO-02U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-03U_VA-SIP20-BG_Pressure-Mon' vs 'BO-03U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-04U_VA-SIP20-BG_Pressure-Mon' vs 'BO-04U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-05U_VA-SIP20-BG_Pressure-Mon' vs 'BO-05U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-06U_VA-SIP20-BG_Pressure-Mon' vs 'BO-06U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-07U_VA-SIP20-BG_Pressure-Mon' vs 'BO-07U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-08U_VA-SIP20-BG_Pressure-Mon' vs 'BO-08U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-09U_VA-SIP20-BG_Pressure-Mon' vs 'BO-09U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-10U_VA-SIP20-BG_Pressure-Mon' vs 'BO-10U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-12U_VA-SIP20-BG_Pressure-Mon' vs 'BO-12U_VA-SIP20-BG_Pressure-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-01U_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('BO-02U_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-03U_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('BO-04U_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-05U_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('BO-06U_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-07U_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('BO-08U_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-09U_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('BO-10U_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('BO-12U_VA-SIP20-BG_Pressure-Mon')=(0,0,0)
	ModifyGraph log(left)=1
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Pressão (mBar)"
EndMacro

Window WBO_VA2() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(318,41.75,588,206) 'BO-11U_VA-SIP20-BG_Pressure-Mon' vs 'BO-11U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-12U_VA-SIP20-BG_Pressure-Mon' vs 'BO-12U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-13U_VA-SIP20-BG_Pressure-Mon' vs 'BO-13U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-14U_VA-SIP20-BG_Pressure-Mon' vs 'BO-14U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-15U_VA-SIP20-BG_Pressure-Mon' vs 'BO-15U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-16U_VA-SIP20-BG_Pressure-Mon' vs 'BO-16U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-17U_VA-SIP20-BG_Pressure-Mon' vs 'BO-17U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-18U_VA-SIP20-BG_Pressure-Mon' vs 'BO-18U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-19U_VA-SIP20-BG_Pressure-Mon' vs 'BO-19U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-20U_VA-SIP20-BG_Pressure-Mon' vs 'BO-20U_VA-SIP20-BG_Pressure-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-11U_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('BO-12U_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-13U_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('BO-14U_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-15U_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('BO-16U_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-17U_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('BO-18U_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-19U_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('BO-20U_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph log(left)=1
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Pressão (mBar)"
EndMacro

Window WBO_VA3() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(600.75,41.75,891.75,206) 'BO-21U_VA-SIP20-BG_Pressure-Mon' vs 'BO-21U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-22U_VA-SIP20-BG_Pressure-Mon' vs 'BO-22U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-23U_VA-SIP20-BG_Pressure-Mon' vs 'BO-23U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-24U_VA-SIP20-BG_Pressure-Mon' vs 'BO-24U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-25U_VA-SIP20-BG_Pressure-Mon' vs 'BO-25U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-26U_VA-SIP20-BG_Pressure-Mon' vs 'BO-26U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-27U_VA-SIP20-BG_Pressure-Mon' vs 'BO-27U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-28U_VA-SIP20-BG_Pressure-Mon' vs 'BO-28U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-29U_VA-SIP20-BG_Pressure-Mon' vs 'BO-29U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-30U_VA-SIP20-BG_Pressure-Mon' vs 'BO-30U_VA-SIP20-BG_Pressure-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-21U_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('BO-22U_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-23U_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('BO-24U_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-25U_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('BO-26U_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-27U_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('BO-28U_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-29U_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('BO-30U_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph log(left)=1
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Pressão (mBar)"
EndMacro

Window WBO_VA4() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(904.5,41.75,1186.5,206) 'BO-31U_VA-SIP20-BG_Pressure-Mon' vs 'BO-31U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-32U_VA-SIP20-BG_Pressure-Mon' vs 'BO-32U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-33U_VA-SIP20-BG_Pressure-Mon' vs 'BO-33U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-34U_VA-SIP20-BG_Pressure-Mon' vs 'BO-34U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-35U_VA-SIP20-BG_Pressure-Mon' vs 'BO-35U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-36U_VA-SIP20-BG_Pressure-Mon' vs 'BO-36U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-37U_VA-SIP20-BG_Pressure-Mon' vs 'BO-37U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-38U_VA-SIP20-BG_Pressure-Mon' vs 'BO-38U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-39U_VA-SIP20-BG_Pressure-Mon' vs 'BO-39U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-40U_VA-SIP20-BG_Pressure-Mon' vs 'BO-40U_VA-SIP20-BG_Pressure-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-31U_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('BO-32U_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-33U_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('BO-34U_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-35U_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('BO-36U_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-37U_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('BO-38U_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-39U_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('BO-40U_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph log(left)=1
	ModifyGraph dateInfo(bottom)={0,0,0}
EndMacro

Window WBO_VA5() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(7.5,233,305.25,388.25) 'BO-41U_VA-SIP20-BG_Pressure-Mon' vs 'BO-41U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-42U_VA-SIP20-BG_Pressure-Mon' vs 'BO-42U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-43U_VA-SIP20-BG_Pressure-Mon' vs 'BO-43U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-44U_VA-SIP20-BG_Pressure-Mon' vs 'BO-44U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-45U_VA-SIP20-BG_Pressure-Mon' vs 'BO-45U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-46U_VA-SIP20-BG_Pressure-Mon' vs 'BO-46U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-47U_VA-SIP20-BG_Pressure-Mon' vs 'BO-47U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-48U_VA-SIP20-BG_Pressure-Mon' vs 'BO-48U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-49U_VA-SIP20-BG_Pressure-Mon' vs 'BO-49U_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-50U_VA-SIP20-BG_Pressure-Mon' vs 'BO-50U_VA-SIP20-BG_Pressure-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-41U_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('BO-42U_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-43U_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('BO-44U_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-45U_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('BO-46U_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-47U_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('BO-48U_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-49U_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('BO-50U_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph log(left)=1
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Pressão (mBar)"
EndMacro

Window WBO_VA6() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(318,233,588,388.25) 'BO-01U_VA-CCG-BG_Pressure-Mon' vs 'BO-01U_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-04U_VA-CCG-BG_Pressure-Mon' vs 'BO-04U_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-06U_VA-CCG-ED_Pressure-Mon' vs 'BO-06U_VA-CCG-ED_Pressure-Mon_TS'
	AppendToGraph 'BO-09U_VA-CCG-BG_Pressure-Mon' vs 'BO-09U_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-11U_VA-CCG-ED_Pressure-Mon' vs 'BO-11U_VA-CCG-ED_Pressure-Mon_TS'
	AppendToGraph 'BO-14U_VA-CCG-BG_Pressure-Mon' vs 'BO-14U_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-16U_VA-CCG-ED_Pressure-Mon' vs 'BO-16U_VA-CCG-ED_Pressure-Mon_TS'
	AppendToGraph 'BO-19U_VA-CCG-BG_Pressure-Mon' vs 'BO-19U_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-21U_VA-CCG-ED_Pressure-Mon' vs 'BO-21U_VA-CCG-ED_Pressure-Mon_TS'
	AppendToGraph 'BO-24U_VA-CCG-BG_Pressure-Mon' vs 'BO-24U_VA-CCG-BG_Pressure-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-01U_VA-CCG-BG_Pressure-Mon')=(0,0,0),rgb('BO-04U_VA-CCG-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-06U_VA-CCG-ED_Pressure-Mon')=(2,39321,1),rgb('BO-09U_VA-CCG-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-11U_VA-CCG-ED_Pressure-Mon')=(39321,1,31457),rgb('BO-14U_VA-CCG-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-16U_VA-CCG-ED_Pressure-Mon')=(65535,32768,32768),rgb('BO-19U_VA-CCG-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-21U_VA-CCG-ED_Pressure-Mon')=(16385,65535,65535),rgb('BO-24U_VA-CCG-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph log(left)=1
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Pressão (mBar)"
EndMacro

Window WBO_VA7() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(600.75,233,895.5,388.25) 'BO-26U_VA-CCG-ED_Pressure-Mon' vs 'BO-26U_VA-CCG-ED_Pressure-Mon_TS'
	AppendToGraph 'BO-29U_VA-CCG-BG_Pressure-Mon' vs 'BO-29U_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-31U_VA-CCG-ED_Pressure-Mon' vs 'BO-31U_VA-CCG-ED_Pressure-Mon_TS'
	AppendToGraph 'BO-34U_VA-CCG-BG_Pressure-Mon' vs 'BO-34U_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-36U_VA-CCG-ED_Pressure-Mon' vs 'BO-36U_VA-CCG-ED_Pressure-Mon_TS'
	AppendToGraph 'BO-39U_VA-CCG-BG_Pressure-Mon' vs 'BO-39U_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-41U_VA-CCG-ED_Pressure-Mon' vs 'BO-41U_VA-CCG-ED_Pressure-Mon_TS'
	AppendToGraph 'BO-44U_VA-CCG-BG_Pressure-Mon' vs 'BO-44U_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'BO-46U_VA-CCG-ED_Pressure-Mon' vs 'BO-46U_VA-CCG-ED_Pressure-Mon_TS'
	AppendToGraph 'BO-47U_VA-CCG-ED_Pressure-Mon' vs 'BO-47U_VA-CCG-ED_Pressure-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('BO-26U_VA-CCG-ED_Pressure-Mon')=(0,0,0),rgb('BO-29U_VA-CCG-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('BO-31U_VA-CCG-ED_Pressure-Mon')=(2,39321,1),rgb('BO-34U_VA-CCG-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('BO-36U_VA-CCG-ED_Pressure-Mon')=(39321,1,31457),rgb('BO-39U_VA-CCG-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('BO-41U_VA-CCG-ED_Pressure-Mon')=(65535,32768,32768),rgb('BO-44U_VA-CCG-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('BO-46U_VA-CCG-ED_Pressure-Mon')=(16385,65535,65535),rgb('BO-47U_VA-CCG-ED_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph log(left)=1
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Pressão (mBar)"
EndMacro

Function BO_VA()
	Execute "WBO_VA1()"
	Execute "WBO_VA2()"
	Execute "WBO_VA3()"
	Execute "WBO_VA4()"
	Execute "WBO_VA5()"
	Execute "WBO_VA6()"
	Execute "WBO_VA7()"
End

Window WTS_B() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(9,45.5,1036.5,566) 'TS-Fam_PS-B_Current-Mon' vs 'TS-Fam_PS-B_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=1.25/Y=5.50 "\\s('TS-Fam_PS-B_Current-Mon') 'TS-Fam_PS-B_Current-Mon'"
EndMacro

Function TS_B()
	Execute "WTS_B()"
End

Window WTS_QD() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(9.75,44,1035.75,565.25) 'TS-02_PS-QD2_Current-Mon' vs 'TS-02_PS-QD2_Current-Mon_TS'
	AppendToGraph/R 'TS-04_PS-QD4B_Current-Mon' vs 'TS-04_PS-QD4B_Current-Mon_TS'
	AppendToGraph/L=left1 'TS-04_PS-QD4A_Current-Mon' vs 'TS-04_PS-QD4A_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('TS-02_PS-QD2_Current-Mon')=(0,0,0),rgb('TS-04_PS-QD4B_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('TS-04_PS-QD4A_Current-Mon')=(2,39321,1)
	ModifyGraph lblPos(left)=69,lblPos(left1)=68
	ModifyGraph freePos(left1)=0
	ModifyGraph axisEnab(left)={0,0.34}
	ModifyGraph axisEnab(right)={0.34,0.65}
	ModifyGraph axisEnab(left1)={0.66,1}
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Label right "Corrente (A)"
	Label left1 "Corrente (A)"
	Legend/C/N=text0/J/X=-4.77/Y=-0.34 "\\s('TS-02_PS-QD2_Current-Mon') 'TS-02_PS-QD2_Current-Mon'\r\\s('TS-04_PS-QD4B_Current-Mon') 'TS-04_PS-QD4B_Current-Mon'"
	AppendText "\\s('TS-04_PS-QD4A_Current-Mon') 'TS-04_PS-QD4A_Current-Mon'"
EndMacro

Function TS_QD()
	Execute "WTS_QD()"
End

Window WTS_QF() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(9.75,44,1035,565.25) 'TS-01_PS-QF1B_Current-Mon' vs 'TS-01_PS-QF1B_Current-Mon_TS'
	AppendToGraph/R 'TS-01_PS-QF1A_Current-Mon' vs 'TS-01_PS-QF1A_Current-Mon_TS'
	AppendToGraph/L=left1 'TS-02_PS-QF2_Current-Mon' vs 'TS-02_PS-QF2_Current-Mon_TS'
	AppendToGraph/R=right1 'TS-03_PS-QF3_Current-Mon' vs 'TS-03_PS-QF3_Current-Mon_TS'
	AppendToGraph/L=left2 'TS-04_PS-QF4_Current-Mon' vs 'TS-04_PS-QF4_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('TS-01_PS-QF1B_Current-Mon')=(0,0,0),rgb('TS-01_PS-QF1A_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('TS-02_PS-QF2_Current-Mon')=(2,39321,1),rgb('TS-03_PS-QF3_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('TS-04_PS-QF4_Current-Mon')=(39321,1,31457)
	ModifyGraph lblPos(left)=67,lblPos(right)=63,lblPos(left1)=68,lblPos(right1)=63
	ModifyGraph lblPos(left2)=64
	ModifyGraph freePos(left1)=0
	ModifyGraph freePos(right1)=0
	ModifyGraph freePos(left2)=0
	ModifyGraph axisEnab(left)={0,0.19}
	ModifyGraph axisEnab(right)={0.21,0.39}
	ModifyGraph axisEnab(left1)={0.41,0.59}
	ModifyGraph axisEnab(right1)={0.61,0.79}
	ModifyGraph axisEnab(left2)={0.81,1}
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Label right "Corrente (A)"
	Label left1 "Corrente (A)"
	Label right1 "Corrente (A)"
	Label left2 "Corrente (A)"
	Legend/C/N=text0/J/X=-7.08/Y=-2.57 "\\s('TS-01_PS-QF1B_Current-Mon') 'TS-01_PS-QF1B_Current-Mon'\r\\s('TS-01_PS-QF1A_Current-Mon') 'TS-01_PS-QF1A_Current-Mon'"
	AppendText "\\s('TS-02_PS-QF2_Current-Mon') 'TS-02_PS-QF2_Current-Mon'\r\\s('TS-03_PS-QF3_Current-Mon') 'TS-03_PS-QF3_Current-Mon'"
	AppendText "\\s('TS-04_PS-QF4_Current-Mon') 'TS-04_PS-QF4_Current-Mon'"
EndMacro

Function TS_QF()
	Execute "WTS_QF()"
End

Window WTS_CH() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(10.5,43.25,1034.25,565.25) 'TS-01_PS-CH_Current-Mon' vs 'TS-01_PS-CH_Current-Mon_TS'
	AppendToGraph/R 'TS-02_PS-CH_Current-Mon' vs 'TS-02_PS-CH_Current-Mon_TS'
	AppendToGraph/L=left1 'TS-03_PS-CH_Current-Mon' vs 'TS-03_PS-CH_Current-Mon_TS'
	AppendToGraph/R=right1 'TS-04_PS-CH_Current-Mon' vs 'TS-04_PS-CH_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('TS-01_PS-CH_Current-Mon')=(0,0,0),rgb('TS-02_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('TS-03_PS-CH_Current-Mon')=(2,39321,1),rgb('TS-04_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph lblPos(left)=55,lblPos(right)=56,lblPos(left1)=54,lblPos(right1)=57
	ModifyGraph freePos(left1)=0
	ModifyGraph freePos(right1)=0
	ModifyGraph axisEnab(left)={0,0.24}
	ModifyGraph axisEnab(right)={0.26,0.49}
	ModifyGraph axisEnab(left1)={0.51,0.74}
	ModifyGraph axisEnab(right1)={0.76,1}
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Label right "Corrente (A)"
	Label left1 "Corrente (A)"
	Label right1 "Corrente (A)"
	Legend/C/N=text0/J/X=0.75/Y=-1.71 "\\s('TS-01_PS-CH_Current-Mon') 'TS-01_PS-CH_Current-Mon'\r\\s('TS-02_PS-CH_Current-Mon') 'TS-02_PS-CH_Current-Mon'"
	AppendText "\\s('TS-03_PS-CH_Current-Mon') 'TS-03_PS-CH_Current-Mon'\r\\s('TS-04_PS-CH_Current-Mon') 'TS-04_PS-CH_Current-Mon'"
EndMacro

Function TS_CH()
	Execute "WTS_CH()"
End

Window WTS_CV() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(10.5,42.5,1032.75,563.75) 'TS-02_PS-CV_Current-Mon' vs 'TS-02_PS-CV_Current-Mon_TS'
	AppendToGraph/R 'TS-03_PS-CV_Current-Mon' vs 'TS-03_PS-CV_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('TS-02_PS-CV_Current-Mon')=(1,12815,52428)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Legend/C/N=text0/J/X=1.42/Y=-0.69 "\\s('TS-02_PS-CV_Current-Mon') 'TS-02_PS-CV_Current-Mon'\r\\s('TS-03_PS-CV_Current-Mon') 'TS-03_PS-CV_Current-Mon'"
EndMacro

Function TS_CV()
	Execute "WTS_CV()"
End

Window WTS_PU() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(9,42.5,1035,565.25) 'TS-04_PU-InjSeptG-1_Voltage-SP' vs 'TS-04_PU-InjSeptG-1_Voltage-SP_TS'
	AppendToGraph 'TS-04_PU-InjSeptG-1_Voltage-Mon' vs 'TS-04_PU-InjSeptG-1_Voltage-Mon_TS'
	AppendToGraph/R 'TS-04_PU-InjSeptG-2_Voltage-SP' vs 'TS-04_PU-InjSeptG-2_Voltage-SP_TS'
	AppendToGraph/R 'TS-04_PU-InjSeptG-2_Voltage-Mon' vs 'TS-04_PU-InjSeptG-2_Voltage-Mon_TS'
	AppendToGraph/L=left1 'TS-04_PU-InjSeptF_Voltage-SP' vs 'TS-04_PU-InjSeptF_Voltage-SP_TS'
	AppendToGraph/L=left1 'TS-04_PU-InjSeptF_Voltage-Mon' vs 'TS-04_PU-InjSeptF_Voltage-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('TS-04_PU-InjSeptG-1_Voltage-SP')=(0,0,0),rgb('TS-04_PU-InjSeptG-1_Voltage-Mon')=(65535,16385,16385)
	ModifyGraph rgb('TS-04_PU-InjSeptG-2_Voltage-SP')=(2,39321,1),rgb('TS-04_PU-InjSeptG-2_Voltage-Mon')=(0,0,65535)
	ModifyGraph rgb('TS-04_PU-InjSeptF_Voltage-SP')=(39321,1,31457),rgb('TS-04_PU-InjSeptF_Voltage-Mon')=(48059,48059,48059)
	ModifyGraph lblPos(left)=62,lblPos(left1)=63
	ModifyGraph freePos(left1)=0
	ModifyGraph axisEnab(left)={0,0.32}
	ModifyGraph axisEnab(right)={0.34,0.65}
	ModifyGraph axisEnab(left1)={0.66,1}
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Label right "Corrente (A)"
	Label left1 "Corrente (A)"
	Legend/C/N=text0/J/X=-6.08/Y=-1.37 "\\s('TS-04_PU-InjSeptG-1_Voltage-SP') 'TS-04_PU-InjSeptG-1_Voltage-SP'"
	AppendText "\\s('TS-04_PU-InjSeptG-1_Voltage-Mon') 'TS-04_PU-InjSeptG-1_Voltage-Mon'\r\\s('TS-04_PU-InjSeptG-2_Voltage-SP') 'TS-04_PU-InjSeptG-2_Voltage-SP'"
	AppendText "\\s('TS-04_PU-InjSeptG-2_Voltage-Mon') 'TS-04_PU-InjSeptG-2_Voltage-Mon'\r\\s('TS-04_PU-InjSeptF_Voltage-SP') 'TS-04_PU-InjSeptF_Voltage-SP'"
	AppendText "\\s('TS-04_PU-InjSeptF_Voltage-Mon') 'TS-04_PU-InjSeptF_Voltage-Mon'"
EndMacro

Function TS_PU()
	Execute "WTS_PU()"
End

Window WTS_BPMx() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(11.25,44.75,1034.25,565.25) 'TS-01_DI-BPM_PosX-Mon' vs 'TS-01_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'TS-02_DI-BPM_PosX-Mon' vs 'TS-02_DI-BPM_PosX-Mon_TS'
	AppendToGraph 'TS-03_DI-BPM_PosX-Mon' vs 'TS-03_DI-BPM_PosX-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('TS-01_DI-BPM_PosX-Mon')=(0,0,0),rgb('TS-02_DI-BPM_PosX-Mon')=(65535,16385,16385)
	ModifyGraph rgb('TS-03_DI-BPM_PosX-Mon')=(2,39321,1)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Posição (µm)"
	Legend/C/N=text0/J/X=-2.20/Y=-1.55 "\\s('TS-01_DI-BPM_PosX-Mon') 'TS-01_DI-BPM_PosX-Mon'\r\\s('TS-02_DI-BPM_PosX-Mon') 'TS-02_DI-BPM_PosX-Mon'"
	AppendText "\\s('TS-03_DI-BPM_PosX-Mon') 'TS-03_DI-BPM_PosX-Mon'"
EndMacro

Function TS_BPMx()
	Execute "WTS_BPMx()"
End

Window WTS_BPMy() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(10.5,44,1034.25,566) 'TS-01_DI-BPM_PosY-Mon' vs 'TS-01_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'TS-02_DI-BPM_PosY-Mon' vs 'TS-02_DI-BPM_PosY-Mon_TS'
	AppendToGraph 'TS-03_DI-BPM_PosY-Mon' vs 'TS-03_DI-BPM_PosY-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('TS-01_DI-BPM_PosY-Mon')=(0,0,0),rgb('TS-02_DI-BPM_PosY-Mon')=(65535,16385,16385)
	ModifyGraph rgb('TS-03_DI-BPM_PosY-Mon')=(2,39321,1)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Posição (µm)"
	Legend/C/N=text0/J/X=-2.20/Y=-1.88 "\\s('TS-01_DI-BPM_PosY-Mon') 'TS-01_DI-BPM_PosY-Mon'\r\\s('TS-02_DI-BPM_PosY-Mon') 'TS-02_DI-BPM_PosY-Mon'"
	AppendText "\\s('TS-03_DI-BPM_PosY-Mon') 'TS-03_DI-BPM_PosY-Mon'"
EndMacro

Function TS_BPMy()
	Execute "WTS_BPMy()"
End

Window WTS_VA() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(10.5,44,1033.5,565.25) 'TS-01_VA-SIP20-BG_Pressure-Mon' vs 'TS-01_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'TS-02_VA-SIP20-BG_Pressure-Mon' vs 'TS-02_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'TS-03_VA-SIP20-BG_Pressure-Mon' vs 'TS-03_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'TS-04_VA-SIP20-BG_Pressure-Mon' vs 'TS-04_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph/R 'TS-01_VA-CCG-ED_Pressure-Mon' vs 'TS-01_VA-CCG-ED_Pressure-Mon_TS'
	AppendToGraph/R 'TS-01_VA-CCG-BG_Pressure-Mon' vs 'TS-01_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph/R 'TS-04_VA-CCG-MD_Pressure-Mon' vs 'TS-04_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph/R 'TS-04_VA-CCG-BG_Pressure-Mon' vs 'TS-04_VA-CCG-BG_Pressure-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('TS-01_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('TS-02_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('TS-03_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('TS-04_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('TS-01_VA-CCG-ED_Pressure-Mon')=(39321,1,31457),rgb('TS-01_VA-CCG-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('TS-04_VA-CCG-MD_Pressure-Mon')=(65535,32768,32768),rgb('TS-04_VA-CCG-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph axisEnab(left)={0,0.5}
	ModifyGraph axisEnab(right)={0.5,1}
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Pressão (mBar)"
	Label right "Pressão (mBar)"
	Legend/C/N=text0/J/X=-8.73/Y=67.12 "\\s('TS-01_VA-SIP20-BG_Pressure-Mon') 'TS-01_VA-SIP20-BG_Pressure-Mon'"
	AppendText "\\s('TS-02_VA-SIP20-BG_Pressure-Mon') 'TS-02_VA-SIP20-BG_Pressure-Mon'\r\\s('TS-03_VA-SIP20-BG_Pressure-Mon') 'TS-03_VA-SIP20-BG_Pressure-Mon'"
	AppendText "\\s('TS-04_VA-SIP20-BG_Pressure-Mon') 'TS-04_VA-SIP20-BG_Pressure-Mon'"
	TextBox/C/N=text1/X=78.79/Y=8.39 "\\s('TS-01_VA-CCG-ED_Pressure-Mon') 'TS-01_VA-CCG-ED_Pressure-Mon'"
	AppendText "\n\\s('TS-01_VA-CCG-BG_Pressure-Mon') 'TS-01_VA-CCG-BG_Pressure-Mon'\r\n\\s('TS-04_VA-CCG-MD_Pressure-Mon') 'TS-04_VA-CCG-MD_Pressure-Mon'"
	AppendText "\n\\s('TS-04_VA-CCG-BG_Pressure-Mon') 'TS-04_VA-CCG-BG_Pressure-Mon'"
EndMacro

Function TS_VA()
	Execute "WTS_VA()"
End

Window WSI_B() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(10.5,44,1035,566) 'SI-Fam_PS-B1B2-1_Current-Mon' vs 'SI-Fam_PS-B1B2-1_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-B1B2-2_Current-Mon' vs 'SI-Fam_PS-B1B2-2_Current-Mon_TS'
	ModifyGraph mode('SI-Fam_PS-B1B2-1_Current-Mon')=4
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-Fam_PS-B1B2-2_Current-Mon')=(1,12815,52428)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-1.63/Y=-0.68 "\\s('SI-Fam_PS-B1B2-1_Current-Mon') 'SI-Fam_PS-B1B2-1_Current-Mon'"
	AppendText "\\s('SI-Fam_PS-B1B2-2_Current-Mon') 'SI-Fam_PS-B1B2-2_Current-Mon'"
EndMacro

Function SI_B()
	Execute "WSI_B()"
End

Window WSI_QF() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(9.75,44,1035,565.25) 'SI-Fam_PS-QFP_Current-Mon' vs 'SI-Fam_PS-QFP_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-QFB_Current-Mon' vs 'SI-Fam_PS-QFB_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-QFA_Current-Mon' vs 'SI-Fam_PS-QFA_Current-Mon_TS'
	ModifyGraph mode('SI-Fam_PS-QFP_Current-Mon')=4
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-Fam_PS-QFP_Current-Mon')=(0,0,0),rgb('SI-Fam_PS-QFB_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-Fam_PS-QFA_Current-Mon')=(2,39321,1)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-2.97/Y=-1.39 "\\s('SI-Fam_PS-QFP_Current-Mon') 'SI-Fam_PS-QFP_Current-Mon'\r\\s('SI-Fam_PS-QFB_Current-Mon') 'SI-Fam_PS-QFB_Current-Mon'"
	AppendText "\\s('SI-Fam_PS-QFA_Current-Mon') 'SI-Fam_PS-QFA_Current-Mon'"
EndMacro

Function SI_QF()
	Execute "WSI_QF()"
End

Window WSI_QD() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(9.75,43.25,1035,565.25) 'SI-Fam_PS-QDP1_Current-Mon' vs 'SI-Fam_PS-QDP1_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-QDB2_Current-Mon' vs 'SI-Fam_PS-QDB2_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-QDB1_Current-Mon' vs 'SI-Fam_PS-QDB1_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-QDA_Current-Mon' vs 'SI-Fam_PS-QDA_Current-Mon_TS'
	ModifyGraph mode('SI-Fam_PS-QDP1_Current-Mon')=4
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-Fam_PS-QDP1_Current-Mon')=(0,0,0),rgb('SI-Fam_PS-QDB2_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-Fam_PS-QDB1_Current-Mon')=(2,39321,1),rgb('SI-Fam_PS-QDA_Current-Mon')=(0,0,65535)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-2.61/Y=-1.71 "\\s('SI-Fam_PS-QDP1_Current-Mon') 'SI-Fam_PS-QDP1_Current-Mon'"
	AppendText "\\s('SI-Fam_PS-QDB2_Current-Mon') 'SI-Fam_PS-QDB2_Current-Mon'\r\\s('SI-Fam_PS-QDB1_Current-Mon') 'SI-Fam_PS-QDB1_Current-Mon'"
	AppendText "\\s('SI-Fam_PS-QDA_Current-Mon') 'SI-Fam_PS-QDA_Current-Mon'"
EndMacro

Function SI_QD()
	Execute "WSI_QF()"
End

Window WSI_Q() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(10.5,43.25,1035,565.25) 'SI-Fam_PS-Q4_Current-Mon' vs 'SI-Fam_PS-Q4_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-Q3_Current-Mon' vs 'SI-Fam_PS-Q3_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-Q2_Current-Mon' vs 'SI-Fam_PS-Q2_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-Q1_Current-Mon' vs 'SI-Fam_PS-Q1_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-Fam_PS-Q4_Current-Mon')=(0,0,0),rgb('SI-Fam_PS-Q3_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-Fam_PS-Q2_Current-Mon')=(2,39321,1),rgb('SI-Fam_PS-Q1_Current-Mon')=(0,0,65535)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-2.86/Y=-2.74 "\\s('SI-Fam_PS-Q4_Current-Mon') 'SI-Fam_PS-Q4_Current-Mon'\r\\s('SI-Fam_PS-Q3_Current-Mon') 'SI-Fam_PS-Q3_Current-Mon'"
	AppendText "\\s('SI-Fam_PS-Q2_Current-Mon') 'SI-Fam_PS-Q2_Current-Mon'\r\\s('SI-Fam_PS-Q1_Current-Mon') 'SI-Fam_PS-Q1_Current-Mon'"
EndMacro

Function SI_Q()
	Execute "WSI_Q()"
End

Window WSI_SFA() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(10.5,44,1034.25,565.25) 'SI-Fam_PS-SFA2_Current-Mon' vs 'SI-Fam_PS-SFA2_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-SFA1_Current-Mon' vs 'SI-Fam_PS-SFA1_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-SFA0_Current-Mon' vs 'SI-Fam_PS-SFA0_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-Fam_PS-SFA2_Current-Mon')=(0,0,0),rgb('SI-Fam_PS-SFA1_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-Fam_PS-SFA0_Current-Mon')=(2,39321,1)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-2.78/Y=-2.23 "\\s('SI-Fam_PS-SFA2_Current-Mon') 'SI-Fam_PS-SFA2_Current-Mon'"
	AppendText "\\s('SI-Fam_PS-SFA1_Current-Mon') 'SI-Fam_PS-SFA1_Current-Mon'\r\\s('SI-Fam_PS-SFA0_Current-Mon') 'SI-Fam_PS-SFA0_Current-Mon'"
EndMacro

Function SI_SFA()
	Execute "WSI_SFA()"
End

Window WSI_SFB() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(10.5,43.25,1034.25,564.5) 'SI-Fam_PS-SFB2_Current-Mon' vs 'SI-Fam_PS-SFB2_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-SFB1_Current-Mon' vs 'SI-Fam_PS-SFB1_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-SFB0_Current-Mon' vs 'SI-Fam_PS-SFB0_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-Fam_PS-SFB2_Current-Mon')=(0,0,0),rgb('SI-Fam_PS-SFB1_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-Fam_PS-SFB0_Current-Mon')=(2,39321,1)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-2.78/Y=-2.57 "\\s('SI-Fam_PS-SFB2_Current-Mon') 'SI-Fam_PS-SFB2_Current-Mon'"
	AppendText "\\s('SI-Fam_PS-SFB1_Current-Mon') 'SI-Fam_PS-SFB1_Current-Mon'\r\\s('SI-Fam_PS-SFB0_Current-Mon') 'SI-Fam_PS-SFB0_Current-Mon'"
EndMacro

Function SI_SFB()
	Execute "WSI_SFA()"
End

Window WSI_SFP() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(10.5,44,1035.75,566) 'SI-Fam_PS-SFP2_Current-Mon' vs 'SI-Fam_PS-SFP2_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-SFP1_Current-Mon' vs 'SI-Fam_PS-SFP1_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-SFP0_Current-Mon' vs 'SI-Fam_PS-SFP0_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-Fam_PS-SFP2_Current-Mon')=(0,0,0),rgb('SI-Fam_PS-SFP1_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-Fam_PS-SFP0_Current-Mon')=(2,39321,1)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-2.86/Y=-2.56 "\\s('SI-Fam_PS-SFP2_Current-Mon') 'SI-Fam_PS-SFP2_Current-Mon'"
	AppendText "\\s('SI-Fam_PS-SFP1_Current-Mon') 'SI-Fam_PS-SFP1_Current-Mon'\r\\s('SI-Fam_PS-SFP0_Current-Mon') 'SI-Fam_PS-SFP0_Current-Mon'"
EndMacro

Function SI_SFP()
	Execute "WSI_SFP()"
End

Window WSI_SDP() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(10.5,44,1035.75,565.25) 'SI-Fam_PS-SDP3_Current-Mon' vs 'SI-Fam_PS-SDP3_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-SDP2_Current-Mon' vs 'SI-Fam_PS-SDP2_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-SDP1_Current-Mon' vs 'SI-Fam_PS-SDP1_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-SDP0_Current-Mon' vs 'SI-Fam_PS-SDP0_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-Fam_PS-SDP3_Current-Mon')=(0,0,0),rgb('SI-Fam_PS-SDP2_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-Fam_PS-SDP1_Current-Mon')=(2,39321,1),rgb('SI-Fam_PS-SDP0_Current-Mon')=(0,0,65535)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-3.03/Y=-2.92 "\\s('SI-Fam_PS-SDP3_Current-Mon') 'SI-Fam_PS-SDP3_Current-Mon'"
	AppendText "\\s('SI-Fam_PS-SDP2_Current-Mon') 'SI-Fam_PS-SDP2_Current-Mon'\r\\s('SI-Fam_PS-SDP1_Current-Mon') 'SI-Fam_PS-SDP1_Current-Mon'"
	AppendText "\\s('SI-Fam_PS-SDP0_Current-Mon') 'SI-Fam_PS-SDP0_Current-Mon'"
EndMacro

Function SI_SDP()
	Execute "WSI_SDP()"
End

Window WSI_SDA() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(10.5,44,1034.25,565.25) 'SI-Fam_PS-SDA3_Current-Mon' vs 'SI-Fam_PS-SDA3_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-SDA2_Current-Mon' vs 'SI-Fam_PS-SDA2_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-SDA1_Current-Mon' vs 'SI-Fam_PS-SDA1_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-SDA0_Current-Mon' vs 'SI-Fam_PS-SDA0_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-Fam_PS-SDA3_Current-Mon')=(0,0,0),rgb('SI-Fam_PS-SDA2_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-Fam_PS-SDA1_Current-Mon')=(2,39321,1),rgb('SI-Fam_PS-SDA0_Current-Mon')=(0,0,65535)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-2.95/Y=-2.57 "\\s('SI-Fam_PS-SDA3_Current-Mon') 'SI-Fam_PS-SDA3_Current-Mon'"
	AppendText "\\s('SI-Fam_PS-SDA2_Current-Mon') 'SI-Fam_PS-SDA2_Current-Mon'\r\\s('SI-Fam_PS-SDA1_Current-Mon') 'SI-Fam_PS-SDA1_Current-Mon'"
	AppendText "\\s('SI-Fam_PS-SDA0_Current-Mon') 'SI-Fam_PS-SDA0_Current-Mon'"
EndMacro

Function SI_SDA()
	Execute "WSI_SDA()"
End

Window WSI_SDB() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(10.5,44,1035,565.25) 'SI-Fam_PS-SDB3_Current-Mon' vs 'SI-Fam_PS-SDB3_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-SDB2_Current-Mon' vs 'SI-Fam_PS-SDB2_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-SDB1_Current-Mon' vs 'SI-Fam_PS-SDB1_Current-Mon_TS'
	AppendToGraph 'SI-Fam_PS-SDB0_Current-Mon' vs 'SI-Fam_PS-SDB0_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-Fam_PS-SDB3_Current-Mon')=(0,0,0),rgb('SI-Fam_PS-SDB2_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-Fam_PS-SDB1_Current-Mon')=(2,39321,1),rgb('SI-Fam_PS-SDB0_Current-Mon')=(0,0,65535)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-3.03/Y=-2.74 "\\s('SI-Fam_PS-SDB3_Current-Mon') 'SI-Fam_PS-SDB3_Current-Mon'"
	AppendText "\\s('SI-Fam_PS-SDB2_Current-Mon') 'SI-Fam_PS-SDB2_Current-Mon'\r\\s('SI-Fam_PS-SDB1_Current-Mon') 'SI-Fam_PS-SDB1_Current-Mon'"
	AppendText "\\s('SI-Fam_PS-SDB0_Current-Mon') 'SI-Fam_PS-SDB0_Current-Mon'"
EndMacro

Function SI_SDB()
	Execute "WSI_SDB()"
End

Window WSI_QS_C3_4() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(7.5,41.75,359.25,122.75) 'SI-16C3_PS-QS_Current-Mon' vs 'SI-16C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-17C3_PS-QS_Current-Mon' vs 'SI-17C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-18C3_PS-QS_Current-Mon' vs 'SI-18C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-19C3_PS-QS_Current-Mon' vs 'SI-19C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-20C3_PS-QS_Current-Mon' vs 'SI-20C3_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-16C3_PS-QS_Current-Mon')=(0,0,0),rgb('SI-17C3_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-18C3_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-19C3_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-20C3_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/A=MC/X=33.42/Y=-31.03 "\\Z08\\s('SI-16C3_PS-QS_Current-Mon') 'SI-16C3_PS-QS_Current-Mon'"
	AppendText "\\s('SI-17C3_PS-QS_Current-Mon') 'SI-17C3_PS-QS_Current-Mon'\r\\s('SI-18C3_PS-QS_Current-Mon') 'SI-18C3_PS-QS_Current-Mon'"
	AppendText "\\s('SI-19C3_PS-QS_Current-Mon') 'SI-19C3_PS-QS_Current-Mon'\r\\s('SI-20C3_PS-QS_Current-Mon') 'SI-20C3_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_M2_4() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(365.25,41.75,717,122.75) 'SI-16M2_PS-QS_Current-Mon' vs 'SI-16M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-17M2_PS-QS_Current-Mon' vs 'SI-17M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-18M2_PS-QS_Current-Mon' vs 'SI-18M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-19M2_PS-QS_Current-Mon' vs 'SI-19M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-20M2_PS-QS_Current-Mon' vs 'SI-20M2_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-16M2_PS-QS_Current-Mon')=(0,0,0),rgb('SI-17M2_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-18M2_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-19M2_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-20M2_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-7.07/Y=-41.38 "\\Z08\\s('SI-16M2_PS-QS_Current-Mon') 'SI-16M2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-17M2_PS-QS_Current-Mon') 'SI-17M2_PS-QS_Current-Mon'\r\\s('SI-18M2_PS-QS_Current-Mon') 'SI-18M2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-19M2_PS-QS_Current-Mon') 'SI-19M2_PS-QS_Current-Mon'\r\\s('SI-20M2_PS-QS_Current-Mon') 'SI-20M2_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_M1_1() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(723.75,41.75,1075.5,122.75) 'SI-01M1_PS-QS_Current-Mon' vs 'SI-01M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-02M1_PS-QS_Current-Mon' vs 'SI-02M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-03M1_PS-QS_Current-Mon' vs 'SI-03M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-04M1_PS-QS_Current-Mon' vs 'SI-04M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-05M1_PS-QS_Current-Mon' vs 'SI-05M1_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-01M1_PS-QS_Current-Mon')=(0,0,0),rgb('SI-02M1_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03M1_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-04M1_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05M1_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-7.07/Y=-44.83 "\\Z08\\s('SI-01M1_PS-QS_Current-Mon') 'SI-01M1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-02M1_PS-QS_Current-Mon') 'SI-02M1_PS-QS_Current-Mon'\r\\s('SI-03M1_PS-QS_Current-Mon') 'SI-03M1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-04M1_PS-QS_Current-Mon') 'SI-04M1_PS-QS_Current-Mon'\r\\s('SI-05M1_PS-QS_Current-Mon') 'SI-05M1_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_M1_2() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(1080.75,41.75,1432.5,122.75) 'SI-06M1_PS-QS_Current-Mon' vs 'SI-06M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-07M1_PS-QS_Current-Mon' vs 'SI-07M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-08M1_PS-QS_Current-Mon' vs 'SI-08M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-09M1_PS-QS_Current-Mon' vs 'SI-09M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-10M1_PS-QS_Current-Mon' vs 'SI-10M1_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-06M1_PS-QS_Current-Mon')=(0,0,0),rgb('SI-07M1_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-08M1_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-09M1_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-10M1_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-7.07/Y=-44.83 "\\Z08\\s('SI-06M1_PS-QS_Current-Mon') 'SI-06M1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-07M1_PS-QS_Current-Mon') 'SI-07M1_PS-QS_Current-Mon'\r\\s('SI-08M1_PS-QS_Current-Mon') 'SI-08M1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-09M1_PS-QS_Current-Mon') 'SI-09M1_PS-QS_Current-Mon'\r\\s('SI-10M1_PS-QS_Current-Mon') 'SI-10M1_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_M2_2() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(7.5,149,359.25,230) 'SI-06M2_PS-QS_Current-Mon' vs 'SI-06M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-07M2_PS-QS_Current-Mon' vs 'SI-07M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-08M2_PS-QS_Current-Mon' vs 'SI-08M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-09M2_PS-QS_Current-Mon' vs 'SI-09M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-10M2_PS-QS_Current-Mon' vs 'SI-10M2_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-06M2_PS-QS_Current-Mon')=(0,0,0),rgb('SI-07M2_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-08M2_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-09M2_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-10M2_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-7.34/Y=-44.83 "\\Z08\\s('SI-06M2_PS-QS_Current-Mon') 'SI-06M2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-07M2_PS-QS_Current-Mon') 'SI-07M2_PS-QS_Current-Mon'\r\\s('SI-08M2_PS-QS_Current-Mon') 'SI-08M2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-09M2_PS-QS_Current-Mon') 'SI-09M2_PS-QS_Current-Mon'\r\\s('SI-10M2_PS-QS_Current-Mon') 'SI-10M2_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_M2_1() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(365.25,149,717,230) 'SI-01M2_PS-QS_Current-Mon' vs 'SI-01M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-02M2_PS-QS_Current-Mon' vs 'SI-02M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-03M2_PS-QS_Current-Mon' vs 'SI-03M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-04M2_PS-QS_Current-Mon' vs 'SI-04M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-05M2_PS-QS_Current-Mon' vs 'SI-05M2_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-01M2_PS-QS_Current-Mon')=(0,0,0),rgb('SI-02M2_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03M2_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-04M2_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05M2_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-8.15/Y=-44.83 "\\Z08\\s('SI-01M2_PS-QS_Current-Mon') 'SI-01M2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-02M2_PS-QS_Current-Mon') 'SI-02M2_PS-QS_Current-Mon'\r\\s('SI-03M2_PS-QS_Current-Mon') 'SI-03M2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-04M2_PS-QS_Current-Mon') 'SI-04M2_PS-QS_Current-Mon'\r\\s('SI-05M2_PS-QS_Current-Mon') 'SI-05M2_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_M1_4() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(723,149,1074.75,230) 'SI-16M1_PS-QS_Current-Mon' vs 'SI-16M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-17M1_PS-QS_Current-Mon' vs 'SI-17M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-18M1_PS-QS_Current-Mon' vs 'SI-18M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-19M1_PS-QS_Current-Mon' vs 'SI-19M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-20M1_PS-QS_Current-Mon' vs 'SI-20M1_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-16M1_PS-QS_Current-Mon')=(0,0,0),rgb('SI-17M1_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-18M1_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-19M1_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-20M1_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-7.61/Y=-44.83 "\\Z08\\s('SI-16M1_PS-QS_Current-Mon') 'SI-16M1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-17M1_PS-QS_Current-Mon') 'SI-17M1_PS-QS_Current-Mon'\r\\s('SI-18M1_PS-QS_Current-Mon') 'SI-18M1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-19M1_PS-QS_Current-Mon') 'SI-19M1_PS-QS_Current-Mon'\r\\s('SI-20M1_PS-QS_Current-Mon') 'SI-20M1_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_M1_3() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(1080.75,149,1432.5,230) 'SI-11M1_PS-QS_Current-Mon' vs 'SI-11M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-12M1_PS-QS_Current-Mon' vs 'SI-12M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-13M1_PS-QS_Current-Mon' vs 'SI-13M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-14M1_PS-QS_Current-Mon' vs 'SI-14M1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-15M1_PS-QS_Current-Mon' vs 'SI-15M1_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-11M1_PS-QS_Current-Mon')=(0,0,0),rgb('SI-12M1_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13M1_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-14M1_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15M1_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-7.33/Y=-41.38 "\\Z08\\s('SI-11M1_PS-QS_Current-Mon') 'SI-11M1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-12M1_PS-QS_Current-Mon') 'SI-12M1_PS-QS_Current-Mon'\r\\s('SI-13M1_PS-QS_Current-Mon') 'SI-13M1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-14M1_PS-QS_Current-Mon') 'SI-14M1_PS-QS_Current-Mon'\r\\s('SI-15M1_PS-QS_Current-Mon') 'SI-15M1_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_M2_3() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(7.5,256.25,359.25,337.25) 'SI-11M2_PS-QS_Current-Mon' vs 'SI-11M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-12M2_PS-QS_Current-Mon' vs 'SI-12M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-13M2_PS-QS_Current-Mon' vs 'SI-13M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-14M2_PS-QS_Current-Mon' vs 'SI-14M2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-15M2_PS-QS_Current-Mon' vs 'SI-15M2_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-11M2_PS-QS_Current-Mon')=(0,0,0),rgb('SI-12M2_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13M2_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-14M2_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15M2_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/X=-7.34/Y=-37.93 "\\Z08\\s('SI-11M2_PS-QS_Current-Mon') 'SI-11M2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-12M2_PS-QS_Current-Mon') 'SI-12M2_PS-QS_Current-Mon'\r\\s('SI-13M2_PS-QS_Current-Mon') 'SI-13M2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-14M2_PS-QS_Current-Mon') 'SI-14M2_PS-QS_Current-Mon'\r\\s('SI-15M2_PS-QS_Current-Mon') 'SI-15M2_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_C3_3() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(365.25,256.25,717,337.25) 'SI-11C3_PS-QS_Current-Mon' vs 'SI-11C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-12C3_PS-QS_Current-Mon' vs 'SI-12C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-13C3_PS-QS_Current-Mon' vs 'SI-13C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-14C3_PS-QS_Current-Mon' vs 'SI-14C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-15C3_PS-QS_Current-Mon' vs 'SI-15C3_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-11C3_PS-QS_Current-Mon')=(0,0,0),rgb('SI-12C3_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13C3_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-14C3_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15C3_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/A=MC/X=33.15/Y=-44.83 "\\Z08\\s('SI-11C3_PS-QS_Current-Mon') 'SI-11C3_PS-QS_Current-Mon'"
	AppendText "\\s('SI-12C3_PS-QS_Current-Mon') 'SI-12C3_PS-QS_Current-Mon'\r\\s('SI-13C3_PS-QS_Current-Mon') 'SI-13C3_PS-QS_Current-Mon'"
	AppendText "\\s('SI-14C3_PS-QS_Current-Mon') 'SI-14C3_PS-QS_Current-Mon'\r\\s('SI-15C3_PS-QS_Current-Mon') 'SI-15C3_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_C3_2() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(723,256.25,1074.75,337.25) 'SI-06C3_PS-QS_Current-Mon' vs 'SI-06C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-07C3_PS-QS_Current-Mon' vs 'SI-07C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-08C3_PS-QS_Current-Mon' vs 'SI-08C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-09C3_PS-QS_Current-Mon' vs 'SI-09C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-10C3_PS-QS_Current-Mon' vs 'SI-10C3_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-06C3_PS-QS_Current-Mon')=(0,0,0),rgb('SI-07C3_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-08C3_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-09C3_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-10C3_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/A=MC/X=33.15/Y=-37.93 "\\Z08\\s('SI-06C3_PS-QS_Current-Mon') 'SI-06C3_PS-QS_Current-Mon'"
	AppendText "\\s('SI-07C3_PS-QS_Current-Mon') 'SI-07C3_PS-QS_Current-Mon'\r\\s('SI-08C3_PS-QS_Current-Mon') 'SI-08C3_PS-QS_Current-Mon'"
	AppendText "\\s('SI-09C3_PS-QS_Current-Mon') 'SI-09C3_PS-QS_Current-Mon'\r\\s('SI-10C3_PS-QS_Current-Mon') 'SI-10C3_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_C3_1() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(1080.75,256.25,1432.5,337.25) 'SI-01C3_PS-QS_Current-Mon' vs 'SI-01C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-02C3_PS-QS_Current-Mon' vs 'SI-02C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-03C3_PS-QS_Current-Mon' vs 'SI-03C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-04C3_PS-QS_Current-Mon' vs 'SI-04C3_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-05C3_PS-QS_Current-Mon' vs 'SI-05C3_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-01C3_PS-QS_Current-Mon')=(0,0,0),rgb('SI-02C3_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03C3_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-04C3_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05C3_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/A=MC/X=32.88/Y=-44.83 "\\Z08\\s('SI-01C3_PS-QS_Current-Mon') 'SI-01C3_PS-QS_Current-Mon'"
	AppendText "\\s('SI-02C3_PS-QS_Current-Mon') 'SI-02C3_PS-QS_Current-Mon'\r\\s('SI-03C3_PS-QS_Current-Mon') 'SI-03C3_PS-QS_Current-Mon'"
	AppendText "\\s('SI-04C3_PS-QS_Current-Mon') 'SI-04C3_PS-QS_Current-Mon'\r\\s('SI-05C3_PS-QS_Current-Mon') 'SI-05C3_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_C2_1() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(7.5,363.5,359.25,444.5) 'SI-01C2_PS-QS_Current-Mon' vs 'SI-01C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-02C2_PS-QS_Current-Mon' vs 'SI-02C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-03C2_PS-QS_Current-Mon' vs 'SI-03C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-04C2_PS-QS_Current-Mon' vs 'SI-04C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-05C2_PS-QS_Current-Mon' vs 'SI-05C2_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-01C2_PS-QS_Current-Mon')=(0,0,0),rgb('SI-02C2_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03C2_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-04C2_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05C2_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/A=MC/X=32.77/Y=-37.93 "\\Z08\\s('SI-01C2_PS-QS_Current-Mon') 'SI-01C2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-02C2_PS-QS_Current-Mon') 'SI-02C2_PS-QS_Current-Mon'\r\\s('SI-03C2_PS-QS_Current-Mon') 'SI-03C2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-04C2_PS-QS_Current-Mon') 'SI-04C2_PS-QS_Current-Mon'\r\\s('SI-05C2_PS-QS_Current-Mon') 'SI-05C2_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_C2_4() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(365.25,363.5,717,444.5) 'SI-16C2_PS-QS_Current-Mon' vs 'SI-16C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-17C2_PS-QS_Current-Mon' vs 'SI-17C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-18C2_PS-QS_Current-Mon' vs 'SI-18C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-19C2_PS-QS_Current-Mon' vs 'SI-19C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-20C2_PS-QS_Current-Mon' vs 'SI-20C2_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-16C2_PS-QS_Current-Mon')=(0,0,0),rgb('SI-17C2_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-18C2_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-19C2_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-20C2_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/A=MC/X=32.49/Y=-41.38 "\\Z08\\s('SI-16C2_PS-QS_Current-Mon') 'SI-16C2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-17C2_PS-QS_Current-Mon') 'SI-17C2_PS-QS_Current-Mon'\r\\s('SI-18C2_PS-QS_Current-Mon') 'SI-18C2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-19C2_PS-QS_Current-Mon') 'SI-19C2_PS-QS_Current-Mon'\r\\s('SI-20C2_PS-QS_Current-Mon') 'SI-20C2_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_C2_3() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(723,363.5,1074.75,444.5) 'SI-11C2_PS-QS_Current-Mon' vs 'SI-11C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-12C2_PS-QS_Current-Mon' vs 'SI-12C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-13C2_PS-QS_Current-Mon' vs 'SI-13C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-14C2_PS-QS_Current-Mon' vs 'SI-14C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-15C2_PS-QS_Current-Mon' vs 'SI-15C2_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-11C2_PS-QS_Current-Mon')=(0,0,0),rgb('SI-12C2_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13C2_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-14C2_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15C2_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/A=MC/X=31.76/Y=-37.93 "\\Z08\\s('SI-11C2_PS-QS_Current-Mon') 'SI-11C2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-12C2_PS-QS_Current-Mon') 'SI-12C2_PS-QS_Current-Mon'\r\\s('SI-13C2_PS-QS_Current-Mon') 'SI-13C2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-14C2_PS-QS_Current-Mon') 'SI-14C2_PS-QS_Current-Mon'\r\\s('SI-15C2_PS-QS_Current-Mon') 'SI-15C2_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_C2_2() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(1080.75,363.5,1432.5,444.5) 'SI-06C2_PS-QS_Current-Mon' vs 'SI-06C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-07C2_PS-QS_Current-Mon' vs 'SI-07C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-08C2_PS-QS_Current-Mon' vs 'SI-08C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-09C2_PS-QS_Current-Mon' vs 'SI-09C2_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-10C2_PS-QS_Current-Mon' vs 'SI-10C2_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-06C2_PS-QS_Current-Mon')=(0,0,0),rgb('SI-07C2_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-08C2_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-09C2_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-10C2_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/A=MC/X=32.56/Y=-44.83 "\\Z08\\s('SI-06C2_PS-QS_Current-Mon') 'SI-06C2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-07C2_PS-QS_Current-Mon') 'SI-07C2_PS-QS_Current-Mon'\r\\s('SI-08C2_PS-QS_Current-Mon') 'SI-08C2_PS-QS_Current-Mon'"
	AppendText "\\s('SI-09C2_PS-QS_Current-Mon') 'SI-09C2_PS-QS_Current-Mon'\r\\s('SI-10C2_PS-QS_Current-Mon') 'SI-10C2_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_C1_3() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(7.5,470.75,359.25,551.75) 'SI-11C1_PS-QS_Current-Mon' vs 'SI-11C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-12C1_PS-QS_Current-Mon' vs 'SI-12C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-13C1_PS-QS_Current-Mon' vs 'SI-13C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-14C1_PS-QS_Current-Mon' vs 'SI-14C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-15C1_PS-QS_Current-Mon' vs 'SI-15C1_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-11C1_PS-QS_Current-Mon')=(0,0,0),rgb('SI-12C1_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13C1_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-14C1_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15C1_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/A=MC/X=32.61/Y=-44.83 "\\Z08\\s('SI-11C1_PS-QS_Current-Mon') 'SI-11C1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-12C1_PS-QS_Current-Mon') 'SI-12C1_PS-QS_Current-Mon'\r\\s('SI-13C1_PS-QS_Current-Mon') 'SI-13C1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-14C1_PS-QS_Current-Mon') 'SI-14C1_PS-QS_Current-Mon'\r\\s('SI-15C1_PS-QS_Current-Mon') 'SI-15C1_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_C1_2() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(365.25,470.75,717,551.75) 'SI-06C1_PS-QS_Current-Mon' vs 'SI-06C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-07C1_PS-QS_Current-Mon' vs 'SI-07C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-08C1_PS-QS_Current-Mon' vs 'SI-08C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-09C1_PS-QS_Current-Mon' vs 'SI-09C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-10C1_PS-QS_Current-Mon' vs 'SI-10C1_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-06C1_PS-QS_Current-Mon')=(0,0,0),rgb('SI-07C1_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-08C1_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-09C1_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-10C1_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/A=MC/X=32.88/Y=-41.38 "\\Z08\\s('SI-06C1_PS-QS_Current-Mon') 'SI-06C1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-07C1_PS-QS_Current-Mon') 'SI-07C1_PS-QS_Current-Mon'\r\\s('SI-08C1_PS-QS_Current-Mon') 'SI-08C1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-09C1_PS-QS_Current-Mon') 'SI-09C1_PS-QS_Current-Mon'\r\\s('SI-10C1_PS-QS_Current-Mon') 'SI-10C1_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_C1_1() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(723,470.75,1074.75,551.75) 'SI-01C1_PS-QS_Current-Mon' vs 'SI-01C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-02C1_PS-QS_Current-Mon' vs 'SI-02C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-03C1_PS-QS_Current-Mon' vs 'SI-03C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-04C1_PS-QS_Current-Mon' vs 'SI-04C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-05C1_PS-QS_Current-Mon' vs 'SI-05C1_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-01C1_PS-QS_Current-Mon')=(0,0,0),rgb('SI-02C1_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03C1_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-04C1_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05C1_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/A=MC/X=34.03/Y=-37.93 "\\Z08\\s('SI-01C1_PS-QS_Current-Mon') 'SI-01C1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-02C1_PS-QS_Current-Mon') 'SI-02C1_PS-QS_Current-Mon'\r\\s('SI-03C1_PS-QS_Current-Mon') 'SI-03C1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-04C1_PS-QS_Current-Mon') 'SI-04C1_PS-QS_Current-Mon'\r\\s('SI-05C1_PS-QS_Current-Mon') 'SI-05C1_PS-QS_Current-Mon'"
EndMacro

Window WSI_QS_C1_4() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(1080.75,470.75,1432.5,551.75) 'SI-16C1_PS-QS_Current-Mon' vs 'SI-16C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-17C1_PS-QS_Current-Mon' vs 'SI-17C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-18C1_PS-QS_Current-Mon' vs 'SI-18C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-19C1_PS-QS_Current-Mon' vs 'SI-19C1_PS-QS_Current-Mon_TS'
	AppendToGraph 'SI-20C1_PS-QS_Current-Mon' vs 'SI-20C1_PS-QS_Current-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-16C1_PS-QS_Current-Mon')=(0,0,0),rgb('SI-17C1_PS-QS_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-18C1_PS-QS_Current-Mon')=(2,39321,1),rgb('SI-19C1_PS-QS_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-20C1_PS-QS_Current-Mon')=(39321,1,31457)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/A=MC/X=32.61/Y=-48.28 "\\Z08\\s('SI-16C1_PS-QS_Current-Mon') 'SI-16C1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-17C1_PS-QS_Current-Mon') 'SI-17C1_PS-QS_Current-Mon'\r\\s('SI-18C1_PS-QS_Current-Mon') 'SI-18C1_PS-QS_Current-Mon'"
	AppendText "\\s('SI-19C1_PS-QS_Current-Mon') 'SI-19C1_PS-QS_Current-Mon'\r\\s('SI-20C1_PS-QS_Current-Mon') 'SI-20C1_PS-QS_Current-Mon'"
EndMacro

Function SI_QS()
	Execute "WSI_QS_C1_1()"
	Execute "WSI_QS_C1_2()"
	Execute "WSI_QS_C1_3()"
	Execute "WSI_QS_C1_4()"
	Execute "WSI_QS_C2_1()"
	Execute "WSI_QS_C2_2()"
	Execute "WSI_QS_C2_3()"
	Execute "WSI_QS_C2_4()"
	Execute "WSI_QS_C3_1()"
	Execute "WSI_QS_C3_2()"
	Execute "WSI_QS_C3_3()"
	Execute "WSI_QS_C3_4()"
	Execute "WSI_QS_M1_1()"
	Execute "WSI_QS_M1_2()"
	Execute "WSI_QS_M1_3()"
	Execute "WSI_QS_M1_4()"
	Execute "WSI_QS_M2_1()"
	Execute "WSI_QS_M2_2()"
	Execute "WSI_QS_M2_3()"
	Execute "WSI_QS_M2_4()"
End

Window WSI_VA_FE1() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(7.5,41.75,716.25,524.75) 'SI-11SPFE_VA-CCG-MD_Pressure-Mon' vs 'SI-11SPFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-11C2FE_VA-CCG-MD_Pressure-Mon' vs 'SI-11C2FE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-11BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-11BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-12SBFE_VA-CCG-MD_Pressure-Mon' vs 'SI-12SBFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-12BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-12BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-13SAFE_VA-CCG-MD_Pressure-Mon' vs 'SI-13SAFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-13C2FE_VA-CCG-MD_Pressure-Mon' vs 'SI-13C2FE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-13BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-13BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-14SBFE_VA-CCG-MD_Pressure-Mon' vs 'SI-14SBFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-14BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-14BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-15SPFE_VA-CCG-MD_Pressure-Mon' vs 'SI-15SPFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-15C2FE_VA-CCG-MD_Pressure-Mon' vs 'SI-15C2FE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-15BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-15BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-16SBFE_VA-CCG-MD_Pressure-Mon' vs 'SI-16SBFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-16BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-16BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-17SAFE_VA-CCG-MD_Pressure-Mon' vs 'SI-17SAFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-17C2FE_VA-CCG-MD_Pressure-Mon' vs 'SI-17C2FE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-17BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-17BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-18SBFE_VA-CCG-MD_Pressure-Mon' vs 'SI-18SBFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-18BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-18BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-19SPFE_VA-CCG-MD_Pressure-Mon' vs 'SI-19SPFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-19C2FE_VA-CCG-MD_Pressure-Mon' vs 'SI-19C2FE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-19BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-19BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-20SBFE_VA-CCG-MD_Pressure-Mon' vs 'SI-20SBFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-20BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-20BCFE_VA-CCG-MD_Pressure-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-11SPFE_VA-CCG-MD_Pressure-Mon')=(0,0,0),rgb('SI-11C2FE_VA-CCG-MD_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-11BCFE_VA-CCG-MD_Pressure-Mon')=(2,39321,1),rgb('SI-12SBFE_VA-CCG-MD_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-12BCFE_VA-CCG-MD_Pressure-Mon')=(39321,1,31457),rgb('SI-13SAFE_VA-CCG-MD_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-13C2FE_VA-CCG-MD_Pressure-Mon')=(65535,32768,32768),rgb('SI-13BCFE_VA-CCG-MD_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-14SBFE_VA-CCG-MD_Pressure-Mon')=(16385,65535,65535),rgb('SI-14BCFE_VA-CCG-MD_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-15SPFE_VA-CCG-MD_Pressure-Mon')=(0,0,0),rgb('SI-15C2FE_VA-CCG-MD_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-15BCFE_VA-CCG-MD_Pressure-Mon')=(2,39321,1),rgb('SI-16SBFE_VA-CCG-MD_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-16BCFE_VA-CCG-MD_Pressure-Mon')=(39321,1,31457),rgb('SI-17SAFE_VA-CCG-MD_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-17C2FE_VA-CCG-MD_Pressure-Mon')=(65535,32768,32768),rgb('SI-17BCFE_VA-CCG-MD_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-18SBFE_VA-CCG-MD_Pressure-Mon')=(16385,65535,65535),rgb('SI-18BCFE_VA-CCG-MD_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-19SPFE_VA-CCG-MD_Pressure-Mon')=(0,0,0),rgb('SI-19C2FE_VA-CCG-MD_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-19BCFE_VA-CCG-MD_Pressure-Mon')=(2,39321,1),rgb('SI-20SBFE_VA-CCG-MD_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-20BCFE_VA-CCG-MD_Pressure-Mon')=(39321,1,31457)
	ModifyGraph log(left)=1
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Pressão (mBar)"
	TextBox/C/N=text0/A=MC/X=31.91/Y=38.14 "Pressão nos Front-Ends"
EndMacro

Window WSI_VA_FE2() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(723.75,41.75,1432.5,524.75) 'SI-01SAFE_VA-CCG-MD_Pressure-Mon' vs 'SI-01SAFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-01C2FE_VA-CCG-MD_Pressure-Mon' vs 'SI-01C2FE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-01BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-01BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-02SBFE_VA-CCG-MD_Pressure-Mon' vs 'SI-02SBFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-02BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-02BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-03SPFE_VA-CCG-MD_Pressure-Mon' vs 'SI-03SPFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-03C2FE_VA-CCG-MD_Pressure-Mon' vs 'SI-03C2FE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-03BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-03BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-04SBFE_VA-CCG-MD_Pressure-Mon' vs 'SI-04SBFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-04BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-04BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-05SAFE_VA-CCG-MD_Pressure-Mon' vs 'SI-05SAFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-05C2FE_VA-CCG-MD_Pressure-Mon' vs 'SI-05C2FE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-05BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-05BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-06SBFE_VA-CCG-MD_Pressure-Mon' vs 'SI-06SBFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-06BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-06BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-07SPFE_VA-CCG-MD_Pressure-Mon' vs 'SI-07SPFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-07C2FE_VA-CCG-MD_Pressure-Mon' vs 'SI-07C2FE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-07BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-07BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-08SBFE_VA-CCG-MD_Pressure-Mon' vs 'SI-08SBFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-08BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-08BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-09SAFE_VA-CCG-MD_Pressure-Mon' vs 'SI-09SAFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-09C2FE_VA-CCG-MD_Pressure-Mon' vs 'SI-09C2FE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-09BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-09BCFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-10SBFE_VA-CCG-MD_Pressure-Mon' vs 'SI-10SBFE_VA-CCG-MD_Pressure-Mon_TS'
	AppendToGraph 'SI-10BCFE_VA-CCG-MD_Pressure-Mon' vs 'SI-10BCFE_VA-CCG-MD_Pressure-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-01SAFE_VA-CCG-MD_Pressure-Mon')=(0,0,0),rgb('SI-01C2FE_VA-CCG-MD_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-01BCFE_VA-CCG-MD_Pressure-Mon')=(2,39321,1),rgb('SI-02SBFE_VA-CCG-MD_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-02BCFE_VA-CCG-MD_Pressure-Mon')=(39321,1,31457),rgb('SI-03SPFE_VA-CCG-MD_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-03C2FE_VA-CCG-MD_Pressure-Mon')=(65535,32768,32768),rgb('SI-03BCFE_VA-CCG-MD_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-04SBFE_VA-CCG-MD_Pressure-Mon')=(16385,65535,65535),rgb('SI-04BCFE_VA-CCG-MD_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-05SAFE_VA-CCG-MD_Pressure-Mon')=(0,0,0),rgb('SI-05C2FE_VA-CCG-MD_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-05BCFE_VA-CCG-MD_Pressure-Mon')=(2,39321,1),rgb('SI-06SBFE_VA-CCG-MD_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-06BCFE_VA-CCG-MD_Pressure-Mon')=(39321,1,31457),rgb('SI-07SPFE_VA-CCG-MD_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-07C2FE_VA-CCG-MD_Pressure-Mon')=(65535,32768,32768),rgb('SI-07BCFE_VA-CCG-MD_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-08SBFE_VA-CCG-MD_Pressure-Mon')=(16385,65535,65535),rgb('SI-08BCFE_VA-CCG-MD_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-09SAFE_VA-CCG-MD_Pressure-Mon')=(0,0,0),rgb('SI-09C2FE_VA-CCG-MD_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-09BCFE_VA-CCG-MD_Pressure-Mon')=(2,39321,1),rgb('SI-10SBFE_VA-CCG-MD_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-10BCFE_VA-CCG-MD_Pressure-Mon')=(39321,1,31457)
	ModifyGraph log(left)=1
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Pressão (mBar)"
	TextBox/C/N=text0/A=MC/X=32.09/Y=34.54 "Pressão nos Front-Ends"
EndMacro

Function SI_VA_FE()
	Execute "WSI_VA_FE1()"
	Execute "WSI_VA_FE2()"
End

Window WSI_VA_SIP20_1() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(7.5,41.75,716.25,555.5) 'SI-11SP_VA-SIP20-BG_Pressure-Mon' vs 'SI-11SP_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-11M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-11M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-11C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-11C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-11C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-11C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-11C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-11C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-11C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-11C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-12SB_VA-SIP20-BG_Pressure-Mon' vs 'SI-12SB_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-12M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-12M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-12C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-12C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-12C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-12C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-12C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-12C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-12C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-12C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-13SA_VA-SIP20-BG_Pressure-Mon' vs 'SI-13SA_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-13M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-13M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-13C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-13C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-13C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-13C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-13C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-13C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-13C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-13C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-14SB_VA-SIP20-BG_Pressure-Mon' vs 'SI-14SB_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-14M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-14M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-14C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-14C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-14C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-14C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-14C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-14C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-14C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-14C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-15SP_VA-SIP20-BG_Pressure-Mon' vs 'SI-15SP_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-15M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-15M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-15C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-15C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-15C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-15C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-15C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-15C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-15C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-15C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-16SB_VA-SIP20-BG_Pressure-Mon' vs 'SI-16SB_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-16M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-16M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-16C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-16C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-16C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-16C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-16C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-16C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-16C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-16C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-17SA_VA-SIP20-BG_Pressure-Mon' vs 'SI-17SA_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-17M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-17M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-17C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-17C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-17C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-17C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-17C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-17C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-17C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-17C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-18SB_VA-SIP20-BG_Pressure-Mon' vs 'SI-18SB_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-18M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-18M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-18C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-18C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-18C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-18C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-18C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-18C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-18C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-18C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-19SP_VA-SIP20-BG_Pressure-Mon' vs 'SI-19SP_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-19M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-19M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-19C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-19C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-19C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-19C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-19C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-19C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-19C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-19C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-20SB_VA-SIP20-BG_Pressure-Mon' vs 'SI-20SB_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-20M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-20M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-20C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-20C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-20C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-20C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-20C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-20C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-20C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-20C1_VA-SIP20-BG_Pressure-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-11SP_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('SI-11M1_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-11C4_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('SI-11C3_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-11C2_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-11C1_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-12SB_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-12M1_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-12C4_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-12C3_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-12C2_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('SI-12C1_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13SA_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('SI-13M1_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-13C4_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-13C3_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-13C2_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-13C1_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-14SB_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-14M1_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-14C4_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('SI-14C3_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-14C2_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('SI-14C1_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15SP_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-15M1_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-15C4_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-15C3_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-15C2_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-15C1_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-16SB_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('SI-16M1_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-16C4_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('SI-16C3_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-16C2_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-16C1_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-17SA_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-17M1_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-17C4_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-17C3_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-17C2_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('SI-17C1_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-18SB_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('SI-18M1_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-18C4_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-18C3_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-18C2_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-18C1_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-19SP_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-19M1_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-19C4_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('SI-19C3_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-19C2_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('SI-19C1_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-20SB_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-20M1_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-20C4_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-20C3_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-20C2_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-20C1_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph log(left)=1
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Pressão (mBar)"
	TextBox/C/N=text0/A=MC/X=35.96/Y=47.82 "Pressão dos Medidores SIP20"
EndMacro

Window WSI_VA_SIP20_2() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(723.75,41.75,1432.5,555.5) 'SI-01SA_VA-SIP20-BG_Pressure-Mon' vs 'SI-01SA_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-01M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-01M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-01C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-01C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-01C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-01C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-01C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-01C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-01C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-01C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-02SB_VA-SIP20-BG_Pressure-Mon' vs 'SI-02SB_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-02M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-02M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-02C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-02C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-02C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-02C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-02C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-02C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-02C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-02C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-03SP_VA-SIP20-BG_Pressure-Mon' vs 'SI-03SP_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-03M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-03M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-03C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-03C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-03C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-03C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-03C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-03C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-03C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-03C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-04SB_VA-SIP20-BG_Pressure-Mon' vs 'SI-04SB_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-04M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-04M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-04C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-04C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-04C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-04C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-04C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-04C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-04C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-04C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-05SA_VA-SIP20-BG_Pressure-Mon' vs 'SI-05SA_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-05M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-05M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-05C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-05C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-05C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-05C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-05C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-05C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-05C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-05C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-06SB_VA-SIP20-BG_Pressure-Mon' vs 'SI-06SB_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-06M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-06M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-06C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-06C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-06C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-06C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-06C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-06C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-06C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-06C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-07SP_VA-SIP20-BG_Pressure-Mon' vs 'SI-07SP_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-07M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-07M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-07C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-07C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-07C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-07C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-07C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-07C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-07C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-07C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-08SB_VA-SIP20-BG_Pressure-Mon' vs 'SI-08SB_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-08M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-08M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-08C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-08C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-08C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-08C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-08C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-08C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-08C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-08C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-09SA_VA-SIP20-BG_Pressure-Mon' vs 'SI-09SA_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-09M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-09M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-09C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-09C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-09C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-09C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-09C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-09C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-09C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-09C1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-10SB_VA-SIP20-BG_Pressure-Mon' vs 'SI-10SB_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-10M1_VA-SIP20-BG_Pressure-Mon' vs 'SI-10M1_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-10C4_VA-SIP20-BG_Pressure-Mon' vs 'SI-10C4_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-10C3_VA-SIP20-BG_Pressure-Mon' vs 'SI-10C3_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-10C2_VA-SIP20-BG_Pressure-Mon' vs 'SI-10C2_VA-SIP20-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-10C1_VA-SIP20-BG_Pressure-Mon' vs 'SI-10C1_VA-SIP20-BG_Pressure-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-01SA_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('SI-01M1_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-01C4_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('SI-01C3_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-01C2_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-01C1_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-02SB_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-02M1_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-02C4_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-02C3_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-02C2_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('SI-02C1_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03SP_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('SI-03M1_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-03C4_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-03C3_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-03C2_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-03C1_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-04SB_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-04M1_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-04C4_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('SI-04C3_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-04C2_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('SI-04C1_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05SA_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-05M1_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-05C4_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-05C3_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-05C2_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-05C1_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-06SB_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('SI-06M1_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-06C4_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('SI-06C3_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-06C2_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-06C1_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-07SP_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-07M1_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-07C4_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-07C3_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-07C2_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('SI-07C1_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-08SB_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('SI-08M1_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-08C4_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-08C3_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-08C2_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-08C1_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-09SA_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-09M1_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-09C4_VA-SIP20-BG_Pressure-Mon')=(0,0,0),rgb('SI-09C3_VA-SIP20-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-09C2_VA-SIP20-BG_Pressure-Mon')=(2,39321,1),rgb('SI-09C1_VA-SIP20-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-10SB_VA-SIP20-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-10M1_VA-SIP20-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-10C4_VA-SIP20-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-10C3_VA-SIP20-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-10C2_VA-SIP20-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-10C1_VA-SIP20-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph log(left)=1
	ModifyGraph dateInfo(bottom)={0,0,0}
	Legend/C/N=text0/J/A=MC/X=36.98/Y=41.01 "Pressão dos Medidores SIP20"
EndMacro

Function SI_VA_SIP20()
	Execute "WSI_VA_SIP20_1()"
	Execute "WSI_VA_SIP20_2()"
End

Window WSI_VA_CCG1() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(6.75,41.75,715.5,567.5) 'SI-11SP_VA-CCG-BG_Pressure-Mon' vs 'SI-11SP_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-11C3_VA-CCG-BG_Pressure-Mon' vs 'SI-11C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-11C1_VA-CCG-BG_Pressure-Mon' vs 'SI-11C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-12SB_VA-CCG-BG_Pressure-Mon' vs 'SI-12SB_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-12C3_VA-CCG-BG_Pressure-Mon' vs 'SI-12C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-12C1_VA-CCG-BG_Pressure-Mon' vs 'SI-12C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-13SA_VA-CCG-BG_Pressure-Mon' vs 'SI-13SA_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-13C3_VA-CCG-BG_Pressure-Mon' vs 'SI-13C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-13C1_VA-CCG-BG_Pressure-Mon' vs 'SI-13C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-14SB_VA-CCG-BG_Pressure-Mon' vs 'SI-14SB_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-14C3_VA-CCG-BG_Pressure-Mon' vs 'SI-14C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-14C1_VA-CCG-BG_Pressure-Mon' vs 'SI-14C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-15SP_VA-CCG-BG_Pressure-Mon' vs 'SI-15SP_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-15C3_VA-CCG-BG_Pressure-Mon' vs 'SI-15C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-15C1_VA-CCG-BG_Pressure-Mon' vs 'SI-15C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-16SB_VA-CCG-BG_Pressure-Mon' vs 'SI-16SB_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-16C3_VA-CCG-BG_Pressure-Mon' vs 'SI-16C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-16C1_VA-CCG-BG_Pressure-Mon' vs 'SI-16C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-17SA_VA-CCG-BG_Pressure-Mon' vs 'SI-17SA_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-17C3_VA-CCG-BG_Pressure-Mon' vs 'SI-17C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-17C1_VA-CCG-BG_Pressure-Mon' vs 'SI-17C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-18SB_VA-CCG-BG_Pressure-Mon' vs 'SI-18SB_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-18C3_VA-CCG-BG_Pressure-Mon' vs 'SI-18C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-18C1_VA-CCG-BG_Pressure-Mon' vs 'SI-18C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-19SP_VA-CCG-BG_Pressure-Mon' vs 'SI-19SP_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-19C3_VA-CCG-BG_Pressure-Mon' vs 'SI-19C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-19C1_VA-CCG-BG_Pressure-Mon' vs 'SI-19C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-20SB_VA-CCG-BG_Pressure-Mon' vs 'SI-20SB_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-20C3_VA-CCG-BG_Pressure-Mon' vs 'SI-20C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-20C1_VA-CCG-BG_Pressure-Mon' vs 'SI-20C1_VA-CCG-BG_Pressure-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-11SP_VA-CCG-BG_Pressure-Mon')=(0,0,0),rgb('SI-11C3_VA-CCG-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-11C1_VA-CCG-BG_Pressure-Mon')=(2,39321,1),rgb('SI-12SB_VA-CCG-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-12C3_VA-CCG-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-12C1_VA-CCG-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-13SA_VA-CCG-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-13C3_VA-CCG-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-13C1_VA-CCG-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-14SB_VA-CCG-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-14C3_VA-CCG-BG_Pressure-Mon')=(0,0,0),rgb('SI-14C1_VA-CCG-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-15SP_VA-CCG-BG_Pressure-Mon')=(2,39321,1),rgb('SI-15C3_VA-CCG-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15C1_VA-CCG-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-16SB_VA-CCG-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-16C3_VA-CCG-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-16C1_VA-CCG-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-17SA_VA-CCG-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-17C3_VA-CCG-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-17C1_VA-CCG-BG_Pressure-Mon')=(0,0,0),rgb('SI-18SB_VA-CCG-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-18C3_VA-CCG-BG_Pressure-Mon')=(2,39321,1),rgb('SI-18C1_VA-CCG-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-19SP_VA-CCG-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-19C3_VA-CCG-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-19C1_VA-CCG-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-20SB_VA-CCG-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-20C3_VA-CCG-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-20C1_VA-CCG-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph log(left)=1
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Pressão (mBar)"
	Legend/C/N=text0/J/A=MC/X=37.23/Y=43.29 "Pressão dos Medidores CCG"
EndMacro

Window WSI_VA_CCG2() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(723.75,41.75,1432.5,567.5) 'SI-06SB_VA-CCG-BG_Pressure-Mon' vs 'SI-06SB_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-01SA_VA-CCG-BG_Pressure-Mon' vs 'SI-01SA_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-01C3_VA-CCG-BG_Pressure-Mon' vs 'SI-01C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-01C1_VA-CCG-BG_Pressure-Mon' vs 'SI-01C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-02SB_VA-CCG-BG_Pressure-Mon' vs 'SI-02SB_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-02C3_VA-CCG-BG_Pressure-Mon' vs 'SI-02C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-02C1_VA-CCG-BG_Pressure-Mon' vs 'SI-02C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-03SP_VA-CCG-BG_Pressure-Mon' vs 'SI-03SP_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-03C3_VA-CCG-BG_Pressure-Mon' vs 'SI-03C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-03C1_VA-CCG-BG_Pressure-Mon' vs 'SI-03C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-04SB_VA-CCG-BG_Pressure-Mon' vs 'SI-04SB_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-04C3_VA-CCG-BG_Pressure-Mon' vs 'SI-04C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-04C1_VA-CCG-BG_Pressure-Mon' vs 'SI-04C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-05SA_VA-CCG-BG_Pressure-Mon' vs 'SI-05SA_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-05C3_VA-CCG-BG_Pressure-Mon' vs 'SI-05C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-05C1_VA-CCG-BG_Pressure-Mon' vs 'SI-05C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-06C3_VA-CCG-BG_Pressure-Mon' vs 'SI-06C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-06C1_VA-CCG-BG_Pressure-Mon' vs 'SI-06C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-07SP_VA-CCG-BG_Pressure-Mon' vs 'SI-07SP_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-07C3_VA-CCG-BG_Pressure-Mon' vs 'SI-07C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-07C1_VA-CCG-BG_Pressure-Mon' vs 'SI-07C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-08SB_VA-CCG-BG_Pressure-Mon' vs 'SI-08SB_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-08C3_VA-CCG-BG_Pressure-Mon' vs 'SI-08C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-08C1_VA-CCG-BG_Pressure-Mon' vs 'SI-08C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-09SA_VA-CCG-BG_Pressure-Mon' vs 'SI-09SA_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-09C3_VA-CCG-BG_Pressure-Mon' vs 'SI-09C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-09C1_VA-CCG-BG_Pressure-Mon' vs 'SI-09C1_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-10SB_VA-CCG-BG_Pressure-Mon' vs 'SI-10SB_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-10C3_VA-CCG-BG_Pressure-Mon' vs 'SI-10C3_VA-CCG-BG_Pressure-Mon_TS'
	AppendToGraph 'SI-10C1_VA-CCG-BG_Pressure-Mon' vs 'SI-10C1_VA-CCG-BG_Pressure-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-06SB_VA-CCG-BG_Pressure-Mon')=(48059,48059,48059),rgb('SI-01SA_VA-CCG-BG_Pressure-Mon')=(0,0,0)
	ModifyGraph rgb('SI-01C3_VA-CCG-BG_Pressure-Mon')=(65535,16385,16385),rgb('SI-01C1_VA-CCG-BG_Pressure-Mon')=(2,39321,1)
	ModifyGraph rgb('SI-02SB_VA-CCG-BG_Pressure-Mon')=(0,0,65535),rgb('SI-02C3_VA-CCG-BG_Pressure-Mon')=(39321,1,31457)
	ModifyGraph rgb('SI-02C1_VA-CCG-BG_Pressure-Mon')=(48059,48059,48059),rgb('SI-03SP_VA-CCG-BG_Pressure-Mon')=(65535,32768,32768)
	ModifyGraph rgb('SI-03C3_VA-CCG-BG_Pressure-Mon')=(0,65535,0),rgb('SI-03C1_VA-CCG-BG_Pressure-Mon')=(16385,65535,65535)
	ModifyGraph rgb('SI-04SB_VA-CCG-BG_Pressure-Mon')=(65535,32768,58981),rgb('SI-04C3_VA-CCG-BG_Pressure-Mon')=(0,0,0)
	ModifyGraph rgb('SI-04C1_VA-CCG-BG_Pressure-Mon')=(65535,16385,16385),rgb('SI-05SA_VA-CCG-BG_Pressure-Mon')=(2,39321,1)
	ModifyGraph rgb('SI-05C3_VA-CCG-BG_Pressure-Mon')=(0,0,65535),rgb('SI-05C1_VA-CCG-BG_Pressure-Mon')=(39321,1,31457)
	ModifyGraph rgb('SI-06C3_VA-CCG-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-06C1_VA-CCG-BG_Pressure-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-07SP_VA-CCG-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-07C3_VA-CCG-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-07C1_VA-CCG-BG_Pressure-Mon')=(0,0,0),rgb('SI-08SB_VA-CCG-BG_Pressure-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-08C3_VA-CCG-BG_Pressure-Mon')=(2,39321,1),rgb('SI-08C1_VA-CCG-BG_Pressure-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-09SA_VA-CCG-BG_Pressure-Mon')=(39321,1,31457),rgb('SI-09C3_VA-CCG-BG_Pressure-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-09C1_VA-CCG-BG_Pressure-Mon')=(65535,32768,32768),rgb('SI-10SB_VA-CCG-BG_Pressure-Mon')=(65535,54611,49151)
	ModifyGraph rgb('SI-10C3_VA-CCG-BG_Pressure-Mon')=(16385,65535,65535),rgb('SI-10C1_VA-CCG-BG_Pressure-Mon')=(65535,32768,58981)
	ModifyGraph log(left)=1
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Pressão (mBar)"
	Legend/C/N=text0/J/A=MC/X=35.08/Y=39.39 "Pressão dos Medidores CCG"
EndMacro

Function SI_VA_CCG()
	Execute "WSI_VA_CCG1()"
	Execute "WSI_VA_CCG2()"
End

Window WSI_CH_M1() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(8.25,42.5,900,500) 'SI-01M1_PS-CH_Current-Mon' vs 'SI-01M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-02M1_PS-CH_Current-Mon' vs 'SI-02M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-03M1_PS-CH_Current-Mon' vs 'SI-03M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-04M1_PS-CH_Current-Mon' vs 'SI-04M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-05M1_PS-CH_Current-Mon' vs 'SI-05M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-06M1_PS-CH_Current-Mon' vs 'SI-06M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-07M1_PS-CH_Current-Mon' vs 'SI-07M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-08M1_PS-CH_Current-Mon' vs 'SI-08M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-09M1_PS-CH_Current-Mon' vs 'SI-09M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-10M1_PS-CH_Current-Mon' vs 'SI-10M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-11M1_PS-CH_Current-Mon' vs 'SI-11M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-12M1_PS-CH_Current-Mon' vs 'SI-12M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-13M1_PS-CH_Current-Mon' vs 'SI-13M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-14M1_PS-CH_Current-Mon' vs 'SI-14M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-15M1_PS-CH_Current-Mon' vs 'SI-15M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-16M1_PS-CH_Current-Mon' vs 'SI-16M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-17M1_PS-CH_Current-Mon' vs 'SI-17M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-18M1_PS-CH_Current-Mon' vs 'SI-18M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-19M1_PS-CH_Current-Mon' vs 'SI-19M1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-20M1_PS-CH_Current-Mon' vs 'SI-20M1_PS-CH_Current-Mon_TS'
	ModifyGraph rgb('SI-01M1_PS-CH_Current-Mon')=(0,0,0),rgb('SI-02M1_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03M1_PS-CH_Current-Mon')=(2,39321,1),rgb('SI-04M1_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05M1_PS-CH_Current-Mon')=(39321,1,31457),rgb('SI-06M1_PS-CH_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-07M1_PS-CH_Current-Mon')=(65535,32768,32768),rgb('SI-08M1_PS-CH_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-09M1_PS-CH_Current-Mon')=(16385,65535,65535),rgb('SI-10M1_PS-CH_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-11M1_PS-CH_Current-Mon')=(0,0,0),rgb('SI-12M1_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13M1_PS-CH_Current-Mon')=(2,39321,1),rgb('SI-14M1_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15M1_PS-CH_Current-Mon')=(39321,1,31457),rgb('SI-16M1_PS-CH_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-17M1_PS-CH_Current-Mon')=(65535,32768,32768),rgb('SI-18M1_PS-CH_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-19M1_PS-CH_Current-Mon')=(16385,65535,65535),rgb('SI-20M1_PS-CH_Current-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	TextBox/C/N=text0/A=MC/X=31.76/Y=43.59 "Corretoras Horizontais - M1"
EndMacro

Function SI_CH_M1()
	Execute "WSI_CH_M1()"
End

Window WSI_CH_C4() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(8.25,42.5,900,500) 'SI-01C4_PS-CH_Current-Mon' vs 'SI-01C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-02C4_PS-CH_Current-Mon' vs 'SI-02C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-03C4_PS-CH_Current-Mon' vs 'SI-03C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-04C4_PS-CH_Current-Mon' vs 'SI-04C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-05C4_PS-CH_Current-Mon' vs 'SI-05C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-06C4_PS-CH_Current-Mon' vs 'SI-06C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-07C4_PS-CH_Current-Mon' vs 'SI-07C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-08C4_PS-CH_Current-Mon' vs 'SI-08C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-09C4_PS-CH_Current-Mon' vs 'SI-09C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-10C4_PS-CH_Current-Mon' vs 'SI-10C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-11C4_PS-CH_Current-Mon' vs 'SI-11C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-12C4_PS-CH_Current-Mon' vs 'SI-12C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-13C4_PS-CH_Current-Mon' vs 'SI-13C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-14C4_PS-CH_Current-Mon' vs 'SI-14C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-15C4_PS-CH_Current-Mon' vs 'SI-15C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-16C4_PS-CH_Current-Mon' vs 'SI-16C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-17C4_PS-CH_Current-Mon' vs 'SI-17C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-18C4_PS-CH_Current-Mon' vs 'SI-18C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-19C4_PS-CH_Current-Mon' vs 'SI-19C4_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-20C4_PS-CH_Current-Mon' vs 'SI-20C4_PS-CH_Current-Mon_TS'
	ModifyGraph rgb('SI-01C4_PS-CH_Current-Mon')=(0,0,0),rgb('SI-02C4_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03C4_PS-CH_Current-Mon')=(2,39321,1),rgb('SI-04C4_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05C4_PS-CH_Current-Mon')=(39321,1,31457),rgb('SI-06C4_PS-CH_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-07C4_PS-CH_Current-Mon')=(65535,32768,32768),rgb('SI-08C4_PS-CH_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-09C4_PS-CH_Current-Mon')=(16385,65535,65535),rgb('SI-10C4_PS-CH_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-11C4_PS-CH_Current-Mon')=(0,0,0),rgb('SI-12C4_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13C4_PS-CH_Current-Mon')=(2,39321,1),rgb('SI-14C4_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15C4_PS-CH_Current-Mon')=(39321,1,31457),rgb('SI-16C4_PS-CH_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-17C4_PS-CH_Current-Mon')=(65535,32768,32768),rgb('SI-18C4_PS-CH_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-19C4_PS-CH_Current-Mon')=(16385,65535,65535),rgb('SI-20C4_PS-CH_Current-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	TextBox/C/N=text0/A=MC/X=24.94/Y=31.28 "Corretoras Horizontais - C4"
EndMacro

Function SI_CH_C4()
	Execute "WSI_CH_C4()"
End

Window WSI_CH_C3() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(8.25,42.5,900,500) 'SI-01C3_PS-CH_Current-Mon' vs 'SI-01C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-02C3_PS-CH_Current-Mon' vs 'SI-02C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-03C3_PS-CH_Current-Mon' vs 'SI-03C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-04C3_PS-CH_Current-Mon' vs 'SI-04C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-05C3_PS-CH_Current-Mon' vs 'SI-05C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-06C3_PS-CH_Current-Mon' vs 'SI-06C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-07C3_PS-CH_Current-Mon' vs 'SI-07C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-08C3_PS-CH_Current-Mon' vs 'SI-08C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-09C3_PS-CH_Current-Mon' vs 'SI-09C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-10C3_PS-CH_Current-Mon' vs 'SI-10C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-11C3_PS-CH_Current-Mon' vs 'SI-11C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-12C3_PS-CH_Current-Mon' vs 'SI-12C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-13C3_PS-CH_Current-Mon' vs 'SI-13C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-14C3_PS-CH_Current-Mon' vs 'SI-14C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-15C3_PS-CH_Current-Mon' vs 'SI-15C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-16C3_PS-CH_Current-Mon' vs 'SI-16C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-17C3_PS-CH_Current-Mon' vs 'SI-17C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-18C3_PS-CH_Current-Mon' vs 'SI-18C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-19C3_PS-CH_Current-Mon' vs 'SI-19C3_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-20C3_PS-CH_Current-Mon' vs 'SI-20C3_PS-CH_Current-Mon_TS'
	ModifyGraph rgb('SI-01C3_PS-CH_Current-Mon')=(0,0,0),rgb('SI-02C3_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03C3_PS-CH_Current-Mon')=(2,39321,1),rgb('SI-04C3_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05C3_PS-CH_Current-Mon')=(39321,1,31457),rgb('SI-06C3_PS-CH_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-07C3_PS-CH_Current-Mon')=(65535,32768,32768),rgb('SI-08C3_PS-CH_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-09C3_PS-CH_Current-Mon')=(16385,65535,65535),rgb('SI-10C3_PS-CH_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-11C3_PS-CH_Current-Mon')=(0,0,0),rgb('SI-12C3_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13C3_PS-CH_Current-Mon')=(2,39321,1),rgb('SI-14C3_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15C3_PS-CH_Current-Mon')=(39321,1,31457),rgb('SI-16C3_PS-CH_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-17C3_PS-CH_Current-Mon')=(65535,32768,32768),rgb('SI-18C3_PS-CH_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-19C3_PS-CH_Current-Mon')=(16385,65535,65535),rgb('SI-20C3_PS-CH_Current-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	TextBox/C/N=text0/A=MC/X=25.41/Y=-10.77 "Corretoras Horizontais - C3"
EndMacro

Function SI_CH_C3()
	Execute "WSI_CH_C3()"
End

Window WSI_CH_C2() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(8.25,42.5,900,500) 'SI-01C2_PS-CH_Current-Mon' vs 'SI-01C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-02C2_PS-CH_Current-Mon' vs 'SI-02C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-03C2_PS-CH_Current-Mon' vs 'SI-03C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-04C2_PS-CH_Current-Mon' vs 'SI-04C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-05C2_PS-CH_Current-Mon' vs 'SI-05C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-06C2_PS-CH_Current-Mon' vs 'SI-06C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-07C2_PS-CH_Current-Mon' vs 'SI-07C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-08C2_PS-CH_Current-Mon' vs 'SI-08C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-09C2_PS-CH_Current-Mon' vs 'SI-09C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-10C2_PS-CH_Current-Mon' vs 'SI-10C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-11C2_PS-CH_Current-Mon' vs 'SI-11C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-12C2_PS-CH_Current-Mon' vs 'SI-12C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-13C2_PS-CH_Current-Mon' vs 'SI-13C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-14C2_PS-CH_Current-Mon' vs 'SI-14C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-15C2_PS-CH_Current-Mon' vs 'SI-15C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-16C2_PS-CH_Current-Mon' vs 'SI-16C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-17C2_PS-CH_Current-Mon' vs 'SI-17C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-18C2_PS-CH_Current-Mon' vs 'SI-18C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-19C2_PS-CH_Current-Mon' vs 'SI-19C2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-20C2_PS-CH_Current-Mon' vs 'SI-20C2_PS-CH_Current-Mon_TS'
	ModifyGraph rgb('SI-01C2_PS-CH_Current-Mon')=(0,0,0),rgb('SI-02C2_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03C2_PS-CH_Current-Mon')=(2,39321,1),rgb('SI-04C2_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05C2_PS-CH_Current-Mon')=(39321,1,31457),rgb('SI-06C2_PS-CH_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-07C2_PS-CH_Current-Mon')=(65535,32768,32768),rgb('SI-08C2_PS-CH_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-09C2_PS-CH_Current-Mon')=(16385,65535,65535),rgb('SI-10C2_PS-CH_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-11C2_PS-CH_Current-Mon')=(0,0,0),rgb('SI-12C2_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13C2_PS-CH_Current-Mon')=(2,39321,1),rgb('SI-14C2_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15C2_PS-CH_Current-Mon')=(39321,1,31457),rgb('SI-16C2_PS-CH_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-17C2_PS-CH_Current-Mon')=(65535,32768,32768),rgb('SI-18C2_PS-CH_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-19C2_PS-CH_Current-Mon')=(16385,65535,65535),rgb('SI-20C2_PS-CH_Current-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	TextBox/C/N=text0/A=MC/X=27.76/Y=40.51 "Corretoras Horizontais - C2"
EndMacro

Function SI_CH_C2()
	Execute "WSI_CH_C2()"
End

Window WSI_CH_C1() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(8.25,42.5,900,500) 'SI-01C1_PS-CH_Current-Mon' vs 'SI-01C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-02C1_PS-CH_Current-Mon' vs 'SI-02C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-03C1_PS-CH_Current-Mon' vs 'SI-03C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-04C1_PS-CH_Current-Mon' vs 'SI-04C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-05C1_PS-CH_Current-Mon' vs 'SI-05C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-06C1_PS-CH_Current-Mon' vs 'SI-06C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-07C1_PS-CH_Current-Mon' vs 'SI-07C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-08C1_PS-CH_Current-Mon' vs 'SI-08C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-09C1_PS-CH_Current-Mon' vs 'SI-09C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-10C1_PS-CH_Current-Mon' vs 'SI-10C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-11C1_PS-CH_Current-Mon' vs 'SI-11C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-12C1_PS-CH_Current-Mon' vs 'SI-12C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-13C1_PS-CH_Current-Mon' vs 'SI-13C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-14C1_PS-CH_Current-Mon' vs 'SI-14C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-15C1_PS-CH_Current-Mon' vs 'SI-15C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-16C1_PS-CH_Current-Mon' vs 'SI-16C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-17C1_PS-CH_Current-Mon' vs 'SI-17C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-18C1_PS-CH_Current-Mon' vs 'SI-18C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-19C1_PS-CH_Current-Mon' vs 'SI-19C1_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-20C1_PS-CH_Current-Mon' vs 'SI-20C1_PS-CH_Current-Mon_TS'
	ModifyGraph rgb('SI-01C1_PS-CH_Current-Mon')=(0,0,0),rgb('SI-02C1_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03C1_PS-CH_Current-Mon')=(2,39321,1),rgb('SI-04C1_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05C1_PS-CH_Current-Mon')=(39321,1,31457),rgb('SI-06C1_PS-CH_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-07C1_PS-CH_Current-Mon')=(65535,32768,32768),rgb('SI-08C1_PS-CH_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-09C1_PS-CH_Current-Mon')=(16385,65535,65535),rgb('SI-10C1_PS-CH_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-11C1_PS-CH_Current-Mon')=(0,0,0),rgb('SI-12C1_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13C1_PS-CH_Current-Mon')=(2,39321,1),rgb('SI-14C1_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15C1_PS-CH_Current-Mon')=(39321,1,31457),rgb('SI-16C1_PS-CH_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-17C1_PS-CH_Current-Mon')=(65535,32768,32768),rgb('SI-18C1_PS-CH_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-19C1_PS-CH_Current-Mon')=(16385,65535,65535),rgb('SI-20C1_PS-CH_Current-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	TextBox/C/N=text0/A=MC/X=8.00/Y=3.59 "Corretoras Horizontais - C1"
EndMacro

Function SI_CH_C1()
	Execute "WSI_CH_C1()"
End

Window WSI_CH_M2() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(8.25,42.5,900,500) 'SI-01M2_PS-CH_Current-Mon' vs 'SI-01M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-02M2_PS-CH_Current-Mon' vs 'SI-02M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-03M2_PS-CH_Current-Mon' vs 'SI-03M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-04M2_PS-CH_Current-Mon' vs 'SI-04M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-05M2_PS-CH_Current-Mon' vs 'SI-05M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-06M2_PS-CH_Current-Mon' vs 'SI-06M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-07M2_PS-CH_Current-Mon' vs 'SI-07M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-08M2_PS-CH_Current-Mon' vs 'SI-08M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-09M2_PS-CH_Current-Mon' vs 'SI-09M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-10M2_PS-CH_Current-Mon' vs 'SI-10M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-11M2_PS-CH_Current-Mon' vs 'SI-11M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-12M2_PS-CH_Current-Mon' vs 'SI-12M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-13M2_PS-CH_Current-Mon' vs 'SI-13M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-14M2_PS-CH_Current-Mon' vs 'SI-14M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-15M2_PS-CH_Current-Mon' vs 'SI-15M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-16M2_PS-CH_Current-Mon' vs 'SI-16M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-17M2_PS-CH_Current-Mon' vs 'SI-17M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-18M2_PS-CH_Current-Mon' vs 'SI-18M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-19M2_PS-CH_Current-Mon' vs 'SI-19M2_PS-CH_Current-Mon_TS'
	AppendToGraph 'SI-20M2_PS-CH_Current-Mon' vs 'SI-20M2_PS-CH_Current-Mon_TS'
	ModifyGraph rgb('SI-01M2_PS-CH_Current-Mon')=(0,0,0),rgb('SI-02M2_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03M2_PS-CH_Current-Mon')=(2,39321,1),rgb('SI-04M2_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05M2_PS-CH_Current-Mon')=(39321,1,31457),rgb('SI-06M2_PS-CH_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-07M2_PS-CH_Current-Mon')=(65535,32768,32768),rgb('SI-08M2_PS-CH_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-09M2_PS-CH_Current-Mon')=(16385,65535,65535),rgb('SI-10M2_PS-CH_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-11M2_PS-CH_Current-Mon')=(0,0,0),rgb('SI-12M2_PS-CH_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13M2_PS-CH_Current-Mon')=(2,39321,1),rgb('SI-14M2_PS-CH_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15M2_PS-CH_Current-Mon')=(39321,1,31457),rgb('SI-16M2_PS-CH_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-17M2_PS-CH_Current-Mon')=(65535,32768,32768),rgb('SI-18M2_PS-CH_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-19M2_PS-CH_Current-Mon')=(16385,65535,65535),rgb('SI-20M2_PS-CH_Current-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	TextBox/C/N=text0/A=MC/X=31.77/Y=38.64 "Corretoras Horizontais - M2"
EndMacro

Function SI_CH_M2()
	Execute "WSI_CH_M2()"
End

Window WSI_CV_C4() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(35.25,41.75,429.75,250.25) 'SI-01C4_PS-CV_Current-Mon' vs 'SI-01C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-02C4_PS-CV_Current-Mon' vs 'SI-02C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-03C4_PS-CV_Current-Mon' vs 'SI-03C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-04C4_PS-CV_Current-Mon' vs 'SI-04C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-05C4_PS-CV_Current-Mon' vs 'SI-05C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-06C4_PS-CV_Current-Mon' vs 'SI-06C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-07C4_PS-CV_Current-Mon' vs 'SI-07C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-08C4_PS-CV_Current-Mon' vs 'SI-08C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-09C4_PS-CV_Current-Mon' vs 'SI-09C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-10C4_PS-CV_Current-Mon' vs 'SI-10C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-11C4_PS-CV_Current-Mon' vs 'SI-11C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-12C4_PS-CV_Current-Mon' vs 'SI-12C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-13C4_PS-CV_Current-Mon' vs 'SI-13C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-14C4_PS-CV_Current-Mon' vs 'SI-14C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-15C4_PS-CV_Current-Mon' vs 'SI-15C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-16C4_PS-CV_Current-Mon' vs 'SI-16C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-17C4_PS-CV_Current-Mon' vs 'SI-17C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-18C4_PS-CV_Current-Mon' vs 'SI-18C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-19C4_PS-CV_Current-Mon' vs 'SI-19C4_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-20C4_PS-CV_Current-Mon' vs 'SI-20C4_PS-CV_Current-Mon_TS'
	ModifyGraph rgb('SI-01C4_PS-CV_Current-Mon')=(0,0,0),rgb('SI-02C4_PS-CV_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03C4_PS-CV_Current-Mon')=(2,39321,1),rgb('SI-04C4_PS-CV_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05C4_PS-CV_Current-Mon')=(39321,1,31457),rgb('SI-06C4_PS-CV_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-07C4_PS-CV_Current-Mon')=(65535,32768,32768),rgb('SI-08C4_PS-CV_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-09C4_PS-CV_Current-Mon')=(16385,65535,65535),rgb('SI-10C4_PS-CV_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-11C4_PS-CV_Current-Mon')=(0,0,0),rgb('SI-12C4_PS-CV_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13C4_PS-CV_Current-Mon')=(2,39321,1),rgb('SI-14C4_PS-CV_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15C4_PS-CV_Current-Mon')=(39321,1,31457),rgb('SI-16C4_PS-CV_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-17C4_PS-CV_Current-Mon')=(65535,32768,32768),rgb('SI-18C4_PS-CV_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-19C4_PS-CV_Current-Mon')=(16385,65535,65535),rgb('SI-20C4_PS-CV_Current-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	TextBox/C/N=text0/A=MC "Corretoras Verticais - C4"
EndMacro

Function SI_CV_C4()
	Execute "WSI_CV_C4()"
End

Window WSI_CV_C1() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(35.25,41.75,429.75,250.25) 'SI-01C1_PS-CV_Current-Mon' vs 'SI-01C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-02C1_PS-CV_Current-Mon' vs 'SI-02C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-03C1_PS-CV_Current-Mon' vs 'SI-03C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-04C1_PS-CV_Current-Mon' vs 'SI-04C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-05C1_PS-CV_Current-Mon' vs 'SI-05C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-06C1_PS-CV_Current-Mon' vs 'SI-06C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-07C1_PS-CV_Current-Mon' vs 'SI-07C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-08C1_PS-CV_Current-Mon' vs 'SI-08C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-09C1_PS-CV_Current-Mon' vs 'SI-09C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-10C1_PS-CV_Current-Mon' vs 'SI-10C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-11C1_PS-CV_Current-Mon' vs 'SI-11C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-12C1_PS-CV_Current-Mon' vs 'SI-12C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-13C1_PS-CV_Current-Mon' vs 'SI-13C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-14C1_PS-CV_Current-Mon' vs 'SI-14C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-15C1_PS-CV_Current-Mon' vs 'SI-15C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-16C1_PS-CV_Current-Mon' vs 'SI-16C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-17C1_PS-CV_Current-Mon' vs 'SI-17C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-18C1_PS-CV_Current-Mon' vs 'SI-18C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-19C1_PS-CV_Current-Mon' vs 'SI-19C1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-20C1_PS-CV_Current-Mon' vs 'SI-20C1_PS-CV_Current-Mon_TS'
	ModifyGraph rgb('SI-01C1_PS-CV_Current-Mon')=(0,0,0),rgb('SI-02C1_PS-CV_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03C1_PS-CV_Current-Mon')=(2,39321,1),rgb('SI-04C1_PS-CV_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05C1_PS-CV_Current-Mon')=(39321,1,31457),rgb('SI-06C1_PS-CV_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-07C1_PS-CV_Current-Mon')=(65535,32768,32768),rgb('SI-08C1_PS-CV_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-09C1_PS-CV_Current-Mon')=(16385,65535,65535),rgb('SI-10C1_PS-CV_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-11C1_PS-CV_Current-Mon')=(0,0,0),rgb('SI-12C1_PS-CV_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13C1_PS-CV_Current-Mon')=(2,39321,1),rgb('SI-14C1_PS-CV_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15C1_PS-CV_Current-Mon')=(39321,1,31457),rgb('SI-16C1_PS-CV_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-17C1_PS-CV_Current-Mon')=(65535,32768,32768),rgb('SI-18C1_PS-CV_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-19C1_PS-CV_Current-Mon')=(16385,65535,65535),rgb('SI-20C1_PS-CV_Current-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	TextBox/C/N=text0/A=MC "Corretoras Verticais - C1"
EndMacro

Function SI_CV_C1()
	Execute "WSI_CV_C1()"
End

Window WSI_CV_M2() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(35.25,41.75,429.75,250.25) 'SI-01M2_PS-CV_Current-Mon' vs 'SI-01M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-02M2_PS-CV_Current-Mon' vs 'SI-02M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-03M2_PS-CV_Current-Mon' vs 'SI-03M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-04M2_PS-CV_Current-Mon' vs 'SI-04M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-05M2_PS-CV_Current-Mon' vs 'SI-05M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-06M2_PS-CV_Current-Mon' vs 'SI-06M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-07M2_PS-CV_Current-Mon' vs 'SI-07M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-08M2_PS-CV_Current-Mon' vs 'SI-08M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-09M2_PS-CV_Current-Mon' vs 'SI-09M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-10M2_PS-CV_Current-Mon' vs 'SI-10M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-11M2_PS-CV_Current-Mon' vs 'SI-11M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-12M2_PS-CV_Current-Mon' vs 'SI-12M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-13M2_PS-CV_Current-Mon' vs 'SI-13M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-14M2_PS-CV_Current-Mon' vs 'SI-14M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-15M2_PS-CV_Current-Mon' vs 'SI-15M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-16M2_PS-CV_Current-Mon' vs 'SI-16M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-17M2_PS-CV_Current-Mon' vs 'SI-17M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-18M2_PS-CV_Current-Mon' vs 'SI-18M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-19M2_PS-CV_Current-Mon' vs 'SI-19M2_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-20M2_PS-CV_Current-Mon' vs 'SI-20M2_PS-CV_Current-Mon_TS'
	ModifyGraph rgb('SI-01M2_PS-CV_Current-Mon')=(0,0,0),rgb('SI-02M2_PS-CV_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03M2_PS-CV_Current-Mon')=(2,39321,1),rgb('SI-04M2_PS-CV_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05M2_PS-CV_Current-Mon')=(39321,1,31457),rgb('SI-06M2_PS-CV_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-07M2_PS-CV_Current-Mon')=(65535,32768,32768),rgb('SI-08M2_PS-CV_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-09M2_PS-CV_Current-Mon')=(16385,65535,65535),rgb('SI-10M2_PS-CV_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-11M2_PS-CV_Current-Mon')=(0,0,0),rgb('SI-12M2_PS-CV_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13M2_PS-CV_Current-Mon')=(2,39321,1),rgb('SI-14M2_PS-CV_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15M2_PS-CV_Current-Mon')=(39321,1,31457),rgb('SI-16M2_PS-CV_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-17M2_PS-CV_Current-Mon')=(65535,32768,32768),rgb('SI-18M2_PS-CV_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-19M2_PS-CV_Current-Mon')=(16385,65535,65535),rgb('SI-20M2_PS-CV_Current-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	Legend/C/N=text0/J/A=MC/X=31.44/Y=38.97 "Corretoras Verticais - M2"
EndMacro

Function SI_CV_M2()
	Execute "WSI_CV_M2()"
End

Window WSI_CV_M1() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(35.25,41.75,429.75,250.25) 'SI-01M1_PS-CV_Current-Mon' vs 'SI-01M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-02M1_PS-CV_Current-Mon' vs 'SI-02M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-03M1_PS-CV_Current-Mon' vs 'SI-03M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-04M1_PS-CV_Current-Mon' vs 'SI-04M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-05M1_PS-CV_Current-Mon' vs 'SI-05M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-06M1_PS-CV_Current-Mon' vs 'SI-06M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-07M1_PS-CV_Current-Mon' vs 'SI-07M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-08M1_PS-CV_Current-Mon' vs 'SI-08M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-09M1_PS-CV_Current-Mon' vs 'SI-09M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-10M1_PS-CV_Current-Mon' vs 'SI-10M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-11M1_PS-CV_Current-Mon' vs 'SI-11M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-12M1_PS-CV_Current-Mon' vs 'SI-12M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-13M1_PS-CV_Current-Mon' vs 'SI-13M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-14M1_PS-CV_Current-Mon' vs 'SI-14M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-15M1_PS-CV_Current-Mon' vs 'SI-15M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-16M1_PS-CV_Current-Mon' vs 'SI-16M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-17M1_PS-CV_Current-Mon' vs 'SI-17M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-18M1_PS-CV_Current-Mon' vs 'SI-18M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-19M1_PS-CV_Current-Mon' vs 'SI-19M1_PS-CV_Current-Mon_TS'
	AppendToGraph 'SI-20M1_PS-CV_Current-Mon' vs 'SI-20M1_PS-CV_Current-Mon_TS'
	ModifyGraph rgb('SI-01M1_PS-CV_Current-Mon')=(0,0,0),rgb('SI-02M1_PS-CV_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-03M1_PS-CV_Current-Mon')=(2,39321,1),rgb('SI-04M1_PS-CV_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-05M1_PS-CV_Current-Mon')=(39321,1,31457),rgb('SI-06M1_PS-CV_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-07M1_PS-CV_Current-Mon')=(65535,32768,32768),rgb('SI-08M1_PS-CV_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-09M1_PS-CV_Current-Mon')=(16385,65535,65535),rgb('SI-10M1_PS-CV_Current-Mon')=(65535,32768,58981)
	ModifyGraph rgb('SI-11M1_PS-CV_Current-Mon')=(0,0,0),rgb('SI-12M1_PS-CV_Current-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-13M1_PS-CV_Current-Mon')=(2,39321,1),rgb('SI-14M1_PS-CV_Current-Mon')=(0,0,65535)
	ModifyGraph rgb('SI-15M1_PS-CV_Current-Mon')=(39321,1,31457),rgb('SI-16M1_PS-CV_Current-Mon')=(48059,48059,48059)
	ModifyGraph rgb('SI-17M1_PS-CV_Current-Mon')=(65535,32768,32768),rgb('SI-18M1_PS-CV_Current-Mon')=(0,65535,0)
	ModifyGraph rgb('SI-19M1_PS-CV_Current-Mon')=(16385,65535,65535),rgb('SI-20M1_PS-CV_Current-Mon')=(65535,32768,58981)
	ModifyGraph dateInfo(bottom)={0,0,0}
	Label left "Corrente (A)"
	TextBox/C/N=text0/A=MC/X=30.90/Y=40.51 "Corretoras Verticais - M1"
EndMacro

Function SI_CV_M1()
	Execute "WSI_CV_M1()"
End

Function SI_BPMx_M1()
	CreateBPMGraph("^SI-..M1:DI-BPM.*:PosX-Mon$", "Horizontal BPMs - M1 Sector Leg")
End

Function SI_BPMx_M2()
	CreateBPMGraph("^SI-..M2:DI-BPM.*:PosX-Mon$", "Horizontal BPMs - M2 Sector Leg")
End

Function SI_BPMx_C1_1()
	CreateBPMGraph("^SI-..C1:DI-BPM-1:PosX-Mon$", "Horizontal BPMs - C1-1 Sector Leg")
End

Function SI_BPMx_C1_2()
	CreateBPMGraph("^SI-..C1:DI-BPM-2:PosX-Mon$", "Horizontal BPMs - C1-2 Sector Leg")
End

Function SI_BPMx_C2()
	CreateBPMGraph("^SI-..C2:DI-BPM.*:PosX-Mon$", "Horizontal BPMs - C2 Sector Leg")
End

Function SI_BPMx_C3_1()
	CreateBPMGraph("^SI-..C3:DI-BPM-1:PosX-Mon$", "Horizontal BPMs - C3-1 Sector Leg")
End

Function SI_BPMx_C3_2()
	CreateBPMGraph("^SI-..C3:DI-BPM-2:PosX-Mon$", "Horizontal BPMs - C3-2 Sector Leg")
End

Function SI_BPMx_C4()
	CreateBPMGraph("^SI-..C4:DI-BPM.*:PosX-Mon$", "Horizontal BPMs - C4 Sector Leg")
End


Function SI_BPMy_M1()
	CreateBPMGraph("^SI-..M1:DI-BPM.*:PosY-Mon$", "Vertical BPMs - M1 Sector Leg")
End

Function SI_BPMy_M2()
	CreateBPMGraph("^SI-..M2:DI-BPM.*:PosY-Mon$", "Vertical BPMs - M2 Sector Leg")
End

Function SI_BPMy_C1_1()
	CreateBPMGraph("^SI-..C1:DI-BPM-1:PosY-Mon$", "Vertical BPMs - C1-1 Sector Leg")
End

Function SI_BPMy_C1_2()
	CreateBPMGraph("^SI-..C1:DI-BPM-2:PosY-Mon$", "Vertical BPMs - C1-2 Sector Leg")
End

Function SI_BPMy_C2()
	CreateBPMGraph("^SI-..C2:DI-BPM.*:PosY-Mon$", "Vertical BPMs - C2 Sector Leg")
End

Function SI_BPMy_C3_1()
	CreateBPMGraph("^SI-..C3:DI-BPM-1:PosY-Mon$", "Vertical BPMs - C3-1 Sector Leg")
End

Function SI_BPMy_C3_2()
	CreateBPMGraph("^SI-..C3:DI-BPM-2:PosY-Mon$", "Vertical BPMs - C3-2 Sector Leg")
End

Function SI_BPMy_C4()
	CreateBPMGraph("^SI-..C4:DI-BPM.*:PosY-Mon$", "Vertical BPMs - C4 Sector Leg")
End


Window WSI_PU() : Graph
	PauseUpdate; Silent 1		// building window...
	Display /W=(20.25,47,1015.5,569) 'SI-01SA_PU-InjNLKckr_Voltage-SP' vs 'SI-01SA_PU-InjNLKckr_Voltage-SP_TS'
	AppendToGraph 'SI-01SA_PU-InjNLKckr_Voltage-Mon' vs 'SI-01SA_PU-InjNLKckr_Voltage-Mon_TS'
	AppendToGraph/R 'SI-01SA_PU-InjDpKckr_Voltage-SP' vs 'SI-01SA_PU-InjDpKckr_Voltage-SP_TS'
	AppendToGraph/R 'SI-01SA_PU-InjDpKckr_Voltage-Mon' vs 'SI-01SA_PU-InjDpKckr_Voltage-Mon_TS'
	ModifyGraph lSize=2
	ModifyGraph rgb('SI-01SA_PU-InjNLKckr_Voltage-SP')=(0,0,0),rgb('SI-01SA_PU-InjNLKckr_Voltage-Mon')=(65535,16385,16385)
	ModifyGraph rgb('SI-01SA_PU-InjDpKckr_Voltage-SP')=(2,39321,1),rgb('SI-01SA_PU-InjDpKckr_Voltage-Mon')=(0,0,65535)
	ModifyGraph axisEnab(left)={0,0.49}
	ModifyGraph axisEnab(right)={0.51,1}
	ModifyGraph dateInfo(bottom)={0,0,0}
	Cursor/P A 'SI-01SA_PU-InjNLKckr_Voltage-Mon' 33
	ShowInfo
	Legend/C/N=text0/J/A=MC/X=33.95/Y=-18.66 "\\s('SI-01SA_PU-InjNLKckr_Voltage-SP') 'SI-01SA_PU-InjNLKckr_Voltage-SP'"
	AppendText "\\s('SI-01SA_PU-InjNLKckr_Voltage-Mon') 'SI-01SA_PU-InjNLKckr_Voltage-Mon'"
	TextBox/C/N=text1/A=MC/X=-33.95/Y=38.70 "\\s('SI-01SA_PU-InjDpKckr_Voltage-SP') 'SI-01SA_PU-InjDpKckr_Voltage-SP'"
	AppendText "\n\\s('SI-01SA_PU-InjDpKckr_Voltage-Mon') 'SI-01SA_PU-InjDpKckr_Voltage-Mon'"
EndMacro

Function SI_PU()
	Execute "WSI_PU()"
End

//Código abaixo não utilizado
Function SI_BPMs()
//C1 X e Y ==========================================================================
//Execute "Display/N=C1X 'SI-01C1_DI-BPM-1_PosX-Mon' vs 'SI-01C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-01C1_DI-BPM-2_PosX-Mon' vs 'SI-01C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-02C1_DI-BPM-1_PosX-Mon' vs 'SI-02C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-02C1_DI-BPM-2_PosX-Mon' vs 'SI-02C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-03C1_DI-BPM-1_PosX-Mon' vs 'SI-03C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-03C1_DI-BPM-2_PosX-Mon' vs 'SI-03C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-04C1_DI-BPM-1_PosX-Mon' vs 'SI-04C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-04C1_DI-BPM-2_PosX-Mon' vs 'SI-04C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-05C1_DI-BPM-1_PosX-Mon' vs 'SI-05C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-05C1_DI-BPM-2_PosX-Mon' vs 'SI-05C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-06C1_DI-BPM-1_PosX-Mon' vs 'SI-06C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-06C1_DI-BPM-2_PosX-Mon' vs 'SI-06C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-07C1_DI-BPM-1_PosX-Mon' vs 'SI-07C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-07C1_DI-BPM-2_PosX-Mon' vs 'SI-07C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-08C1_DI-BPM-1_PosX-Mon' vs 'SI-08C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-08C1_DI-BPM-2_PosX-Mon' vs 'SI-08C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-09C1_DI-BPM-1_PosX-Mon' vs 'SI-09C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-09C1_DI-BPM-2_PosX-Mon' vs 'SI-09C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-10C1_DI-BPM-1_PosX-Mon' vs 'SI-10C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-10C1_DI-BPM-2_PosX-Mon' vs 'SI-10C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-11C1_DI-BPM-1_PosX-Mon' vs 'SI-11C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-11C1_DI-BPM-2_PosX-Mon' vs 'SI-11C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-12C1_DI-BPM-1_PosX-Mon' vs 'SI-12C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-12C1_DI-BPM-2_PosX-Mon' vs 'SI-12C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-13C1_DI-BPM-1_PosX-Mon' vs 'SI-13C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-13C1_DI-BPM-2_PosX-Mon' vs 'SI-13C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-14C1_DI-BPM-1_PosX-Mon' vs 'SI-14C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-14C1_DI-BPM-2_PosX-Mon' vs 'SI-14C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-15C1_DI-BPM-1_PosX-Mon' vs 'SI-15C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-15C1_DI-BPM-2_PosX-Mon' vs 'SI-15C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-16C1_DI-BPM-1_PosX-Mon' vs 'SI-16C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-16C1_DI-BPM-2_PosX-Mon' vs 'SI-16C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-17C1_DI-BPM-1_PosX-Mon' vs 'SI-17C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-17C1_DI-BPM-2_PosX-Mon' vs 'SI-17C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-18C1_DI-BPM-1_PosX-Mon' vs 'SI-18C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-18C1_DI-BPM-2_PosX-Mon' vs 'SI-18C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-19C1_DI-BPM-1_PosX-Mon' vs 'SI-19C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-19C1_DI-BPM-2_PosX-Mon' vs 'SI-19C1_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-20C1_DI-BPM-1_PosX-Mon' vs 'SI-20C1_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-20C1_DI-BPM-2_PosX-Mon' vs 'SI-20C1_DI-BPM-2_PosX-Mon_TS'"
//Legend/C/N=text0/J/X=0/Y=0 "Horizontal BPMs - C1 Sector Leg"
//CommonColorsButtonProc("aux")
CreateGraph("^SI-..C1:DI-BPM-.:PosX-Mon$", "Horizontal BPMs - C1 Sector Leg")

Execute "Display/N=C1Y 'SI-01C1_DI-BPM-1_PosY-Mon' vs 'SI-01C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-01C1_DI-BPM-2_PosY-Mon' vs 'SI-01C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-02C1_DI-BPM-1_PosY-Mon' vs 'SI-02C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-02C1_DI-BPM-2_PosY-Mon' vs 'SI-02C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-03C1_DI-BPM-1_PosY-Mon' vs 'SI-03C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-03C1_DI-BPM-2_PosY-Mon' vs 'SI-03C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-04C1_DI-BPM-1_PosY-Mon' vs 'SI-04C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-04C1_DI-BPM-2_PosY-Mon' vs 'SI-04C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-05C1_DI-BPM-1_PosY-Mon' vs 'SI-05C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-05C1_DI-BPM-2_PosY-Mon' vs 'SI-05C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-06C1_DI-BPM-1_PosY-Mon' vs 'SI-06C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-06C1_DI-BPM-2_PosY-Mon' vs 'SI-06C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-07C1_DI-BPM-1_PosY-Mon' vs 'SI-07C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-07C1_DI-BPM-2_PosY-Mon' vs 'SI-07C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-08C1_DI-BPM-1_PosY-Mon' vs 'SI-08C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-08C1_DI-BPM-2_PosY-Mon' vs 'SI-08C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-09C1_DI-BPM-1_PosY-Mon' vs 'SI-09C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-09C1_DI-BPM-2_PosY-Mon' vs 'SI-09C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-10C1_DI-BPM-1_PosY-Mon' vs 'SI-10C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-10C1_DI-BPM-2_PosY-Mon' vs 'SI-10C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-11C1_DI-BPM-1_PosY-Mon' vs 'SI-11C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-11C1_DI-BPM-2_PosY-Mon' vs 'SI-11C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-12C1_DI-BPM-1_PosY-Mon' vs 'SI-12C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-12C1_DI-BPM-2_PosY-Mon' vs 'SI-12C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-13C1_DI-BPM-1_PosY-Mon' vs 'SI-13C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-13C1_DI-BPM-2_PosY-Mon' vs 'SI-13C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-14C1_DI-BPM-1_PosY-Mon' vs 'SI-14C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-14C1_DI-BPM-2_PosY-Mon' vs 'SI-14C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-15C1_DI-BPM-1_PosY-Mon' vs 'SI-15C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-15C1_DI-BPM-2_PosY-Mon' vs 'SI-15C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-16C1_DI-BPM-1_PosY-Mon' vs 'SI-16C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-16C1_DI-BPM-2_PosY-Mon' vs 'SI-16C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-17C1_DI-BPM-1_PosY-Mon' vs 'SI-17C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-17C1_DI-BPM-2_PosY-Mon' vs 'SI-17C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-18C1_DI-BPM-1_PosY-Mon' vs 'SI-18C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-18C1_DI-BPM-2_PosY-Mon' vs 'SI-18C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-19C1_DI-BPM-1_PosY-Mon' vs 'SI-19C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-19C1_DI-BPM-2_PosY-Mon' vs 'SI-19C1_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-20C1_DI-BPM-1_PosY-Mon' vs 'SI-20C1_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-20C1_DI-BPM-2_PosY-Mon' vs 'SI-20C1_DI-BPM-2_PosY-Mon_TS'"
Legend/C/N=text0/J/X=0/Y=0 "Vertical BPMs - C1 Sector Leg"
CommonColorsButtonProc("aux")


//C2 X e Y ==========================================================================
Execute "Display/N=C2X 'SI-01C2_DI-BPM_PosX-Mon' vs 'SI-01C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-02C2_DI-BPM_PosX-Mon' vs 'SI-02C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-03C2_DI-BPM_PosX-Mon' vs 'SI-03C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-04C2_DI-BPM_PosX-Mon' vs 'SI-04C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-05C2_DI-BPM_PosX-Mon' vs 'SI-05C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-06C2_DI-BPM_PosX-Mon' vs 'SI-06C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-07C2_DI-BPM_PosX-Mon' vs 'SI-07C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-08C2_DI-BPM_PosX-Mon' vs 'SI-08C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-09C2_DI-BPM_PosX-Mon' vs 'SI-09C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-10C2_DI-BPM_PosX-Mon' vs 'SI-10C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-11C2_DI-BPM_PosX-Mon' vs 'SI-11C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-12C2_DI-BPM_PosX-Mon' vs 'SI-12C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-13C2_DI-BPM_PosX-Mon' vs 'SI-13C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-14C2_DI-BPM_PosX-Mon' vs 'SI-14C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-15C2_DI-BPM_PosX-Mon' vs 'SI-15C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-16C2_DI-BPM_PosX-Mon' vs 'SI-16C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-17C2_DI-BPM_PosX-Mon' vs 'SI-17C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-18C2_DI-BPM_PosX-Mon' vs 'SI-18C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-19C2_DI-BPM_PosX-Mon' vs 'SI-19C2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-20C2_DI-BPM_PosX-Mon' vs 'SI-20C2_DI-BPM_PosX-Mon_TS'"
Legend/C/N=text0/J/X=0/Y=0 "Horizontal BPMs - C2 Sector Leg"
CommonColorsButtonProc("aux")

Execute "Display/N=C2Y 'SI-01C2_DI-BPM_PosY-Mon' vs 'SI-01C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-02C2_DI-BPM_PosY-Mon' vs 'SI-02C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-03C2_DI-BPM_PosY-Mon' vs 'SI-03C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-04C2_DI-BPM_PosY-Mon' vs 'SI-04C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-05C2_DI-BPM_PosY-Mon' vs 'SI-05C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-06C2_DI-BPM_PosY-Mon' vs 'SI-06C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-07C2_DI-BPM_PosY-Mon' vs 'SI-07C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-08C2_DI-BPM_PosY-Mon' vs 'SI-08C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-09C2_DI-BPM_PosY-Mon' vs 'SI-09C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-10C2_DI-BPM_PosY-Mon' vs 'SI-10C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-11C2_DI-BPM_PosY-Mon' vs 'SI-11C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-12C2_DI-BPM_PosY-Mon' vs 'SI-12C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-13C2_DI-BPM_PosY-Mon' vs 'SI-13C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-14C2_DI-BPM_PosY-Mon' vs 'SI-14C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-15C2_DI-BPM_PosY-Mon' vs 'SI-15C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-16C2_DI-BPM_PosY-Mon' vs 'SI-16C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-17C2_DI-BPM_PosY-Mon' vs 'SI-17C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-18C2_DI-BPM_PosY-Mon' vs 'SI-18C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-19C2_DI-BPM_PosY-Mon' vs 'SI-19C2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-20C2_DI-BPM_PosY-Mon' vs 'SI-20C2_DI-BPM_PosY-Mon_TS'"
Legend/C/N=text0/J/X=0/Y=0 "Vertical BPMs - C2 Sector Leg"
CommonColorsButtonProc("aux")

//C3 X e Y ==========================================================================
//Execute "Display/N=C3X 'SI-01C3_DI-BPM-1_PosX-Mon' vs 'SI-01C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-01C3_DI-BPM-2_PosX-Mon' vs 'SI-01C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-02C3_DI-BPM-1_PosX-Mon' vs 'SI-02C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-02C3_DI-BPM-2_PosX-Mon' vs 'SI-02C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-03C3_DI-BPM-1_PosX-Mon' vs 'SI-03C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-03C3_DI-BPM-2_PosX-Mon' vs 'SI-03C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-04C3_DI-BPM-1_PosX-Mon' vs 'SI-04C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-04C3_DI-BPM-2_PosX-Mon' vs 'SI-04C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-05C3_DI-BPM-1_PosX-Mon' vs 'SI-05C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-05C3_DI-BPM-2_PosX-Mon' vs 'SI-05C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-06C3_DI-BPM-1_PosX-Mon' vs 'SI-06C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-06C3_DI-BPM-2_PosX-Mon' vs 'SI-06C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-07C3_DI-BPM-1_PosX-Mon' vs 'SI-07C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-07C3_DI-BPM-2_PosX-Mon' vs 'SI-07C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-08C3_DI-BPM-1_PosX-Mon' vs 'SI-08C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-08C3_DI-BPM-2_PosX-Mon' vs 'SI-08C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-09C3_DI-BPM-1_PosX-Mon' vs 'SI-09C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-09C3_DI-BPM-2_PosX-Mon' vs 'SI-09C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-10C3_DI-BPM-1_PosX-Mon' vs 'SI-10C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-10C3_DI-BPM-2_PosX-Mon' vs 'SI-10C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-11C3_DI-BPM-1_PosX-Mon' vs 'SI-11C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-11C3_DI-BPM-2_PosX-Mon' vs 'SI-11C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-12C3_DI-BPM-1_PosX-Mon' vs 'SI-12C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-12C3_DI-BPM-2_PosX-Mon' vs 'SI-12C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-13C3_DI-BPM-1_PosX-Mon' vs 'SI-13C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-13C3_DI-BPM-2_PosX-Mon' vs 'SI-13C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-14C3_DI-BPM-1_PosX-Mon' vs 'SI-14C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-14C3_DI-BPM-2_PosX-Mon' vs 'SI-14C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-15C3_DI-BPM-1_PosX-Mon' vs 'SI-15C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-15C3_DI-BPM-2_PosX-Mon' vs 'SI-15C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-16C3_DI-BPM-1_PosX-Mon' vs 'SI-16C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-16C3_DI-BPM-2_PosX-Mon' vs 'SI-16C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-17C3_DI-BPM-1_PosX-Mon' vs 'SI-17C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-17C3_DI-BPM-2_PosX-Mon' vs 'SI-17C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-18C3_DI-BPM-1_PosX-Mon' vs 'SI-18C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-18C3_DI-BPM-2_PosX-Mon' vs 'SI-18C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-19C3_DI-BPM-1_PosX-Mon' vs 'SI-19C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-19C3_DI-BPM-2_PosX-Mon' vs 'SI-19C3_DI-BPM-2_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-20C3_DI-BPM-1_PosX-Mon' vs 'SI-20C3_DI-BPM-1_PosX-Mon_TS'"
//Execute "AppendToGraph 'SI-20C3_DI-BPM-2_PosX-Mon' vs 'SI-20C3_DI-BPM-2_PosX-Mon_TS'"
//Legend/C/N=text0/J/X=0/Y=0 "Horizontal BPMs - C3 Sector Leg"
//CommonColorsButtonProc("aux")
CreateGraph("SI-..C3:DI-BPM-2:PosX-Mon", "Horizontal BPMs - C3 Sector Leg")

Execute "Display/N=C3Y 'SI-01C3_DI-BPM-1_PosY-Mon' vs 'SI-01C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-01C3_DI-BPM-2_PosY-Mon' vs 'SI-01C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-02C3_DI-BPM-1_PosY-Mon' vs 'SI-02C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-02C3_DI-BPM-2_PosY-Mon' vs 'SI-02C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-03C3_DI-BPM-1_PosY-Mon' vs 'SI-03C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-03C3_DI-BPM-2_PosY-Mon' vs 'SI-03C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-04C3_DI-BPM-1_PosY-Mon' vs 'SI-04C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-04C3_DI-BPM-2_PosY-Mon' vs 'SI-04C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-05C3_DI-BPM-1_PosY-Mon' vs 'SI-05C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-05C3_DI-BPM-2_PosY-Mon' vs 'SI-05C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-06C3_DI-BPM-1_PosY-Mon' vs 'SI-06C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-06C3_DI-BPM-2_PosY-Mon' vs 'SI-06C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-07C3_DI-BPM-1_PosY-Mon' vs 'SI-07C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-07C3_DI-BPM-2_PosY-Mon' vs 'SI-07C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-08C3_DI-BPM-1_PosY-Mon' vs 'SI-08C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-08C3_DI-BPM-2_PosY-Mon' vs 'SI-08C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-09C3_DI-BPM-1_PosY-Mon' vs 'SI-09C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-09C3_DI-BPM-2_PosY-Mon' vs 'SI-09C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-10C3_DI-BPM-1_PosY-Mon' vs 'SI-10C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-10C3_DI-BPM-2_PosY-Mon' vs 'SI-10C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-11C3_DI-BPM-1_PosY-Mon' vs 'SI-11C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-11C3_DI-BPM-2_PosY-Mon' vs 'SI-11C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-12C3_DI-BPM-1_PosY-Mon' vs 'SI-12C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-12C3_DI-BPM-2_PosY-Mon' vs 'SI-12C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-13C3_DI-BPM-1_PosY-Mon' vs 'SI-13C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-13C3_DI-BPM-2_PosY-Mon' vs 'SI-13C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-14C3_DI-BPM-1_PosY-Mon' vs 'SI-14C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-14C3_DI-BPM-2_PosY-Mon' vs 'SI-14C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-15C3_DI-BPM-1_PosY-Mon' vs 'SI-15C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-15C3_DI-BPM-2_PosY-Mon' vs 'SI-15C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-16C3_DI-BPM-1_PosY-Mon' vs 'SI-16C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-16C3_DI-BPM-2_PosY-Mon' vs 'SI-16C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-17C3_DI-BPM-1_PosY-Mon' vs 'SI-17C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-17C3_DI-BPM-2_PosY-Mon' vs 'SI-17C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-18C3_DI-BPM-1_PosY-Mon' vs 'SI-18C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-18C3_DI-BPM-2_PosY-Mon' vs 'SI-18C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-19C3_DI-BPM-1_PosY-Mon' vs 'SI-19C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-19C3_DI-BPM-2_PosY-Mon' vs 'SI-19C3_DI-BPM-2_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-20C3_DI-BPM-1_PosY-Mon' vs 'SI-20C3_DI-BPM-1_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-20C3_DI-BPM-2_PosY-Mon' vs 'SI-20C3_DI-BPM-2_PosY-Mon_TS'"
Legend/C/N=text0/J/X=0/Y=0 "Vertical BPMs - C3 Sector Leg"
CommonColorsButtonProc("aux")

//C4 X e Y ==========================================================================
Execute "Display/N=C4X 'SI-01C4_DI-BPM_PosX-Mon' vs 'SI-01C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-02C4_DI-BPM_PosX-Mon' vs 'SI-02C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-03C4_DI-BPM_PosX-Mon' vs 'SI-03C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-04C4_DI-BPM_PosX-Mon' vs 'SI-04C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-05C4_DI-BPM_PosX-Mon' vs 'SI-05C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-06C4_DI-BPM_PosX-Mon' vs 'SI-06C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-07C4_DI-BPM_PosX-Mon' vs 'SI-07C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-08C4_DI-BPM_PosX-Mon' vs 'SI-08C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-09C4_DI-BPM_PosX-Mon' vs 'SI-09C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-10C4_DI-BPM_PosX-Mon' vs 'SI-10C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-11C4_DI-BPM_PosX-Mon' vs 'SI-11C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-12C4_DI-BPM_PosX-Mon' vs 'SI-12C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-13C4_DI-BPM_PosX-Mon' vs 'SI-13C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-14C4_DI-BPM_PosX-Mon' vs 'SI-14C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-15C4_DI-BPM_PosX-Mon' vs 'SI-15C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-16C4_DI-BPM_PosX-Mon' vs 'SI-16C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-17C4_DI-BPM_PosX-Mon' vs 'SI-17C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-18C4_DI-BPM_PosX-Mon' vs 'SI-18C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-19C4_DI-BPM_PosX-Mon' vs 'SI-19C4_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-20C4_DI-BPM_PosX-Mon' vs 'SI-20C4_DI-BPM_PosX-Mon_TS'"
Legend/C/N=text0/J/X=0/Y=0 "Horizontal BPMs - C4 Sector Leg"
CommonColorsButtonProc("aux")

Execute "Display/N=C4Y 'SI-01C4_DI-BPM_PosY-Mon' vs 'SI-01C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-02C4_DI-BPM_PosY-Mon' vs 'SI-02C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-03C4_DI-BPM_PosY-Mon' vs 'SI-03C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-04C4_DI-BPM_PosY-Mon' vs 'SI-04C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-05C4_DI-BPM_PosY-Mon' vs 'SI-05C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-06C4_DI-BPM_PosY-Mon' vs 'SI-06C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-07C4_DI-BPM_PosY-Mon' vs 'SI-07C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-08C4_DI-BPM_PosY-Mon' vs 'SI-08C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-09C4_DI-BPM_PosY-Mon' vs 'SI-09C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-10C4_DI-BPM_PosY-Mon' vs 'SI-10C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-11C4_DI-BPM_PosY-Mon' vs 'SI-11C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-12C4_DI-BPM_PosY-Mon' vs 'SI-12C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-13C4_DI-BPM_PosY-Mon' vs 'SI-13C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-14C4_DI-BPM_PosY-Mon' vs 'SI-14C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-15C4_DI-BPM_PosY-Mon' vs 'SI-15C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-16C4_DI-BPM_PosY-Mon' vs 'SI-16C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-17C4_DI-BPM_PosY-Mon' vs 'SI-17C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-18C4_DI-BPM_PosY-Mon' vs 'SI-18C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-19C4_DI-BPM_PosY-Mon' vs 'SI-19C4_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-20C4_DI-BPM_PosY-Mon' vs 'SI-20C4_DI-BPM_PosY-Mon_TS'"
Legend/C/N=text0/J/X=0/Y=0 "Vertical BPMs - C4 Sector Leg"
CommonColorsButtonProc("aux")

//M1 X e Y ==========================================================================
Execute "Display/N=M1X 'SI-01M1_DI-BPM_PosX-Mon' vs 'SI-01M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-02M1_DI-BPM_PosX-Mon' vs 'SI-02M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-03M1_DI-BPM_PosX-Mon' vs 'SI-03M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-04M1_DI-BPM_PosX-Mon' vs 'SI-04M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-05M1_DI-BPM_PosX-Mon' vs 'SI-05M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-06M1_DI-BPM_PosX-Mon' vs 'SI-06M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-07M1_DI-BPM_PosX-Mon' vs 'SI-07M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-08M1_DI-BPM_PosX-Mon' vs 'SI-08M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-09M1_DI-BPM_PosX-Mon' vs 'SI-09M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-10M1_DI-BPM_PosX-Mon' vs 'SI-10M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-11M1_DI-BPM_PosX-Mon' vs 'SI-11M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-12M1_DI-BPM_PosX-Mon' vs 'SI-12M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-13M1_DI-BPM_PosX-Mon' vs 'SI-13M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-14M1_DI-BPM_PosX-Mon' vs 'SI-14M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-15M1_DI-BPM_PosX-Mon' vs 'SI-15M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-16M1_DI-BPM_PosX-Mon' vs 'SI-16M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-17M1_DI-BPM_PosX-Mon' vs 'SI-17M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-18M1_DI-BPM_PosX-Mon' vs 'SI-18M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-19M1_DI-BPM_PosX-Mon' vs 'SI-19M1_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-20M1_DI-BPM_PosX-Mon' vs 'SI-20M1_DI-BPM_PosX-Mon_TS'"
Legend/C/N=text0/J/X=0/Y=0 "Horizontal BPMs - M1 Sector Leg"
CommonColorsButtonProc("aux")

Execute "Display/N=M1Y 'SI-01M1_DI-BPM_PosY-Mon' vs 'SI-01M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-02M1_DI-BPM_PosY-Mon' vs 'SI-02M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-03M1_DI-BPM_PosY-Mon' vs 'SI-03M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-04M1_DI-BPM_PosY-Mon' vs 'SI-04M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-05M1_DI-BPM_PosY-Mon' vs 'SI-05M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-06M1_DI-BPM_PosY-Mon' vs 'SI-06M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-07M1_DI-BPM_PosY-Mon' vs 'SI-07M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-08M1_DI-BPM_PosY-Mon' vs 'SI-08M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-09M1_DI-BPM_PosY-Mon' vs 'SI-09M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-10M1_DI-BPM_PosY-Mon' vs 'SI-10M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-11M1_DI-BPM_PosY-Mon' vs 'SI-11M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-12M1_DI-BPM_PosY-Mon' vs 'SI-12M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-13M1_DI-BPM_PosY-Mon' vs 'SI-13M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-14M1_DI-BPM_PosY-Mon' vs 'SI-14M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-15M1_DI-BPM_PosY-Mon' vs 'SI-15M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-16M1_DI-BPM_PosY-Mon' vs 'SI-16M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-17M1_DI-BPM_PosY-Mon' vs 'SI-17M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-18M1_DI-BPM_PosY-Mon' vs 'SI-18M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-19M1_DI-BPM_PosY-Mon' vs 'SI-19M1_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-20M1_DI-BPM_PosY-Mon' vs 'SI-20M1_DI-BPM_PosY-Mon_TS'"
Legend/C/N=text0/J/X=0/Y=0 "Vertical BPMs - M1 Sector Leg"
CommonColorsButtonProc("aux")

//M2 X e Y ==========================================================================
Execute "Display/N=M2X 'SI-01M2_DI-BPM_PosX-Mon' vs 'SI-01M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-02M2_DI-BPM_PosX-Mon' vs 'SI-02M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-03M2_DI-BPM_PosX-Mon' vs 'SI-03M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-04M2_DI-BPM_PosX-Mon' vs 'SI-04M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-05M2_DI-BPM_PosX-Mon' vs 'SI-05M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-06M2_DI-BPM_PosX-Mon' vs 'SI-06M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-07M2_DI-BPM_PosX-Mon' vs 'SI-07M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-08M2_DI-BPM_PosX-Mon' vs 'SI-08M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-09M2_DI-BPM_PosX-Mon' vs 'SI-09M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-10M2_DI-BPM_PosX-Mon' vs 'SI-10M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-11M2_DI-BPM_PosX-Mon' vs 'SI-11M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-12M2_DI-BPM_PosX-Mon' vs 'SI-12M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-13M2_DI-BPM_PosX-Mon' vs 'SI-13M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-14M2_DI-BPM_PosX-Mon' vs 'SI-14M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-15M2_DI-BPM_PosX-Mon' vs 'SI-15M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-16M2_DI-BPM_PosX-Mon' vs 'SI-16M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-17M2_DI-BPM_PosX-Mon' vs 'SI-17M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-18M2_DI-BPM_PosX-Mon' vs 'SI-18M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-19M2_DI-BPM_PosX-Mon' vs 'SI-19M2_DI-BPM_PosX-Mon_TS'"
Execute "AppendToGraph 'SI-20M2_DI-BPM_PosX-Mon' vs 'SI-20M2_DI-BPM_PosX-Mon_TS'"
Legend/C/N=text0/J/X=0/Y=0 "Horizontal BPMs - M2 Sector Leg"
CommonColorsButtonProc("aux")

Execute "Display/N=M2Y 'SI-01M2_DI-BPM_PosY-Mon' vs 'SI-01M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-02M2_DI-BPM_PosY-Mon' vs 'SI-02M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-03M2_DI-BPM_PosY-Mon' vs 'SI-03M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-04M2_DI-BPM_PosY-Mon' vs 'SI-04M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-05M2_DI-BPM_PosY-Mon' vs 'SI-05M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-06M2_DI-BPM_PosY-Mon' vs 'SI-06M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-07M2_DI-BPM_PosY-Mon' vs 'SI-07M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-08M2_DI-BPM_PosY-Mon' vs 'SI-08M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-09M2_DI-BPM_PosY-Mon' vs 'SI-09M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-10M2_DI-BPM_PosY-Mon' vs 'SI-10M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-11M2_DI-BPM_PosY-Mon' vs 'SI-11M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-12M2_DI-BPM_PosY-Mon' vs 'SI-12M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-13M2_DI-BPM_PosY-Mon' vs 'SI-13M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-14M2_DI-BPM_PosY-Mon' vs 'SI-14M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-15M2_DI-BPM_PosY-Mon' vs 'SI-15M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-16M2_DI-BPM_PosY-Mon' vs 'SI-16M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-17M2_DI-BPM_PosY-Mon' vs 'SI-17M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-18M2_DI-BPM_PosY-Mon' vs 'SI-18M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-19M2_DI-BPM_PosY-Mon' vs 'SI-19M2_DI-BPM_PosY-Mon_TS'"
Execute "AppendToGraph 'SI-20M2_DI-BPM_PosY-Mon' vs 'SI-20M2_DI-BPM_PosY-Mon_TS'"
Legend/C/N=text0/J/X=0/Y=0 "Vertical BPMs - M2 Sector Leg"
CommonColorsButtonProc("aux")

Execute "TileWindows/A=(3,4)/O=1/W=(8,22,1433,590)"

End