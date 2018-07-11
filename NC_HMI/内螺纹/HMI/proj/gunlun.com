;;;;;;;;;;;;;;;;;;;滚轮界面;;;;;;;;;;;;;;;;;;;;;;;;;
//M(Mask0/$85025/"panel_5_1.png"/)
		DEF VAR0=(R/0,1000//$85319,$85319,,$85043/WR1//"/NC/_N_NC_GD2_ACX/DRESSER[1]"/0,0,0/0,0,0/7,4);新砂轮直径
	;;滚轮参数
		DEF VAR_GL1=(R///$85610,$85610,,$85043/WR2//"/NC/_N_NC_GD2_ACX/DRESSER[6]"/10,230,110/110,230,110/7,4);修整轮左侧圆弧半径
		DEF VAR_GL2=(R///$85611,$85611,,$85043/WR2//"/NC/_N_NC_GD2_ACX/DRESSER[7]"/10,250,110/110,250,110/7,4);修整轮右侧圆弧半径
		DEF VAR_GL3=(R///$85614,$85614,,$85043/WR2/"panel_2_12_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[29]"/10,270,110/110,270,110/7,4);修整轮左右圆弧圆心间距
		DEF VAR_GL4=(R///$85613,$85613,,$85043/WR2/"panel_2_13_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[5]"/10,290,110/110,290,110/7,4);左右滚轮高度差
		DEF VAR_GL5=(R/0,500//$85620,$85620,,$85043/WR2/"panel_2_5_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[9]"/10,310,110/110,310,110/7,4);修整轮直径
		DEF VAR_GL6=(R2///$85600,$85600,,$85044/WR1//"$R[297]"/10,330,110/110,330,110/7,4);修整轮转速
		DEF VAR_GL7=(R/0,60//$85621,$85621,,$85046/WR2/"panel_2_6_chs.png"/"/NC/_N_NC_GD2_ACX/DRESSER[10]"/10,350,110/110,350,110/7,4);修整轮线速度
	
	;;按键定义	
		HS1=($85001,ac7,se1)
		HS2=($85003,ac7,se1)
		HS3=($85002,ac7,se1)
		HS4=($85010,ac7,se1)
		VS1=($85015,ac7,se1)
		PRESS(HS1)
			LM("Mask0","moxue.com",0);磨削界面
		END_PRESS
		PRESS(HS2)
			LM("Mask0","xiuzheng.com",0);修整界面
		END_PRESS
		PRESS(HS3)
			LM("Mask0","gongyi.com",0);修整界面
		END_PRESS
		PRESS(HS4)
			LM("Mask0","duidao.com",0);修整界面
		END_PRESS
		PRESS(VS1)
			LM("Mask0","gunlun.com",0);修整界面
		END_PRESS

	SUB(UP1)
	;;计算新砂轮直径
		VAR0.VAL=2*ABS(VAR_GL0.VAL-VAR_GL1.VAL)
	;;修整轮转速计算
		VAR_GL5=VAR_GL4*60000/(PI*VAR_GL3);修整时砂轮转速计算
	END_SUB
				
//END