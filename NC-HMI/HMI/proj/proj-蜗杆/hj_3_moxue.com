;;;;;;;;;;;;;;;;;;;磨削界面,标准磨削蜗杆;;;;;;;;;;;;;;;;;;;;;;;;;
//M(Mask0/$85020/"blank.png"/)
	DEF X_IM=(R///$85118,$85118,,/WR1//"$AA_IM[X]"/10,10,20/30,10,60/3,4);X_IM
	DEF Z_IM=(R///$85119,$85119,,/WR1//"$AA_IM[Z]"/10,30,20/30,30,60/3,4);Z_IM
	DEF C_IM=(R///$85120,$85120,,/WR1//"$AA_IM[C]"/10,50,20/30,50,60/3,4);C_IM
	DEF X_DRF=(R///$85116,$85116,,/WR1//"$AC_DRF[X]"/120,10,50/180,10,60/3,4);DRF_X
	DEF Z_DRF=(R///$85117,$85117,,/WR1//"$AC_DRF[Z]"/120,30,50/180,30,60/3,4);DRF_Z
	;;基础参数
	DEF VAR_GRD0=(R/*-1=$85125,1=$85124//$85103,$85103,,/WR2/"panel_5_2_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[1]"/380,30,190/460,30,70/7,4);工件旋向
	DEF VAR_GRD1=(I///$85102,$85102,$85051,/WR2/"panel_5_3_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[2]"/380,50,190/460,50,70/7,4);工件头数
	DEF VAR_GRD2=(R5///$85173,$85173,,/WR2/"panel_5_4_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[3]"/380,70,150/460,70,70/7,4);蜗杆模数
	DEF VAR_GRD3=(R5///$85104,$85104,$85043,/WR1/"panel_5_4_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[5]"/380,90,190/460,90,70/3,4);蜗杆螺距
	DEF VAR_GRD4=(R///$85108,$85108,$85043,/WR2/"panel_5_5_chs.png"/"/NC/_N_NC_GD2_ACX/POSITION[10]"/380,110,190/460,110,70/7,4);工件左端
	DEF VAR_GRD5=(R///$85109,$85109,$85043,/WR2/"panel_5_6_chs.png"/"/NC/_N_NC_GD2_ACX/POSITION[11]"/380,130,190/460,130,70/7,4);工件右端
	DEF VAR_GRD6=(R///$85165,$85145,$85043,/WR2/"panel_5_7_chs.png"/"/NC/_N_NC_GD2_ACX/POSITION[14]"/380,150,150/460,150,70/7,4);对刀起始位置
	;;锥度
	DEF VAR_GRD7=(I/*0=$85014,1=$85013//$85159,$85159,,/WR2/"panel_5_8_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[14]"/380,230,80/415,230,30/);是否有锥度
	DEF VAR_GRD8=(R7/-1,1//$85160,,,/WR2/"panel_5_8_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[15]"/0,0,0/460,230,70/7,4);锥度值
	;;自动螺旋升角
	DEF VAR_GRD10=(I/*0=$85014,1=$85013//$85164,$85164,,/WR2/"panel_5_9_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[6]"/380,250,80/415,250,30/);螺旋升角自动计算
	DEF VAR_GRD11=(I/0,45//$85055,,,$85042/WR2/"panel_5_10_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[9]"/0,0,0/460,250,70/7,4);度
	DEF VAR_GRD12=(I/0,59//$85056,,,$85053/WR2/"panel_5_11_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[10]"/0,0,0/490,250,70/7,4);分
	DEF VAR_GRD13=(I/0,59//$85057,,,$85054/WR2/"panel_5_12_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[11]"/0,0,0/520,250,70/7,4);秒
	DEF VAR_GRD14=(R/0,400//$85107,$85107,,$85043,/WR4//"/NC/_N_NC_GD2_ACX/GRIND[21]"/380,270,190/460,270,120/7,4);分度圆直径
	;;工件装夹位
	DEF VAR_GRD15=(R///$85112,$85112,$85043,/WR2//"/NC/_N_NC_GD2_ACX/POSITION[3]"/380,170,190/460,170,70/7,4);装夹工件时X轴坐标
	DEF VAR_GRD16=(R///$85113,$85113,$85043,/WR2//"/NC/_N_NC_GD2_ACX/POSITION[4]"/380,190,190/460,190,70/7,4);装夹工件时Z轴坐标
	DEF VAR_GRD17=(R///$85114,$85114,$85055,/WR2//"/NC/_N_NC_GD2_ACX/POSITION[5]"/380,210,190/460,210,70/7,4);装夹工件时C轴角度
	;;其他参数
	DEF VAR0=(I/*0=$85166,1=$85167//,,,/WR2/"panel_5_0_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[12]"/380,10,190/460,10,70/7,4);加工模式
	DEF VAR1=(R3///$85176,$85176,$85055,/WR1//"/NC/_N_NC_GD2_ACX/TOOL_SET[1]"/25,310,205/120,310,70/3,4);头架初始角度
	DEF VAR2=(R3///$85169,$85169,$85043,/WR1//"/NC/_N_NC_GD2_ACX/POSITION[22]"/10,330,220/120,330,70/3,4);初始磨削接触位置
	DEF VAR3=(R3///$85158,$85158,$85043,/WR1//"/NC/_N_NC_GD2_ACX/POSITION[2]"/10,350,220/120,350,70/3,4);当前磨削接触位置
	DEF VAR4=(R3///$85126,$85126,$85043,/WR1//"/NC/_N_NC_GD2_ACX/POSITION[8]"/380,290,190/460,290,70/3,4);磨削基准
	DEF VAR5=(R3/-0.5,0.5//$85174,$85174,$85043,/WR2//"/NC/_N_NC_GD2_ACX/GRIND[20]"/380,310,190/460,310,70/7,4);中径调整
	DEF VAR6=(R3/-0.5,0.5//$85175,$85175,$85043,/WR2//"/NC/_N_NC_GD2_ACX/GRIND[13]"/380,330,190/460,330,70/7,4);偏刀调整	
	DEF VAR7=(R3/-0.5,0.5//$85105,$85105,$85043,/WR2//"/NC/_N_NC_GD2_ACX/GRIND[19]"/380,350,190/460,350,70/7,4);导程补偿
	DEF VAR8=(R/*0=$85127,1=$85128,4=$85131//$85101,$85101,,/WR2,ac1//"/NC/_N_NC_GD2_ACX/GRIND[16]"/0,0,0/350,10,100/7,4);公制轴向模数/英制轴向模数/公制法向模数/英值法向模数/公制螺距
	DEF VAR9=(R/*0=$85087,1=$85088//$85089,$85089,,/WR2/"panel_5_1_chs.png"/"/NC/_N_NC_GD2_ACX/TOOL_SET[6]"/0,0,0/260,10,70/7,4);是否首件对刀
	DEF VAR10=(R/*0=$85191,1=$85192/0/$85089,$85089,,/WR4//"/NC/_N_NC_GD2_ACX/GRIND[28]"/0,0,0/380,10,70/3,4);0=X向磨削/1=双齿面磨削
	DEF VAR11=(R/*0=$85149,1=$85150/0/$85089,$85089,,/WR4//"/NC/_N_NC_GD2_ACX/TOOL_SET[23]"/0,0,0/260,30,70/7,4);标准磨削时使用左齿面对刀参数	
	;;按键定义
	HS1=($85001,ac7,se3)
	HS2=($85003,ac7,se1)
	HS3=($85002,ac7,se1)
	HS4=($85010,ac7,se1)	
	VS8=($85005,ac7,se1)
	PRESS(HS2)
		LM("Mask0","hj_3_xiuzheng.com",0);修整界面
	END_PRESS
	PRESS(HS3)
		IF	VAR0.VAL==0
			LM("Mask0","hj_3_gongyi.com",0);批量工艺界面
		ELSE
			LM("Mask1","hj_3_gongyi.com",0);单件界面
		ENDIF
	END_PRESS
	PRESS(HS4)
		LM("Mask0","hj_3_duidao.com",0);修整界面
	END_PRESS
	PRESS(VS8)
		EXIT
	END_PRESS

	;;CHANGE事件
	CHANGE(VAR_GRD2)
		CALL("UP4")
	END_CHANGE
	CHANGE( VAR_GRD10)
		CALL("UP3")
	END_CHANGE
	CHANGE( VAR_GRD14)
		CALL("UP3")
	END_CHANGE
		END_CHANGE
	CHANGE( VAR8)
		CALL("UP1")
		CALL("UP4")
	END_CHANGE
	CHANGE(VAR_GRD1)
		CALL("UP3")
	END_CHANGE
	CHANGE(VAR_GRD3)
		CALL("UP3")
	END_CHANGE
	CHANGE(VAR_GRD0)
		CALL("UP3")
	END_CHANGE
	CHANGE(VAR_GRD14)
		CALL("UP3")
	END_CHANGE
	SUB(UP1)
		IF VAR8.VAL==4;螺距
			VAR_GRD2.WR=4
			VAR_GRD3.WR=2
		ELSE
			VAR_GRD2.WR=2
			VAR_GRD3.WR=1
		ENDIF
	END_SUB

	SUB(UP3);;螺旋升角
		IF VAR_GRD10.VAL==1
			VAR_GRD11.WR=1
			VAR_GRD12.WR=1
			VAR_GRD13.WR=1
			VAR_GRD14.WR=2
		ELSE
			VAR_GRD11.WR=2
			VAR_GRD12.WR=2
			VAR_GRD13.WR=2
			VAR_GRD14.WR=4
		ENDIF
		IF (VAR_GRD14.VAL>0)AND(VAR_GRD10.VAL==1)
			VAR_GRD11.VAL=SDEG(ATAN((VAR_GRD1.VAL*VAR_GRD3.VAL),(PI*VAR_GRD14.VAL)))
			VAR_GRD12.VAL=(SDEG(ATAN((VAR_GRD1.VAL*VAR_GRD3.VAL),(PI*VAR_GRD14.VAL)))-VAR_GRD11.VAL)*60
			VAR_GRD13.VAL=((SDEG(ATAN((VAR_GRD1.VAL*VAR_GRD3.VAL),(PI*VAR_GRD14.VAL)))-VAR_GRD11.VAL)*60-VAR_GRD12.VAL)*60
		ENDIF
	END_SUB

	SUB(UP4)
		IF VAR8.VAL==0;公制轴向模数
			VAR_GRD3.VAL=VAR_GRD2.VAL*PI;模数计算螺距
		ENDIF
		IF VAR8.VAL==1;英制轴向模数
			VAR_GRD3.VAL=25.4*VAR_GRD2.VAL*PI;模数计算螺距
		ENDIF
	END_SUB

//END
;;;;;;;;;;;;;;;;;;;磨削界面,双齿面单独磨削;;;;;;;;;;;;;;;;;;;;;;;;;
//M(Mask1/$85020/"blank.png"/)
	DEF X_IM=(R///$85118,$85118,,/WR1//"$AA_IM[X]"/10,10,20/30,10,60/3,4);X_IM
	DEF Z_IM=(R///$85119,$85119,,/WR1//"$AA_IM[Z]"/10,30,20/30,30,60/3,4);Z_IM
	DEF C_IM=(R///$85120,$85120,,/WR1//"$AA_IM[C]"/10,50,20/30,50,60/3,4);C_IM
	DEF X_DRF=(R///$85116,$85116,,/WR1//"$AC_DRF[X]"/120,10,50/180,10,60/3,4);DRF_X
	DEF Z_DRF=(R///$85117,$85117,,/WR1//"$AC_DRF[Z]"/120,30,50/180,30,60/3,4);DRF_Z
	;;基础参数
	DEF VAR_GRD0=(R/*-1=$85125,1=$85124//$85103,$85103,,/WR2/"panel_5_2_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[1]"/380,30,190/460,30,70/7,4);工件旋向
	DEF VAR_GRD1=(I///$85102,$85102,$85051,/WR2/"panel_5_3_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[2]"/380,50,190/460,50,70/7,4);工件头数
	;;双导程
	DEF VAR_GRD2_0=(R///$85187,$85187,,/WR2/"panel_5_4_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[3]"/380,70,150/460,70,70/7,4);左齿模数
	DEF VAR_GRD3_0=(R///$85188,$85188,$85043,/WR1/"panel_5_4_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[5]"/380,90,190/460,90,70/3,4);左齿螺距	
	DEF VAR_GRD2_1=(R///$85189,$85189,,/WR2/"panel_5_4_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[25]"/380,110,150/460,110,70/7,4);右齿模数
	DEF VAR_GRD3_1=(R///$85190,$85190,$85043,/WR1/"panel_5_4_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[27]"/380,130,190/460,130,70/3,4);右齿螺距

	DEF VAR_GRD4=(R///$85108,$85108,$85043,/WR2/"panel_5_5_chs.png"/"/NC/_N_NC_GD2_ACX/POSITION[10]"/380,155,190/460,155,70/7,4);工件左端
	DEF VAR_GRD5=(R///$85109,$85109,$85043,/WR2/"panel_5_6_chs.png"/"/NC/_N_NC_GD2_ACX/POSITION[11]"/380,175,190/460,175,70/7,4);工件右端
	DEF VAR_GRD6=(R///$85165,$85145,$85043,/WR2/"panel_5_7_chs.png"/"/NC/_N_NC_GD2_ACX/POSITION[14]"/380,195,150/460,195,70/7,4);对刀起始位置
	;;锥度
	DEF VAR_GRD7=(I/*0=$85014,1=$85013//$85159,$85159,,/WR2/"panel_5_8_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[14]"/40,220,80/75,220,30/);是否有锥度
	DEF VAR_GRD8=(R7/-1,1//$85160,,,/WR2/"panel_5_8_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[15]"/0,0,0/120,220,70/7,4);锥度值
	;;自动螺旋升角
	DEF VAR_GRD11=(I/0,45//$85055,$85164,,$85042/WR2/"panel_5_10_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[9]"/40,240,80/120,240,70/7,4);度
	DEF VAR_GRD12=(I/0,59//$85056,,,$85053/WR2/"panel_5_11_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[10]"/0,0,0/150,240,70/7,4);分
	DEF VAR_GRD13=(I/0,59//$85057,,,$85054/WR2/"panel_5_12_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[11]"/0,0,0/180,240,70/7,4);秒
	;;工件装夹位
	DEF VAR_GRD15=(R///$85112,$85112,$85043,/WR2//"/NC/_N_NC_GD2_ACX/POSITION[3]"/380,220,190/460,220,70/7,4);装夹工件时X轴坐标
	DEF VAR_GRD16=(R///$85113,$85113,$85043,/WR2//"/NC/_N_NC_GD2_ACX/POSITION[4]"/380,240,190/460,240,70/7,4);装夹工件时Z轴坐标
	DEF VAR_GRD17=(R///$85114,$85114,$85055,/WR2//"/NC/_N_NC_GD2_ACX/POSITION[5]"/380,260,190/460,260,70/7,4);装夹工件时C轴角度
	;;其他参数
	DEF VAR0=(I/*0=$85166,1=$85167//,,,/WR2/"panel_5_0_chs.png"/"/NC/_N_NC_GD2_ACX/GRIND[12]"/380,10,190/460,10,70/7,4);加工模式
	DEF VAR1=(R3///$85192,$85192,$85055,/WR1//"/NC/_N_NC_GD2_ACX/TOOL_SET[1]"/10,290,220/120,290,70/3,4);左齿面头架初始角度
	DEF VAR1_0=(R3///$85193,$85193,$85055,/WR1//"/NC/_N_NC_GD2_ACX/TOOL_SET[22]"/10,310,220/120,310,70/3,4);右齿面头架初始角度	
	DEF VAR2=(R3///$85169,$85169,$85043,/WR1//"/NC/_N_NC_GD2_ACX/POSITION[22]"/10,330,220/120,330,70/3,4);初始磨削接触位置
	DEF VAR3=(R3///$85158,$85158,$85043,/WR1//"/NC/_N_NC_GD2_ACX/POSITION[2]"/10,350,220/120,350,70/3,4);当前磨削接触位置
	DEF VAR4=(R3///$85126,$85126,$85043,/WR1//"/NC/_N_NC_GD2_ACX/POSITION[8]"/10,270,190/120,270,70/3,4);磨削基准
	DEF VAR5=(R3/-0.5,0.5//$85174,$85174,$85043,/WR2//"/NC/_N_NC_GD2_ACX/GRIND[20]"/380,290,190/460,290,70/7,4);中径调整
	DEF VAR6_0=(R3/-0.5,0.5//$85194,$85194,$85043,/WR2//"/NC/_N_NC_GD2_ACX/GRIND[13]"/380,310,180/460,310,70/7,4);左齿面偏刀调整
	DEF VAR6_1=(R3/-0.5,0.5//$85195,$85195,$85043,/WR2//"/NC/_N_NC_GD2_ACX/GRIND[32]"/380,330,190/460,330,70/7,4);右齿面偏刀调整	
	DEF VAR7=(R3/-0.5,0.5//$85105,$85105,$85043,/WR2//"/NC/_N_NC_GD2_ACX/GRIND[19]"/380,350,190/460,350,70/7,4);导程补偿
	DEF VAR8=(R/*0=$85127,1=$85128//$85101,$85101,,/WR2,ac1//"/NC/_N_NC_GD2_ACX/GRIND[16]"/0,0,0/350,10,100/7,4);公制轴向模数/英制轴向模数/公制法向模数/英值法向模数/公制螺距
	DEF VAR9=(R/*0=$85087,1=$85088//$85089,$85089,,/WR2/"panel_5_1_chs.png"/"/NC/_N_NC_GD2_ACX/TOOL_SET[6]"/0,0,0/260,10,70/7,4);是否首件对刀
	DEF VAR10=(R/*0=$85191,1=$85192/1/$85089,$85089,,/WR4//"/NC/_N_NC_GD2_ACX/GRIND[28]"/0,0,0/380,10,70/3,4);0=正常磨削/1=双齿面磨削
	DEF VAR11=(R/*0=$85149,1=$85150//$85089,$85089,,/WR2//"/NC/_N_NC_GD2_ACX/TOOL_SET[23]"/0,0,0/260,30,70/7,4);0=左齿面对刀/1=右齿面对刀	
	;;按键定义
	HS1=($85001,ac7,se3)
	HS2=($85003,ac7,se1)
	HS3=($85002,ac7,se1)
	HS4=($85010,ac7,se1)	
	VS8=($85005,ac7,se1)
	PRESS(HS2)
		LM("Mask0","hj_3_xiuzheng.com",0);修整界面
	END_PRESS
	PRESS(HS3)
		IF	VAR0.VAL==0
			LM("Mask2","hj_3_gongyi.com",0);批量工艺界面
		ELSE
			LM("Mask3","hj_3_gongyi.com",0);单件界面
		ENDIF
	END_PRESS
	PRESS(HS4)
		LM("Mask0","hj_3_duidao.com",0);修整界面
	END_PRESS
	PRESS(VS8)
		EXIT
	END_PRESS
	;;CHANGE事件
	CHANGE(VAR_GRD2_0)
		CALL("UP4")
	END_CHANGE
	CHANGE(VAR_GRD3_0)
		CALL("UP4")
	END_CHANGE
	CHANGE(VAR_GRD2_1)
		CALL("UP4")
	END_CHANGE
	CHANGE(VAR_GRD3_1)
		CALL("UP4")
	END_CHANGE
	CHANGE(VAR8)
		CALL("UP4")
	END_CHANGE	

	SUB(UP4)
		IF VAR8.VAL==0;公制轴向模数
			VAR_GRD3_0.VAL=VAR_GRD2_0.VAL*PI;模数计算螺距
			VAR_GRD3_1.VAL=VAR_GRD2_1.VAL*PI;模数计算螺距
		ENDIF
		IF VAR8.VAL==1;英制轴向模数
			VAR_GRD3_0.VAL=25.4*VAR_GRD2_0.VAL*PI;模数计算螺距
			VAR_GRD3_1.VAL=25.4*VAR_GRD2_1.VAL*PI;模数计算螺距
		ENDIF
	END_SUB
//END