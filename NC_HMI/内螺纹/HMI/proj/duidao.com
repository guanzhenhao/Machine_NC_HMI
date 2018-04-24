;;;;;;;;;;;;;;;;;;;自动对刀界面;;;;;;;;;;;;;;;;;;;;;;;;;
//M(Mask0/$85026/"blank.png"/)
	DEF VAR0=(R/-100,100//$85529,$85529,,$85043/WR2//"/NC/_N_NC_GD2_ACX/TOOL_SET[2]"/330,10,110/440,10,110/);对刀结果调整
	DEF VAR1=(R/-2000,2000//$85503,$85503,,$85043/WR2//"/NC/_N_NC_GD2_ACX/TOOL_SET[8]"/330,40,110/440,40,110/);内螺纹自动对刀测头Z轴方向起始位置
	DEF VAR2=(R/-2000,2000//$85513,$85513,,$85043/WR2//"/NC/_N_NC_GD2_ACX/TOOL_SET[9]"/330,70,110/440,70,110/);内螺纹自动对刀开关测量方式下，开关进入工件开始测量Z起始位置
	DEF VAR3=(R/0,359//$85504,$85504,,$85042/WR2//"/NC/_N_NC_GD2_ACX/TOOL_SET[10]"/330,100,110/440,100,110/);内螺纹测头自动对刀工件C方向合适角度
	DEF VAR4=(R/-500,500//$85527,$85527,,$85043/WR2//"/NC/_N_NC_GD2_ACX/TOOL_SET[7]"/330,130,110/440,130,110/);内螺纹测头/开关与砂轮距离(Z向)
	DEF VAR5=(R/-500,500//$85538,$85537,,$85043/WR2//"/NC/_N_NC_GD2_ACX/TOOL_SET[11]"/330,160,110/440,160,110/);接近开关在工件中心时X轴坐标
	DEF VAR6=(R/-500,500//$85540,$85539,,$85043/WR2//"/NC/_N_NC_GD2_ACX/TOOL_SET[12]"/330,190,110/440,190,110/);接近开关感应到信号时X轴坐标
	DEF SIGNAL=(I/*0=$85014,1=$85013//$85534,$85534,,/WR1//"/Plc/DB2700.DBX1.0"/110,10,40/150,10,50/);测头信号

;;按键定义
	HS1=($85015,ac7,se1)
	HS2=($85001,ac7,se1)
	HS3=($85003,ac7,se1)
	HS4=($85002,ac7,se1)
	HS5=($85010,ac7,se1)
	VS8=($85005,ac7,se1)
	PRESS(HS1)
		LM("Mask0","guancha.com",0);观察界面
	END_PRESS
	PRESS(HS2)
		LM("Mask0","moxue.com",0);磨削界面
	END_PRESS
	PRESS(HS3)
		LM("Mask0","xiuzheng.com",0);修整界面
	END_PRESS
	PRESS(HS4)
		LM("Mask0","gongyi.com",0);修整界面
	END_PRESS
	PRESS(HS5)
		LM("Mask0","duidao.com",0);修整界面
	END_PRESS
	PRESS(VS8)
		EXIT
	END_PRESS
//END
