;;;;;;;;;;;;;;;;;;;批量工艺界面;;;;;;;;;;;;;;;;;;;;;;;;;
//M(Mask0/$85019/"panel_0_2_2chs.png"/)
;;粗磨
	DEF POSITION_0=(I/*0=$85233,1=$85234//$85203,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[1]"/0,0,0/130,90,60/7,4);单双磨
    DEF POSITION_1=(I///$85203,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[2]"/0,0,0/130,114,60/7,4);粗磨次数
    DEF POSITION_2=(R/0,0.2//$85203,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[3]"/0,0,0/130,138,60/7,4);粗磨进给
    DEF POSITION_3=(R/0,50//$85203,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[4]"/0,0,0/130,161,60/7,4);粗磨头架转速
    DEF POSITION_4=(I///$85203,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[5]"/0,0,0/130,185,60/7,4);粗磨修整设定
    DEF POSITION_5=(R///$85203,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[6]"/0,0,0/130,209,60/7,4);粗磨磨削砂轮线速度
    DEF POSITION_10=(R2///$85203,,,/WR1//"/NC/_N_NC_GD2_ACX/PROCESSER[11]"/0,0,0/130,233,60/3,4);粗磨磨削砂轮转速
    DEF POSITION_6=(I///$85203,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[7]"/0,0,0/130,254,60/7,4);粗磨修整次数
    DEF POSITION_7=(R/0,0.1//$85203,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[8]"/0,0,0/130,278,60/7,4);粗磨修整进给
    DEF POSITION_8=(R///$85203,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[9]"/0,0,0/130,303,60/7,4);粗磨修整速度
    DEF POSITION_9=(R///$85203,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[10]"/0,0,0/130,326,60/7,4);粗磨修整砂轮线速度
    DEF POSITION_11=(R2///$85203,,,/WR1//"/NC/_N_NC_GD2_ACX/PROCESSER[12]"/0,0,0/130,350,60/3,4);粗磨修整砂轮转速
;;半精磨
	DEF POSITION_20=(I/*0=$85233,1=$85234//$85204,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[21]"/0,0,0/220,90,60/7,4);单双磨
    DEF POSITION_21=(I///$85204,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[22]"/0,0,0/220,114,60/7,4);半精磨次数
    DEF POSITION_22=(R/0,0.15//$85204,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[23]"/0,0,0/220,138,60/7,4);半精磨进给
    DEF POSITION_23=(R/0,50//$85204,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[24]"/0,0,0/220,161,60/7,4);半精磨头架转速
    DEF POSITION_24=(I///$85204,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[25]"/0,0,0/220,185,60/7,4);半精磨修整设定
    DEF POSITION_25=(R///$85204,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[26]"/0,0,0/220,209,60/7,4);半精磨磨削砂轮线速度
    DEF POSITION_30=(R2///$85204,,,/WR1//"/NC/_N_NC_GD2_ACX/PROCESSER[31]"/0,0,0/220,233,60/3,4);半精磨磨削砂轮转速
    DEF POSITION_26=(I///$85204,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[27]"/0,0,0/220,254,60/7,4);半精磨修整次数
    DEF POSITION_27=(R/0,0.1//$85204,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[28]"/0,0,0/220,278,60/7,4);半精磨修整进给
    DEF POSITION_28=(R///$85204,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[29]"/0,0,0/220,303,60/7,4);半精磨修整速度
    DEF POSITION_29=(R///$85204,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[30]"/0,0,0/220,326,60/7,4);半精磨修整砂轮线速度
    DEF POSITION_31=(R2///$85204,,,/WR1//"/NC/_N_NC_GD2_ACX/PROCESSER[32]"/0,0,0/220,350,60/3,4);半精磨修整砂轮转速
;;精磨
	DEF POSITION_40=(I/*0=$85233,1=$85234//$85205,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[41]"/0,0,0/310,90,60/7,4);单双磨
    DEF POSITION_41=(I///$85205,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[42]"/0,0,0/310,114,60/7,4);精磨次数
    DEF POSITION_42=(R/0,0.1//$85205,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[43]"/0,0,0/310,138,60/7,4);精磨进给
    DEF POSITION_43=(R/0,50//$85205,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[44]"/0,0,0/310,161,60/7,4);精磨头架转速
    DEF POSITION_44=(I///$85205,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[45]"/0,0,0/310,185,60/7,4);精磨修整设定
    DEF POSITION_45=(R///$85205,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[46]"/0,0,0/310,209,60/7,4);精磨磨削砂轮线速度
    DEF POSITION_50=(R2///$85205,,,/WR1//"/NC/_N_NC_GD2_ACX/PROCESSER[51]"/0,0,0/310,233,60/3,4);精磨磨削砂轮转速
    DEF POSITION_46=(I///$85205,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[47]"/0,0,0/310,254,60/7,4);精磨修整次数
    DEF POSITION_47=(R/0,0.1//$85205,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[48]"/0,0,0/310,278,60/7,4);精磨修整进给
    DEF POSITION_48=(R///$85205,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[49]"/0,0,0/310,303,60/7,4);精磨修整速度
    DEF POSITION_49=(R///$85205,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[50]"/0,0,0/310,326,60/7,4);精磨修整砂轮线速度
    DEF POSITION_51=(R2///$85205,,,/WR1//"/NC/_N_NC_GD2_ACX/PROCESSER[52]"/0,0,0/310,350,60/3,4);精磨修整砂轮转速
;;终磨
	DEF POSITION_60=(I/*0=$85233,1=$85234//$85206,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[61]"/0,0,0/400,90,60/7,4);单双磨
    DEF POSITION_61=(I///$85206,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[62]"/0,0,0/400,114,60/7,4);终磨次数
    DEF POSITION_62=(R/0,0.05//$85206,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[63]"/0,0,0/400,138,60/7,4);终磨进给
    DEF POSITION_63=(R/0,50//$85206,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[64]"/0,0,0/400,161,60/7,4);终磨头架转速
    DEF POSITION_64=(I///$85206,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[65]"/0,0,0/400,185,60/7,4);终磨修整设定
    DEF POSITION_65=(R///$85206,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[66]"/0,0,0/400,209,60/7,4);终磨磨削砂轮线速度
    DEF POSITION_70=(R2///$85206,,,/WR1//"/NC/_N_NC_GD2_ACX/PROCESSER[71]"/0,0,0/400,233,60/3,4);终磨磨削砂轮转速
    DEF POSITION_66=(I///$85206,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[67]"/0,0,0/400,254,60/7,4);终磨修整次数
    DEF POSITION_67=(R/0,0.1//$85206,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[68]"/0,0,0/400,278,60/7,4);终磨修整进给
    DEF POSITION_68=(R///$85206,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[69]"/0,0,0/400,303,60/7,4);终磨修整速度
    DEF POSITION_69=(R///$85206,,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[70]"/0,0,0/400,326,60/7,4);终磨修整砂轮线速度
    DEF POSITION_71=(R2///$85206,,,/WR1//"/NC/_N_NC_GD2_ACX/PROCESSER[72]"/0,0,0/400,350,60/3,4);终磨修整砂轮转速

    DEF VAR5=(R////WR4//"/NC/_N_NC_GD2_ACX/DRESSER[2]"/0,0,0/0,0,0);当前砂轮直径
    DEF VAR6=(R///$85219,$85219,,$85043/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[107]"/100,5,150/210,5,100/1,4);设定磨削总量
	DEF VAR7=(R///$85223,$85223,,$85043/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[108]"/100,25,150/210,25,100/1,4);已磨削量
	DEF VAR8=(I///$85242,$85240,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[109]"/300,5,100/380,5,60/1,4);工件计数
	DEF VAR9=(I///$85243,$85241,,/WR2//"/NC/_N_NC_GD2_ACX/PROCESSER[110]"/300,25,100/380,25,60/1,4);修整设定
;;定义按键
	HS1=($85001,ac7,se1)
	HS2=($85003,ac7,se1)
	HS3=($85002,ac7,se3)
	HS4=($85010,ac7,se1)  
	VS8=($85005,ac7,se1)
	PRESS(HS1)
		LM("Mask0","hj_moxue.com",0);磨削界面
	END_PRESS
	PRESS(HS2)
		LM("Mask0","hj_xiuzheng.com",0);修整界面
	END_PRESS
	PRESS(HS3)
		LM("Mask0","hj_gongyi.com",0);工艺界面
	END_PRESS
	PRESS(HS4)
		LM("Mask0","hj_duidao.com",0);对刀界面
	END_PRESS
	PRESS(VS8)
		EXIT
	END_PRESS
;;CHANGE事件
    CHANGE(POSITION_5)
        POSITION_10.VAL=POSITION_5.VAL*60000/(PI*VAR5.VAL);粗磨砂轮转速
    END_CHANGE
    CHANGE(POSITION_9)
        POSITION_11.VAL=POSITION_9.VAL*60000/(PI*VAR5.VAL);粗磨修整砂轮转速
    END_CHANGE
    CHANGE(POSITION_25)
        POSITION_30.VAL=POSITION_25.VAL*60000/(PI*VAR5.VAL);粗磨砂轮转速
    END_CHANGE
    CHANGE(POSITION_29)
		POSITION_31.VAL=POSITION_29.VAL*60000/(PI*VAR5.VAL);粗磨修整砂轮转速
    END_CHANGE
    CHANGE(POSITION_45)
    	POSITION_50.VAL=POSITION_45.VAL*60000/(PI*VAR5.VAL);粗磨砂轮转速
    END_CHANGE
    CHANGE(POSITION_49)
		POSITION_51.VAL=POSITION_49.VAL*60000/(PI*VAR5.VAL);粗磨修整砂轮转速
    END_CHANGE
    CHANGE(POSITION_65)
    	POSITION_70.VAL=POSITION_65.VAL*60000/(PI*VAR5.VAL);粗磨砂轮转速
    END_CHANGE
    CHANGE(POSITION_69)
		POSITION_71.VAL=POSITION_69.VAL*60000/(PI*VAR5.VAL);粗磨修整砂轮转速
    END_CHANGE
    ;;总磨削余量计算
    CHANGE(POSITION_0)
        CALL("UP1")
    END_CHANGE
    CHANGE(POSITION_1)
        CALL("UP1")
    END_CHANGE
    CHANGE(POSITION_2)
        CALL("UP1")
    END_CHANGE
    CHANGE(POSITION_20)
        CALL("UP1")
    END_CHANGE
    CHANGE(POSITION_21)
        CALL("UP1")
    END_CHANGE
    CHANGE(POSITION_22)
        CALL("UP1")
    END_CHANGE
    CHANGE(POSITION_40)
        CALL("UP1")
    END_CHANGE
    CHANGE(POSITION_41)
        CALL("UP1")
    END_CHANGE
    CHANGE(POSITION_42)
        CALL("UP1")
    END_CHANGE
    CHANGE(POSITION_60)
        CALL("UP1")
    END_CHANGE
    CHANGE(POSITION_61)
        CALL("UP1")
    END_CHANGE
    CHANGE(POSITION_62)
        CALL("UP1")
    END_CHANGE
    SUB(UP1)
         VAR6.VAL=(POSITION_0.VAL+1)*POSITION_1*POSITION_2.VAL+(POSITION_20.VAL+1)*POSITION_21*POSITION_22.VAL+(POSITION_40.VAL+1)*POSITION_41*POSITION_42.VAL+(POSITION_60.VAL+1)*POSITION_61*POSITION_62.VAL
    END_SUB
//END



























