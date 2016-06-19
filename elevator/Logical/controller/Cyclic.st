
PROGRAM _CYCLIC
	(* Insert code here *)
	(*ÏÂÁÐ´úÂëÖ»ÊÇÎªÁË²âÊÔ*)
	
	(*停电梯*)
	(*IF Target_Floor_Left=1 AND	Current_Floor_Left=Target_Floor_Left THEN 
		LeftTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Left=2 AND	Current_Floor_Left=Target_Floor_Left THEN 
		LeftTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Left=3 AND	Current_Floor_Left=Target_Floor_Left THEN 
		LeftTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Left=4 AND	Current_Floor_Left=Target_Floor_Left THEN 
		LeftTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Left=5 AND	Current_Floor_Left=Target_Floor_Left THEN 
		LeftTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Left=6 AND	Current_Floor_Left=Target_Floor_Left THEN 
		LeftTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Left=7 AND	Current_Floor_Left=Target_Floor_Left THEN 
		LeftTower.Signal_Stop_CabinMotor:=1;
		END_IF 
	
	IF Target_Floor_Right=1 AND	Current_Floor_Right=Target_Floor_Right THEN 
		RightTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Right=2 AND	Current_Floor_Right=Target_Floor_Right THEN 
		RightTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Right=3 AND	Current_Floor_Right=Target_Floor_Right THEN 
		RightTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Right=4 AND	Current_Floor_Right=Target_Floor_Right THEN 
		RightTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Right=5 AND	Current_Floor_Right=Target_Floor_Right THEN 
		RightTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Right=6 AND	Current_Floor_Right=Target_Floor_Right THEN 
		RightTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Right=7 AND	Current_Floor_Right=Target_Floor_Right THEN 
		RightTower.Signal_Stop_CabinMotor:=1;
	END_IF*)
	
	(*给CurrentFloor赋值*)	
	(*IF LeftTower.Sensor_Floor1Approached=1 THEN Current_Floor_Left:=1;END_IF
	IF LeftTower.Sensor_Floor2Approached=1 THEN Current_Floor_Left:=2;END_IF
	IF LeftTower.Sensor_Floor3Approached=1 THEN Current_Floor_Left:=3;END_IF
	IF LeftTower.Sensor_Floor4Approached=1 THEN Current_Floor_Left:=4;END_IF
	IF LeftTower.Sensor_Floor5Approached=1 THEN Current_Floor_Left:=5;END_IF
	IF LeftTower.Sensor_Floor6Approached=1 THEN Current_Floor_Left:=6;END_IF
	IF LeftTower.Sensor_Floor7Approached=1 THEN Current_Floor_Left:=7;END_IF
	IF RightTower.Sensor_Floor1Approached=1 THEN Current_Floor_Right:=1;END_IF
	IF RightTower.Sensor_Floor2Approached=1 THEN Current_Floor_Right:=2;END_IF
	IF RightTower.Sensor_Floor3Approached=1 THEN Current_Floor_Right:=3;END_IF
	IF RightTower.Sensor_Floor4Approached=1 THEN Current_Floor_Right:=4;END_IF
	IF RightTower.Sensor_Floor5Approached=1 THEN Current_Floor_Right:=5;END_IF
	IF RightTower.Sensor_Floor6Approached=1 THEN Current_Floor_Right:=6;END_IF
	IF RightTower.Sensor_Floor7Approached=1 THEN Current_Floor_Right:=7;END_IF*)
	Current_Floor_Left:=LeftCabin.Display_Current_Floor;
	Current_Floor_Right:=RightCabin.Display_Current_Floor;
	(*第一步电梯停止*)
	(*IF Target_Floor_Left=1 AND	LeftTower.Sensor_Floor1Approached=1 THEN 
	LeftTower.Signal_Start_CabinMotor_P := 0;
	LeftTower.Signal_Start_CabinMotor_N := 0;
	LeftTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Left=2 AND	LeftTower.Sensor_Floor2Approached=1 THEN 
	LeftTower.Signal_Start_CabinMotor_P := 0;
	LeftTower.Signal_Start_CabinMotor_N := 0;
	LeftTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Left=3 AND	LeftTower.Sensor_Floor3Approached=1 THEN
	LeftTower.Signal_Start_CabinMotor_P := 0;
	LeftTower.Signal_Start_CabinMotor_N := 0;
	LeftTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Left=4 AND	LeftTower.Sensor_Floor4Approached=1 THEN 
	LeftTower.Signal_Start_CabinMotor_P := 0;
	LeftTower.Signal_Start_CabinMotor_N := 0;
	LeftTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Left=5 AND	LeftTower.Sensor_Floor5Approached=1 THEN 
	LeftTower.Signal_Start_CabinMotor_P := 0;
	LeftTower.Signal_Start_CabinMotor_N := 0;
	LeftTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Left=6 AND	LeftTower.Sensor_Floor6Approached=1 THEN 
	LeftTower.Signal_Start_CabinMotor_P := 0;
	LeftTower.Signal_Start_CabinMotor_N := 0;
	LeftTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Left=7 AND	LeftTower.Sensor_Floor7Approached=1 THEN 
	LeftTower.Signal_Start_CabinMotor_P := 0;
	LeftTower.Signal_Start_CabinMotor_N := 0;
	LeftTower.Signal_Stop_CabinMotor:=1;
	END_IF 
	
	IF Target_Floor_Right=1 AND	RightTower.Sensor_Floor1Approached=1 THEN 
	RightTower.Signal_Start_CabinMotor_P := 0;
	RightTower.Signal_Start_CabinMotor_N := 0;
	RightTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Right=2 AND	RightTower.Sensor_Floor2Approached=1 THEN 
	RightTower.Signal_Start_CabinMotor_P := 0;
	RightTower.Signal_Start_CabinMotor_N := 0;
	RightTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Right=3 AND	RightTower.Sensor_Floor3Approached=1 THEN 
	RightTower.Signal_Start_CabinMotor_P := 0;
	RightTower.Signal_Start_CabinMotor_N := 0;
	RightTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Right=4 AND	RightTower.Sensor_Floor4Approached=1 THEN 
	RightTower.Signal_Start_CabinMotor_P := 0;
	RightTower.Signal_Start_CabinMotor_N := 0;
	RightTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Right=5 AND	RightTower.Sensor_Floor5Approached=1 THEN 
	RightTower.Signal_Start_CabinMotor_P := 0;
	RightTower.Signal_Start_CabinMotor_N := 0;
	RightTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Right=6 AND	RightTower.Sensor_Floor6Approached=1 THEN
	RightTower.Signal_Start_CabinMotor_P := 0;
	RightTower.Signal_Start_CabinMotor_N := 0;
	RightTower.Signal_Stop_CabinMotor:=1;
	ELSIF Target_Floor_Right=7 AND	RightTower.Sensor_Floor7Approached=1 THEN
	RightTower.Signal_Start_CabinMotor_P := 0;
	RightTower.Signal_Start_CabinMotor_N := 0;
	RightTower.Signal_Stop_CabinMotor:=1;
	END_IF*)
	
	IF Target_Floor_Right=Current_Floor_Right THEN 
		RightTower.Signal_Start_CabinMotor_P := 0;
		RightTower.Signal_Start_CabinMotor_N := 0;
		RightTower.Signal_Stop_CabinMotor:=1;
	END_IF
	IF Target_Floor_Left=Current_Floor_Left THEN 
		LeftTower.Signal_Start_CabinMotor_P := 0;
		LeftTower.Signal_Start_CabinMotor_N := 0;
		LeftTower.Signal_Stop_CabinMotor:=1;
	END_IF


	
	(*电梯门延时两秒正常开启和关门时强制开启*)
	
	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Sensor_DoorClosed=1 AND Target_Floor_Right=Current_Floor_Right  THEN
		
		IF j2>=2 THEN RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;Target_Floor_Right:=100;
			j2:=0;
		ELSE j2:=j2+1;
		END_IF
	END_IF
	
	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Sensor_DoorClosed=1 AND Target_Floor_Left=Current_Floor_Left  THEN
		
		IF j1>=2 THEN LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;Target_Floor_Left:=100;
			j1:=0;
		ELSE j1:=j1+1;
		END_IF
	END_IF

	
	
	
	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Sensor_DoorClosed=1 AND RightCabin.Key_Open=1 THEN
		RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	
	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Sensor_DoorClosed=1 AND Floor1Panel.Key_Up=1 AND RightCabin.Display_Current_Floor=1 THEN
		RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Sensor_DoorClosed=1 AND Floor2Panel.Key_Up=1 AND RightCabin.Display_Current_Floor=2 THEN
		RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Sensor_DoorClosed=1 AND Floor2Panel.Key_Down=1 AND RightCabin.Display_Current_Floor=2 THEN
		RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Sensor_DoorClosed=1 AND Floor3Panel.Key_Up=1 AND RightCabin.Display_Current_Floor=3 THEN
		RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Sensor_DoorClosed=1 AND Floor3Panel.Key_Down=1 AND RightCabin.Display_Current_Floor=3 THEN
		RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Sensor_DoorClosed=1 AND Floor4Panel.Key_Up=1 AND RightCabin.Display_Current_Floor=4 THEN
		RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Sensor_DoorClosed=1 AND Floor4Panel.Key_Down=1 AND RightCabin.Display_Current_Floor=4 THEN
		RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Sensor_DoorClosed=1 AND Floor5Panel.Key_Up=1 AND RightCabin.Display_Current_Floor=5 THEN
		RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Sensor_DoorClosed=1 AND Floor5Panel.Key_Down=1 AND RightCabin.Display_Current_Floor=5 THEN
		RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Sensor_DoorClosed=1 AND Floor6Panel.Key_Up=1 AND RightCabin.Display_Current_Floor=6 THEN
		RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Sensor_DoorClosed=1 AND Floor6Panel.Key_Down=1 AND RightCabin.Display_Current_Floor=6 THEN
		RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;
	END_IF

	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Sensor_DoorClosed=1 AND Floor7Panel.Key_Down=1 AND RightCabin.Display_Current_Floor=7 THEN
		RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	
	
	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Sensor_DoorClosed=1 AND LeftCabin.Key_Open=1 THEN
		LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	
	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Sensor_DoorClosed=1 AND Floor1Panel.Key_Up=1 AND LeftCabin.Display_Current_Floor=1 THEN
		LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Sensor_DoorClosed=1 AND Floor2Panel.Key_Up=1 AND LeftCabin.Display_Current_Floor=2 THEN
		LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Sensor_DoorClosed=1 AND Floor2Panel.Key_Down=1 AND LeftCabin.Display_Current_Floor=2 THEN
		LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Sensor_DoorClosed=1 AND Floor3Panel.Key_Up=1 AND LeftCabin.Display_Current_Floor=3 THEN
		LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Sensor_DoorClosed=1 AND Floor3Panel.Key_Down=1 AND LeftCabin.Display_Current_Floor=3 THEN
		LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Sensor_DoorClosed=1 AND Floor4Panel.Key_Up=1 AND LeftCabin.Display_Current_Floor=4 THEN
		LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Sensor_DoorClosed=1 AND Floor4Panel.Key_Down=1 AND LeftCabin.Display_Current_Floor=4 THEN
		LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Sensor_DoorClosed=1 AND Floor5Panel.Key_Up=1 AND LeftCabin.Display_Current_Floor=5 THEN
		LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Sensor_DoorClosed=1 AND Floor5Panel.Key_Down=1 AND LeftCabin.Display_Current_Floor=5 THEN
		LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Sensor_DoorClosed=1 AND Floor6Panel.Key_Up=1 AND LeftCabin.Display_Current_Floor=6 THEN
		LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Sensor_DoorClosed=1 AND Floor6Panel.Key_Down=1 AND LeftCabin.Display_Current_Floor=6 THEN
		LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;
	END_IF

	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Sensor_DoorClosed=1 AND Floor7Panel.Key_Down=1 AND LeftCabin.Display_Current_Floor=7 THEN
		LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;
	END_IF
	
	(*电梯门延时10秒关闭和强制关闭电梯*)
		IF i2>=10 AND RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 THEN  RightTower.Signal_Start_DoorMotor_P:=0;RightTower.Signal_Start_DoorMotor_N:=1;
	i2:=0;	END_IF
	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Sensor_DoorOpened=1 THEN
		i2:=i2+1;
		IF RightTower.Sensor_DoorOpened=1 THEN 
		
			IF RightCabin.Key_Close=1 THEN RightTower.Signal_Start_DoorMotor_P:=0;RightTower.Signal_Start_DoorMotor_N:=1;END_IF 
		 
		ELSIF RightCabin.Key_Open=1 THEN RightTower.Signal_Start_DoorMotor_N:=0;RightTower.Signal_Start_DoorMotor_P:=1;(*此处逻辑可能要改*)
		END_IF
	END_IF
	
	IF i1>=10 AND LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 THEN  LeftTower.Signal_Start_DoorMotor_P:=0;LeftTower.Signal_Start_DoorMotor_N:=1;
	i1:=0;	END_IF
	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Sensor_DoorOpened=1 THEN
		i1:=i1+1;
		IF LeftTower.Sensor_DoorOpened=1 THEN 
		
			IF LeftCabin.Key_Close=1 THEN LeftTower.Signal_Start_DoorMotor_P:=0;LeftTower.Signal_Start_DoorMotor_N:=1;END_IF 
		 
		ELSIF LeftCabin.Key_Open=1 THEN LeftTower.Signal_Start_DoorMotor_N:=0;LeftTower.Signal_Start_DoorMotor_P:=1;(*此处逻辑可能要改*)
		END_IF
	END_IF
	
	IF RightTower.Signal_Start_CabinMotor_P = 0 AND RightTower.Signal_Start_CabinMotor_N =0 AND RightTower.Signal_Start_DoorMotor_N=1 THEN
		IF Key_Up_Floor1=1 AND RightTower.Sensor_Floor1Approached=1 THEN RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;END_IF
		IF RightTower.Sensor_Floor2Approached=1 THEN 
			IF Key_Up_Floor2=1 AND Target_Floor_Right>=2 THEN RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;END_IF
			IF Key_Down_Floor2=1 AND Target_Floor_Right<2 THEN RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;END_IF
		END_IF
						
		IF RightTower.Sensor_Floor3Approached=1 THEN 
			IF Key_Up_Floor3=1 AND Target_Floor_Right>=3 THEN RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;END_IF
			IF Key_Down_Floor3=1 AND Target_Floor_Right<3 THEN RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;END_IF
		END_IF
							
		IF RightTower.Sensor_Floor4Approached=1 THEN 
			IF Key_Up_Floor4=1 AND Target_Floor_Right>=4 THEN RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;END_IF
			IF Key_Down_Floor4=1 AND Target_Floor_Right<4 THEN RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;END_IF
		END_IF			
		IF RightTower.Sensor_Floor5Approached=1 THEN 
			IF Key_Up_Floor5=1 AND Target_Floor_Right>=5 THEN RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;END_IF
			IF Key_Down_Floor5=1 AND Target_Floor_Right<5 THEN RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;END_IF
		END_IF							
		IF RightTower.Sensor_Floor6Approached=1 THEN 
			IF Key_Up_Floor6=1 AND Target_Floor_Right>=6 THEN RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;END_IF
			IF Key_Down_Floor6=1 AND Target_Floor_Right<6 THEN RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;END_IF
		END_IF							
		IF Key_Down_Floor7=1 AND RightTower.Sensor_Floor7Approached=1 THEN RightTower.Signal_Start_DoorMotor_P:=1;RightTower.Signal_Start_DoorMotor_N:=0;END_IF
	END_IF	
			
	IF LeftTower.Signal_Start_DoorMotor_N=1 AND Key_Open_Left=1 THEN LeftTower.Signal_Start_DoorMotor_N:=0;
	LeftTower.Signal_Start_DoorMotor_P:=1; END_IF 
	IF RightTower.Signal_Start_DoorMotor_N=1 AND Key_Open_Right=1 THEN RightTower.Signal_Start_DoorMotor_N:=0;
	RightTower.Signal_Start_DoorMotor_P:=1; END_IF 
	
	IF LeftTower.Signal_Start_CabinMotor_P = 0 AND LeftTower.Signal_Start_CabinMotor_N =0 AND LeftTower.Signal_Start_DoorMotor_N=1 THEN
		IF Key_Up_Floor1=1 AND LeftTower.Sensor_Floor1Approached=1 THEN LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;END_IF
		IF LeftTower.Sensor_Floor2Approached=1 THEN 
			IF Key_Up_Floor2=1 AND Target_Floor_Left>=2 THEN LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;END_IF
			IF Key_Down_Floor2=1 AND Target_Floor_Left<2 THEN LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;END_IF
		END_IF
						
		IF LeftTower.Sensor_Floor3Approached=1 THEN 
			IF Key_Up_Floor3=1 AND Target_Floor_Left>=3 THEN LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;END_IF
			IF Key_Down_Floor3=1 AND Target_Floor_Left<3 THEN LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;END_IF
		END_IF
							
		IF LeftTower.Sensor_Floor4Approached=1 THEN 
			IF Key_Up_Floor4=1 AND Target_Floor_Left>=4 THEN LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;END_IF
			IF Key_Down_Floor4=1 AND Target_Floor_Left<4 THEN LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;END_IF
		END_IF			
		IF LeftTower.Sensor_Floor5Approached=1 THEN 
			IF Key_Up_Floor5=1 AND Target_Floor_Left>=5 THEN LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;END_IF
			IF Key_Down_Floor5=1 AND Target_Floor_Left<5 THEN LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;END_IF
		END_IF							
		IF LeftTower.Sensor_Floor6Approached=1 THEN 
			IF Key_Up_Floor6=1 AND Target_Floor_Left>=6 THEN LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;END_IF
			IF Key_Down_Floor6=1 AND Target_Floor_Left<6 THEN LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;END_IF
		END_IF							
		IF Key_Down_Floor7=1 AND LeftTower.Sensor_Floor7Approached=1 THEN LeftTower.Signal_Start_DoorMotor_P:=1;LeftTower.Signal_Start_DoorMotor_N:=0;END_IF
	END_IF
	
	(*此处插入左电梯目标楼层判断代码*)
	
	// 左侧电梯处于停止状态
	IF LeftTower.Signal_Stop_CabinMotor = 1 THEN
		
		//左侧电梯处于1楼时
		IF Current_Floor_Left = 1 THEN
			//LeftTower.Sensor_Floor1Approached := 1;
			//LeftCabin.Key_Floor1 := 0;
			// 只能停止或向上运动
			IF LeftCabin.Key_Floor2 = 1 OR Floor2Panel.Key_Up = 1 THEN //floor 2
				Target_Floor_Left := 2;
			ELSIF LeftCabin.Key_Floor3 = 1 OR Floor3Panel.Key_Up = 1 THEN //floor 3
				Target_Floor_Left := 3;
			ELSIF LeftCabin.Key_Floor4 = 1 OR Floor4Panel.Key_Up = 1 THEN //floor 4
				Target_Floor_Left := 4;
			ELSIF LeftCabin.Key_Floor5 = 1 OR Floor5Panel.Key_Up = 1 THEN //floor 5
				Target_Floor_Left := 5;
			ELSIF LeftCabin.Key_Floor6 = 1 OR Floor6Panel.Key_Up = 1 THEN //floor 6
				Target_Floor_Left := 6;
			ELSIF LeftCabin.Key_Floor7 = 1  THEN //floor 7:不能继续向上
				Target_Floor_Left := 7;	
			ELSIF Floor7Panel.Key_Down = 1 THEN //floor 7
				Target_Floor_Left := 7;
			ELSIF Floor6Panel.Key_Down = 1 THEN //floor 6
				Target_Floor_Left := 6;
			ELSIF Floor5Panel.Key_Down = 1 THEN //floor 5
				Target_Floor_Left := 5;
			ELSIF Floor4Panel.Key_Down = 1 THEN //floor 4
				Target_Floor_Left := 4;
			ELSIF Floor3Panel.Key_Down = 1 THEN //floor 3
				Target_Floor_Left := 3;	
			ELSIF Floor2Panel.Key_Down = 1 THEN //floor 2
				Target_Floor_Left := 2;	
			END_IF;
			
			
		//左侧电梯处于2楼时	
		ELSIF Current_Floor_Left = 2 THEN	
				
			IF LeftCabin.Key_Floor3 = 1 OR Floor3Panel.Key_Up = 1 THEN //floor 3
				Target_Floor_Left := 3;
			ELSIF LeftCabin.Key_Floor4 = 1 OR Floor4Panel.Key_Up = 1 THEN //floor 4
				Target_Floor_Left := 4;
			ELSIF LeftCabin.Key_Floor5 = 1 OR Floor5Panel.Key_Up = 1 THEN //floor 5
				Target_Floor_Left := 5;
			ELSIF LeftCabin.Key_Floor6 = 1 OR Floor6Panel.Key_Up = 1 THEN //floor 6
				Target_Floor_Left := 6;
			ELSIF LeftCabin.Key_Floor7 = 1  THEN //floor 7:不能继续向上
				Target_Floor_Left := 7;	
			ELSIF Floor7Panel.Key_Down = 1 THEN //floor 7
				Target_Floor_Left := 7;
			ELSIF Floor6Panel.Key_Down = 1 THEN //floor 6
				Target_Floor_Left := 6;
			ELSIF Floor5Panel.Key_Down = 1 THEN //floor 5
				Target_Floor_Left := 5;
			ELSIF Floor4Panel.Key_Down = 1 THEN //floor 4
				Target_Floor_Left := 4;
			ELSIF Floor3Panel.Key_Down = 1 THEN //floor 3
				Target_Floor_Left := 3;
				
			ELSIF LeftCabin.Key_Floor1 = 1 THEN //floor 1:不能继续下行
				Target_Floor_Left := 1;
			ELSIF Floor1Panel.Key_Up = 1 THEN //floor 1
				Target_Floor_Left := 1;
	
			END_IF
			
		//左侧电梯处于3楼时	
		ELSIF Current_Floor_Left = 3 THEN	
						
			IF LeftCabin.Key_Floor4 = 1 OR Floor4Panel.Key_Up = 1 THEN //floor 4
				Target_Floor_Left := 4;
			ELSIF LeftCabin.Key_Floor5 = 1 OR Floor5Panel.Key_Up = 1 THEN //floor 5
				Target_Floor_Left := 5;
			ELSIF LeftCabin.Key_Floor6 = 1 OR Floor6Panel.Key_Up = 1 THEN //floor 6
				Target_Floor_Left := 6;
			ELSIF LeftCabin.Key_Floor7 = 1  THEN //floor 7:不能继续向上
				Target_Floor_Left := 7;	
			ELSIF Floor7Panel.Key_Down = 1 THEN //floor 7
				Target_Floor_Left := 7;
			ELSIF Floor6Panel.Key_Down = 1 THEN //floor 6
				Target_Floor_Left := 6;
			ELSIF Floor5Panel.Key_Down = 1 THEN //floor 5
				Target_Floor_Left := 5;
			ELSIF Floor4Panel.Key_Down = 1 THEN //floor 4
				Target_Floor_Left := 4;
			
			
			ELSIF LeftCabin.Key_Floor2 = 1 OR Floor2Panel.Key_Down = 1 THEN //floor 2
				Target_Floor_Left := 2;
			ELSIF LeftCabin.Key_Floor1 = 1 THEN //floor 1:不能继续下行
				Target_Floor_Left := 1;
			ELSIF Floor1Panel.Key_Up = 1 THEN //floor 1
				Target_Floor_Left := 1;
			ELSIF Floor2Panel.Key_Up = 1 THEN  //floor 2
				Target_Floor_Left := 2;
		
			END_IF
			
		//左侧电梯处于4楼时	
		ELSIF Current_Floor_Left = 4 THEN
				
			IF LeftCabin.Key_Floor5 = 1 OR Floor5Panel.Key_Up = 1 THEN //floor 5
				Target_Floor_Left := 5;
			ELSIF LeftCabin.Key_Floor6 = 1 OR Floor6Panel.Key_Up = 1 THEN //floor 6
				Target_Floor_Left := 6;
			ELSIF LeftCabin.Key_Floor7 = 1  THEN //floor 7:不能继续向上
				Target_Floor_Left := 7;	
			ELSIF Floor7Panel.Key_Down = 1 THEN //floor 7
				Target_Floor_Left := 7;
			ELSIF Floor6Panel.Key_Down = 1 THEN //floor 6
				Target_Floor_Left := 6;
			ELSIF Floor5Panel.Key_Down = 1 THEN //floor 5
				Target_Floor_Left := 5;
			
			
			
			ELSIF LeftCabin.Key_Floor3 = 1 OR Floor3Panel.Key_Down = 1 THEN //floor 3
				Target_Floor_Left := 3;
			ELSIF LeftCabin.Key_Floor2 = 1 OR Floor2Panel.Key_Down = 1 THEN //floor 2
				Target_Floor_Left := 2;
			ELSIF LeftCabin.Key_Floor1 = 1 THEN //floor 1:不能继续下行
				Target_Floor_Left := 1;
			ELSIF Floor1Panel.Key_Up = 1 THEN //floor 1
				Target_Floor_Left := 1;
			ELSIF Floor2Panel.Key_Up = 1 THEN  //floor 2
				Target_Floor_Left := 2;
			ELSIF Floor3Panel.Key_Up = 1 THEN //floor 3
				Target_Floor_Left := 3;
		
			END_IF	
	
		//左侧电梯处于5楼时	
		ELSIF Current_Floor_Left = 5 THEN		
						
			IF LeftCabin.Key_Floor6 = 1 OR Floor6Panel.Key_Up = 1 THEN //floor 6
				Target_Floor_Left := 6;
			ELSIF LeftCabin.Key_Floor7 = 1  THEN //floor 7:不能继续向上
				Target_Floor_Left := 7;	
			ELSIF Floor7Panel.Key_Down = 1 THEN //floor 7
				Target_Floor_Left := 7;
			ELSIF Floor6Panel.Key_Down = 1 THEN //floor 6
				Target_Floor_Left := 6;		
			
			ELSIF LeftCabin.Key_Floor4 = 1 OR Floor4Panel.Key_Down = 1 THEN //floor 4
				Target_Floor_Left := 4;
			ELSIF LeftCabin.Key_Floor3 = 1 OR Floor3Panel.Key_Down = 1 THEN //floor 3
				Target_Floor_Left := 3;
			ELSIF LeftCabin.Key_Floor2 = 1 OR Floor2Panel.Key_Down = 1 THEN //floor 2
				Target_Floor_Left := 2;
			ELSIF LeftCabin.Key_Floor1 = 1 THEN //floor 1:不能继续下行
				Target_Floor_Left := 1;
			ELSIF Floor1Panel.Key_Up = 1 THEN //floor 1
				Target_Floor_Left := 1;
			ELSIF Floor2Panel.Key_Up = 1 THEN  //floor 2
				Target_Floor_Left := 2;
			ELSIF Floor3Panel.Key_Up = 1 THEN //floor 3
				Target_Floor_Left := 3;	
			ELSIF Floor4Panel.Key_Up = 1 THEN //floor 4
				Target_Floor_Left := 4;
			END_IF	
			
		//左侧电梯处于6楼时	
		ELSIF Current_Floor_Left = 6 THEN
					
			IF LeftCabin.Key_Floor7 = 1  THEN //floor 7:不能继续向上
				Target_Floor_Left := 7;		
			ELSIF Floor7Panel.Key_Down = 1 THEN //floor 7
				Target_Floor_Left := 7;
		
		
			ELSIF LeftCabin.Key_Floor5 = 1 OR Floor5Panel.Key_Down = 1 THEN //floor 5
				Target_Floor_Left := 5;		
			ELSIF LeftCabin.Key_Floor4 = 1 OR Floor4Panel.Key_Down = 1 THEN //floor 4
				Target_Floor_Left := 4;		
			ELSIF LeftCabin.Key_Floor3 = 1 OR Floor3Panel.Key_Down = 1 THEN //floor 3
				Target_Floor_Left := 3;		
			ELSIF LeftCabin.Key_Floor2 = 1 OR Floor2Panel.Key_Down = 1 THEN //floor 2
				Target_Floor_Left := 2;		
			ELSIF LeftCabin.Key_Floor1 = 1 THEN //floor 1:不能继续下行
				Target_Floor_Left := 1;		
			ELSIF Floor1Panel.Key_Up = 1 THEN //floor 1
				Target_Floor_Left := 1;	
			ELSIF Floor2Panel.Key_Up = 1 THEN  //floor 2
				Target_Floor_Left := 2;		
			ELSIF Floor3Panel.Key_Up = 1 THEN //floor 3
				Target_Floor_Left := 3;	
			ELSIF Floor4Panel.Key_Up = 1 THEN //floor 4
				Target_Floor_Left := 4;
			ELSIF Floor5Panel.Key_Up = 1 THEN //floor 5
				Target_Floor_Left := 5;
				
			END_IF
			
		//左侧电梯处于7楼时	
		ELSIF Current_Floor_Left = 7 THEN
		
			IF LeftCabin.Key_Floor6 = 1 OR Floor6Panel.Key_Down = 1 THEN //floor 6
				Target_Floor_Left := 6;
			ELSIF LeftCabin.Key_Floor5 = 1 OR Floor5Panel.Key_Down = 1 THEN //floor 5
				Target_Floor_Left := 5;		
			ELSIF LeftCabin.Key_Floor4 = 1 OR Floor4Panel.Key_Down = 1 THEN //floor 4
				Target_Floor_Left := 4;		
			ELSIF LeftCabin.Key_Floor3 = 1 OR Floor3Panel.Key_Down = 1 THEN //floor 3
				Target_Floor_Left := 3;		
			ELSIF LeftCabin.Key_Floor2 = 1 OR Floor2Panel.Key_Down = 1 THEN //floor 2
				Target_Floor_Left := 2;		
			ELSIF LeftCabin.Key_Floor1 = 1 THEN //floor 1:不能继续下行
				Target_Floor_Left := 1;		
			ELSIF Floor1Panel.Key_Up = 1 THEN //floor 1
				Target_Floor_Left := 1;	
			ELSIF Floor2Panel.Key_Up = 1 THEN  //floor 2
				Target_Floor_Left := 2;		
			ELSIF Floor3Panel.Key_Up = 1 THEN //floor 3
				Target_Floor_Left := 3;	
			ELSIF Floor4Panel.Key_Up = 1 THEN //floor 4
				Target_Floor_Left := 4;
			ELSIF Floor5Panel.Key_Up = 1 THEN //floor 5
				Target_Floor_Left := 5;
			ELSIF Floor6Panel.Key_Up = 1 THEN //floor 6
				Target_Floor_Left := 6;
			END_IF	
	
		END_IF
	END_IF
	
	(*下面是左右电梯分工判断*)
	// 当两侧电梯均处于停止状态
	IF LeftTower.Signal_Stop_CabinMotor = 1 AND RightTower.Signal_Stop_CabinMotor = 1 THEN
		IF ABS(Current_Floor_Left - Target_Floor_Left) > ABS(Current_Floor_Right - Target_Floor_Left) THEN
			Target_Floor_Right := Target_Floor_Left; // 将左侧电梯目标值赋给右侧电梯目标
			Target_Floor_Left := Current_Floor_Left; // 将左侧电梯目标赋值为当前位置使其保持停止
			RETURN; // 结束函数
		END_IF
	END_IF
	
	(*此处插入右电梯目标楼层判断代码*)
	
	// 右侧电梯处于停止状态
	IF RightTower.Signal_Stop_CabinMotor = 1 THEN
		
		//右侧电梯处于1楼时
		IF Current_Floor_Right = 1 THEN
			//RightTower.Sensor_Floor1Approached := 1;
			//RightCabin.Key_Floor1 := 0;
			// 只能停止或向上运动
			IF RightCabin.Key_Floor2 = 1 OR Floor2Panel.Key_Up = 1 THEN //floor 2
				Target_Floor_Right := 2;
			ELSIF RightCabin.Key_Floor3 = 1 OR Floor3Panel.Key_Up = 1 THEN //floor 3
				Target_Floor_Right := 3;
			ELSIF RightCabin.Key_Floor4 = 1 OR Floor4Panel.Key_Up = 1 THEN //floor 4
				Target_Floor_Right := 4;
			ELSIF RightCabin.Key_Floor5 = 1 OR Floor5Panel.Key_Up = 1 THEN //floor 5
				Target_Floor_Right := 5;
			ELSIF RightCabin.Key_Floor6 = 1 OR Floor6Panel.Key_Up = 1 THEN //floor 6
				Target_Floor_Right := 6;
			ELSIF RightCabin.Key_Floor7 = 1  THEN //floor 7:不能继续向上
				Target_Floor_Right := 7;	
			ELSIF Floor7Panel.Key_Down = 1 THEN //floor 7
				Target_Floor_Right := 7;
			ELSIF Floor6Panel.Key_Down = 1 THEN //floor 6
				Target_Floor_Right := 6;
			ELSIF Floor5Panel.Key_Down = 1 THEN //floor 5
				Target_Floor_Right := 5;
			ELSIF Floor4Panel.Key_Down = 1 THEN //floor 4
				Target_Floor_Right := 4;
			ELSIF Floor3Panel.Key_Down = 1 THEN //floor 3
				Target_Floor_Right := 3;	
			ELSIF Floor2Panel.Key_Down = 1 THEN //floor 2
				Target_Floor_Right := 2;	
			END_IF;
			
			
		//右侧电梯处于2楼时	
		ELSIF Current_Floor_Right = 2 THEN	
				
			IF RightCabin.Key_Floor3 = 1 OR Floor3Panel.Key_Up = 1 THEN //floor 3
				Target_Floor_Right := 3;
			ELSIF RightCabin.Key_Floor4 = 1 OR Floor4Panel.Key_Up = 1 THEN //floor 4
				Target_Floor_Right := 4;
			ELSIF RightCabin.Key_Floor5 = 1 OR Floor5Panel.Key_Up = 1 THEN //floor 5
				Target_Floor_Right := 5;
			ELSIF RightCabin.Key_Floor6 = 1 OR Floor6Panel.Key_Up = 1 THEN //floor 6
				Target_Floor_Right := 6;
			ELSIF RightCabin.Key_Floor7 = 1  THEN //floor 7:不能继续向上
				Target_Floor_Right := 7;	
			ELSIF Floor7Panel.Key_Down = 1 THEN //floor 7
				Target_Floor_Right := 7;
			ELSIF Floor6Panel.Key_Down = 1 THEN //floor 6
				Target_Floor_Right := 6;
			ELSIF Floor5Panel.Key_Down = 1 THEN //floor 5
				Target_Floor_Right := 5;
			ELSIF Floor4Panel.Key_Down = 1 THEN //floor 4
				Target_Floor_Right := 4;
			ELSIF Floor3Panel.Key_Down = 1 THEN //floor 3
				Target_Floor_Right := 3;
				
			ELSIF RightCabin.Key_Floor1 = 1 THEN //floor 1:不能继续下行
				Target_Floor_Right := 1;
			ELSIF Floor1Panel.Key_Up = 1 THEN //floor 1
				Target_Floor_Right := 1;
	
			END_IF
			
		//右侧电梯处于3楼时	
		ELSIF Current_Floor_Right = 3 THEN	
						
			IF RightCabin.Key_Floor4 = 1 OR Floor4Panel.Key_Up = 1 THEN //floor 4
				Target_Floor_Right := 4;
			ELSIF RightCabin.Key_Floor5 = 1 OR Floor5Panel.Key_Up = 1 THEN //floor 5
				Target_Floor_Right := 5;
			ELSIF RightCabin.Key_Floor6 = 1 OR Floor6Panel.Key_Up = 1 THEN //floor 6
				Target_Floor_Right := 6;
			ELSIF RightCabin.Key_Floor7 = 1  THEN //floor 7:不能继续向上
				Target_Floor_Right := 7;	
			ELSIF Floor7Panel.Key_Down = 1 THEN //floor 7
				Target_Floor_Right := 7;
			ELSIF Floor6Panel.Key_Down = 1 THEN //floor 6
				Target_Floor_Right := 6;
			ELSIF Floor5Panel.Key_Down = 1 THEN //floor 5
				Target_Floor_Right := 5;
			ELSIF Floor4Panel.Key_Down = 1 THEN //floor 4
				Target_Floor_Right := 4;
			
			
			ELSIF RightCabin.Key_Floor2 = 1 OR Floor2Panel.Key_Down = 1 THEN //floor 2
				Target_Floor_Right := 2;
			ELSIF RightCabin.Key_Floor1 = 1 THEN //floor 1:不能继续下行
				Target_Floor_Right := 1;
			ELSIF Floor1Panel.Key_Up = 1 THEN //floor 1
				Target_Floor_Right := 1;
			ELSIF Floor2Panel.Key_Up = 1 THEN  //floor 2
				Target_Floor_Right := 2;
		
			END_IF
			
		//右侧电梯处于4楼时	
		ELSIF Current_Floor_Right = 4 THEN
				
			IF RightCabin.Key_Floor5 = 1 OR Floor5Panel.Key_Up = 1 THEN //floor 5
				Target_Floor_Right := 5;
			ELSIF RightCabin.Key_Floor6 = 1 OR Floor6Panel.Key_Up = 1 THEN //floor 6
				Target_Floor_Right := 6;
			ELSIF RightCabin.Key_Floor7 = 1  THEN //floor 7:不能继续向上
				Target_Floor_Right := 7;	
			ELSIF Floor7Panel.Key_Down = 1 THEN //floor 7
				Target_Floor_Right := 7;
			ELSIF Floor6Panel.Key_Down = 1 THEN //floor 6
				Target_Floor_Right := 6;
			ELSIF Floor5Panel.Key_Down = 1 THEN //floor 5
				Target_Floor_Right := 5;
			
			
			
			ELSIF RightCabin.Key_Floor3 = 1 OR Floor3Panel.Key_Down = 1 THEN //floor 3
				Target_Floor_Right := 3;
			ELSIF RightCabin.Key_Floor2 = 1 OR Floor2Panel.Key_Down = 1 THEN //floor 2
				Target_Floor_Right := 2;
			ELSIF RightCabin.Key_Floor1 = 1 THEN //floor 1:不能继续下行
				Target_Floor_Right := 1;
			ELSIF Floor1Panel.Key_Up = 1 THEN //floor 1
				Target_Floor_Right := 1;
			ELSIF Floor2Panel.Key_Up = 1 THEN  //floor 2
				Target_Floor_Right := 2;
			ELSIF Floor3Panel.Key_Up = 1 THEN //floor 3
				Target_Floor_Right := 3;
		
			END_IF	
	
		//右侧电梯处于5楼时	
		ELSIF Current_Floor_Right = 5 THEN		
						
			IF RightCabin.Key_Floor6 = 1 OR Floor6Panel.Key_Up = 1 THEN //floor 6
				Target_Floor_Right := 6;
			ELSIF RightCabin.Key_Floor7 = 1  THEN //floor 7:不能继续向上
				Target_Floor_Right := 7;	
			ELSIF Floor7Panel.Key_Down = 1 THEN //floor 7
				Target_Floor_Right := 7;
			ELSIF Floor6Panel.Key_Down = 1 THEN //floor 6
				Target_Floor_Right := 6;		
			
			ELSIF RightCabin.Key_Floor4 = 1 OR Floor4Panel.Key_Down = 1 THEN //floor 4
				Target_Floor_Right := 4;
			ELSIF RightCabin.Key_Floor3 = 1 OR Floor3Panel.Key_Down = 1 THEN //floor 3
				Target_Floor_Right := 3;
			ELSIF RightCabin.Key_Floor2 = 1 OR Floor2Panel.Key_Down = 1 THEN //floor 2
				Target_Floor_Right := 2;
			ELSIF RightCabin.Key_Floor1 = 1 THEN //floor 1:不能继续下行
				Target_Floor_Right := 1;
			ELSIF Floor1Panel.Key_Up = 1 THEN //floor 1
				Target_Floor_Right := 1;
			ELSIF Floor2Panel.Key_Up = 1 THEN  //floor 2
				Target_Floor_Right := 2;
			ELSIF Floor3Panel.Key_Up = 1 THEN //floor 3
				Target_Floor_Right := 3;	
			ELSIF Floor4Panel.Key_Up = 1 THEN //floor 4
				Target_Floor_Right := 4;
			END_IF	
			
		//右侧电梯处于6楼时	
		ELSIF Current_Floor_Right = 6 THEN
					
			IF RightCabin.Key_Floor7 = 1  THEN //floor 7:不能继续向上
				Target_Floor_Right := 7;		
			ELSIF Floor7Panel.Key_Down = 1 THEN //floor 7
				Target_Floor_Right := 7;
		
		
			ELSIF RightCabin.Key_Floor5 = 1 OR Floor5Panel.Key_Down = 1 THEN //floor 5
				Target_Floor_Right := 5;		
			ELSIF RightCabin.Key_Floor4 = 1 OR Floor4Panel.Key_Down = 1 THEN //floor 4
				Target_Floor_Right := 4;		
			ELSIF RightCabin.Key_Floor3 = 1 OR Floor3Panel.Key_Down = 1 THEN //floor 3
				Target_Floor_Right := 3;		
			ELSIF RightCabin.Key_Floor2 = 1 OR Floor2Panel.Key_Down = 1 THEN //floor 2
				Target_Floor_Right := 2;		
			ELSIF RightCabin.Key_Floor1 = 1 THEN //floor 1:不能继续下行
				Target_Floor_Right := 1;		
			ELSIF Floor1Panel.Key_Up = 1 THEN //floor 1
				Target_Floor_Right := 1;	
			ELSIF Floor2Panel.Key_Up = 1 THEN  //floor 2
				Target_Floor_Right := 2;		
			ELSIF Floor3Panel.Key_Up = 1 THEN //floor 3
				Target_Floor_Right := 3;	
			ELSIF Floor4Panel.Key_Up = 1 THEN //floor 4
				Target_Floor_Right := 4;
			ELSIF Floor5Panel.Key_Up = 1 THEN //floor 5
				Target_Floor_Right := 5;
				
			END_IF
			
			//右侧电梯处于7楼时	
		ELSIF Current_Floor_Right = 7 THEN
		
			IF RightCabin.Key_Floor6 = 1 OR Floor6Panel.Key_Down = 1 THEN //floor 6
				Target_Floor_Right := 6;
			ELSIF RightCabin.Key_Floor5 = 1 OR Floor5Panel.Key_Down = 1 THEN //floor 5
				Target_Floor_Right := 5;		
			ELSIF RightCabin.Key_Floor4 = 1 OR Floor4Panel.Key_Down = 1 THEN //floor 4
				Target_Floor_Right := 4;		
			ELSIF RightCabin.Key_Floor3 = 1 OR Floor3Panel.Key_Down = 1 THEN //floor 3
				Target_Floor_Right := 3;		
			ELSIF RightCabin.Key_Floor2 = 1 OR Floor2Panel.Key_Down = 1 THEN //floor 2
				Target_Floor_Right := 2;		
			ELSIF RightCabin.Key_Floor1 = 1 THEN //floor 1:不能继续下行
				Target_Floor_Right := 1;		
			ELSIF Floor1Panel.Key_Up = 1 THEN //floor 1
				Target_Floor_Right := 1;	
			ELSIF Floor2Panel.Key_Up = 1 THEN  //floor 2
				Target_Floor_Right := 2;		
			ELSIF Floor3Panel.Key_Up = 1 THEN //floor 3
				Target_Floor_Right := 3;	
			ELSIF Floor4Panel.Key_Up = 1 THEN //floor 4
				Target_Floor_Right := 4;
			ELSIF Floor5Panel.Key_Up = 1 THEN //floor 5
				Target_Floor_Right := 5;
			ELSIF Floor6Panel.Key_Up = 1 THEN //floor 6
				Target_Floor_Right := 6;
			END_IF	
	
		END_IF
	END_IF
	
	(*让电梯的上下电机动起来*)
	IF Target_Floor_Left > 0 AND Target_Floor_Left < 8 AND LeftTower.Sensor_DoorClosed = 1  THEN
		IF LeftCabin.Display_Current_Floor < Target_Floor_Left THEN // 上行
			LeftTower.Signal_Start_CabinMotor_P := 1;
			LeftTower.Signal_Start_CabinMotor_N := 0;
			LeftTower.Signal_Stop_CabinMotor := 0;			
		ELSIF LeftCabin.Display_Current_Floor > Target_Floor_Left THEN // 下行
			LeftTower.Signal_Start_CabinMotor_P := 0;
			LeftTower.Signal_Start_CabinMotor_N := 1;
			LeftTower.Signal_Stop_CabinMotor := 0;
		ELSE // 不动
			LeftTower.Signal_Start_CabinMotor_P := 0;
			LeftTower.Signal_Start_CabinMotor_N := 0;
			LeftTower.Signal_Stop_CabinMotor := 1;
		END_IF
	END_IF
	IF Target_Floor_Right > 0 AND Target_Floor_Right < 8 AND RightTower.Sensor_DoorClosed = 1  THEN
		IF RightCabin.Display_Current_Floor < Target_Floor_Right THEN // 上行
			RightTower.Signal_Start_CabinMotor_P := 1;
			RightTower.Signal_Start_CabinMotor_N := 0;
			RightTower.Signal_Stop_CabinMotor := 0;			
		ELSIF RightCabin.Display_Current_Floor > Target_Floor_Right THEN // 下行
			RightTower.Signal_Start_CabinMotor_P := 0;
			RightTower.Signal_Start_CabinMotor_N := 1;
			RightTower.Signal_Stop_CabinMotor := 0;
		ELSE // 不动
			RightTower.Signal_Start_CabinMotor_P := 0;
			RightTower.Signal_Start_CabinMotor_N := 0;
			RightTower.Signal_Stop_CabinMotor := 1;
		END_IF
	END_IF
	
	
	(*最后,更新指示灯状态*)

	(*左电梯轿厢内数字指示灯亮起与熄灭*)
	IF LeftCabin.Key_Floor1=1 AND LeftCabin.Display_Floor1Selected=UnChecked THEN
		LeftCabin.Display_Floor1Selected:=Checked;
	END_IF
	IF LeftCabin.Display_Floor1Selected=Checked AND LeftCabin.Display_Current_Floor=1 (*AND LeftTower.Sensor_DoorOpened=1*)  THEN
		LeftCabin.Display_Floor1Selected:=UnChecked;
	END_IF
			
		
	IF LeftCabin.Key_Floor2=1 AND LeftCabin.Display_Floor2Selected=UnChecked THEN
		LeftCabin.Display_Floor2Selected:=Checked;
	END_IF
	IF LeftCabin.Display_Floor2Selected=Checked AND LeftCabin.Display_Current_Floor=2 (*AND LeftTower.Sensor_DoorOpened=1*) THEN
		LeftCabin.Display_Floor2Selected:=UnChecked;
	END_IF
	
	
	IF LeftCabin.Key_Floor3=1 AND LeftCabin.Display_Floor3Selected=UnChecked THEN
		LeftCabin.Display_Floor3Selected:=Checked;
	END_IF
	IF LeftCabin.Display_Floor3Selected=Checked AND LeftCabin.Display_Current_Floor=3 (*AND LeftTower.Sensor_DoorOpened=1*) THEN
		LeftCabin.Display_Floor3Selected:=UnChecked;
	END_IF
	
	
	IF LeftCabin.Key_Floor4=1 AND LeftCabin.Display_Floor4Selected=UnChecked THEN
		LeftCabin.Display_Floor4Selected:=Checked;
	END_IF
	IF LeftCabin.Display_Floor4Selected=Checked AND LeftCabin.Display_Current_Floor=4 (*AND LeftTower.Sensor_DoorOpened=1*) THEN
		LeftCabin.Display_Floor4Selected:=UnChecked;
	END_IF
	
	
	IF LeftCabin.Key_Floor5=1 AND LeftCabin.Display_Floor5Selected=UnChecked THEN
		LeftCabin.Display_Floor5Selected:=Checked;
	END_IF
	IF LeftCabin.Display_Floor5Selected=Checked AND LeftCabin.Display_Current_Floor=5 (*AND LeftTower.Sensor_DoorOpened=1*) THEN
		LeftCabin.Display_Floor5Selected:=UnChecked;
	END_IF
	
	
	IF LeftCabin.Key_Floor6=1 AND LeftCabin.Display_Floor6Selected=UnChecked THEN
		LeftCabin.Display_Floor6Selected:=Checked;
	END_IF
	IF LeftCabin.Display_Floor6Selected=Checked AND LeftCabin.Display_Current_Floor=6 (*AND LeftTower.Sensor_DoorOpened=1*) THEN
		LeftCabin.Display_Floor6Selected:=UnChecked;
	END_IF
	
	
	IF LeftCabin.Key_Floor7=1 AND LeftCabin.Display_Floor7Selected=UnChecked THEN
		LeftCabin.Display_Floor7Selected:=Checked;
	END_IF
	IF LeftCabin.Display_Floor7Selected=Checked AND LeftCabin.Display_Current_Floor=7 (*AND LeftTower.Sensor_DoorOpened=1*) THEN
		LeftCabin.Display_Floor7Selected:=UnChecked;
	END_IF
	
	(*右电梯轿厢内数字指示灯亮起与熄灭*)
	IF RightCabin.Key_Floor1=1 AND RightCabin.Display_Floor1Selected=UnChecked THEN
		RightCabin.Display_Floor1Selected:=Checked;
	END_IF
	IF RightCabin.Display_Floor1Selected=Checked AND RightCabin.Display_Current_Floor=1 (*AND RightTower.Sensor_DoorOpened=1*)  THEN
		RightCabin.Display_Floor1Selected:=UnChecked;
	END_IF
			
		
	IF RightCabin.Key_Floor2=1 AND RightCabin.Display_Floor2Selected=UnChecked THEN
		RightCabin.Display_Floor2Selected:=Checked;
	END_IF
	IF RightCabin.Display_Floor2Selected=Checked AND RightCabin.Display_Current_Floor=2 (*AND RightTower.Sensor_DoorOpened=1*) THEN
		RightCabin.Display_Floor2Selected:=UnChecked;
	END_IF
	
	
	IF RightCabin.Key_Floor3=1 AND RightCabin.Display_Floor3Selected=UnChecked THEN
		RightCabin.Display_Floor3Selected:=Checked;
	END_IF
	IF RightCabin.Display_Floor3Selected=Checked AND RightCabin.Display_Current_Floor=3 (*AND RightTower.Sensor_DoorOpened=1*) THEN
		RightCabin.Display_Floor3Selected:=UnChecked;
	END_IF
	
	
	IF RightCabin.Key_Floor4=1 AND RightCabin.Display_Floor4Selected=UnChecked THEN
		RightCabin.Display_Floor4Selected:=Checked;
	END_IF
	IF RightCabin.Display_Floor4Selected=Checked AND RightCabin.Display_Current_Floor=4 (*AND RightTower.Sensor_DoorOpened=1*) THEN
		RightCabin.Display_Floor4Selected:=UnChecked;
	END_IF
	
	
	IF RightCabin.Key_Floor5=1 AND RightCabin.Display_Floor5Selected=UnChecked THEN
		RightCabin.Display_Floor5Selected:=Checked;
	END_IF
	IF RightCabin.Display_Floor5Selected=Checked AND RightCabin.Display_Current_Floor=5 (*AND RightTower.Sensor_DoorOpened=1*) THEN
		RightCabin.Display_Floor5Selected:=UnChecked;
	END_IF
	
	
	IF RightCabin.Key_Floor6=1 AND RightCabin.Display_Floor6Selected=UnChecked THEN
		RightCabin.Display_Floor6Selected:=Checked;
	END_IF
	IF RightCabin.Display_Floor6Selected=Checked AND RightCabin.Display_Current_Floor=6 (*AND RightTower.Sensor_DoorOpened=1*) THEN
		RightCabin.Display_Floor6Selected:=UnChecked;
	END_IF
	
	
	IF RightCabin.Key_Floor7=1 AND RightCabin.Display_Floor7Selected=UnChecked THEN
		RightCabin.Display_Floor7Selected:=Checked;
	END_IF
	IF RightCabin.Display_Floor7Selected=Checked AND RightCabin.Display_Current_Floor=7 (*AND RightTower.Sensor_DoorOpened=1*) THEN
		RightCabin.Display_Floor7Selected:=UnChecked;
	END_IF
	
	
	(*电梯外上升按键LED灯亮起与熄灭*)

	IF Floor1Panel.Key_Up=1 AND Floor1Panel.Display_UpSelected=UnChecked  THEN
		Floor1Panel.Display_UpSelected:=Checked;
	END_IF
	IF LeftTower.Sensor_Floor1Approached=1 AND LeftTower.Sensor_DoorOpened=1  THEN
		Floor1Panel.Display_UpSelected:=UnChecked;
	END_IF
	IF RightTower.Sensor_Floor1Approached=1 AND RightTower.Sensor_DoorOpened=1  THEN
		Floor1Panel.Display_UpSelected:=UnChecked;
	END_IF
	
	
	IF Floor2Panel.Key_Up=1 AND Floor2Panel.Display_UpSelected=UnChecked  THEN
		Floor2Panel.Display_UpSelected:=Checked;
	END_IF
	IF LeftTower.Sensor_Floor2Approached=1 AND LeftTower.Sensor_DoorOpened=1  THEN
		Floor2Panel.Display_UpSelected:=UnChecked;
	END_IF
	IF RightTower.Sensor_Floor2Approached=1 AND RightTower.Sensor_DoorOpened=1  THEN
		Floor2Panel.Display_UpSelected:=UnChecked;
	END_IF
	
	
	IF Floor3Panel.Key_Up=1 AND Floor3Panel.Display_UpSelected=UnChecked  THEN
		Floor3Panel.Display_UpSelected:=Checked;
	END_IF
	IF LeftTower.Sensor_Floor3Approached=1 AND LeftTower.Sensor_DoorOpened=1  THEN
		Floor3Panel.Display_UpSelected:=UnChecked;
	END_IF
	IF RightTower.Sensor_Floor3Approached=1 AND RightTower.Sensor_DoorOpened=1  THEN
		Floor3Panel.Display_UpSelected:=UnChecked;
	END_IF
	
	
	IF Floor4Panel.Key_Up=1 AND Floor4Panel.Display_UpSelected=UnChecked  THEN
		Floor4Panel.Display_UpSelected:=Checked;
	END_IF
	IF LeftTower.Sensor_Floor4Approached=1 AND LeftTower.Sensor_DoorOpened=1  THEN
		Floor4Panel.Display_UpSelected:=UnChecked;
	END_IF
	IF RightTower.Sensor_Floor4Approached=1 AND RightTower.Sensor_DoorOpened=1  THEN
		Floor4Panel.Display_UpSelected:=UnChecked;
	END_IF
	
	
	IF Floor5Panel.Key_Up=1 AND Floor5Panel.Display_UpSelected=UnChecked  THEN
		Floor5Panel.Display_UpSelected:=Checked;
	END_IF
	IF LeftTower.Sensor_Floor5Approached=1 AND LeftTower.Sensor_DoorOpened=1  THEN
		Floor5Panel.Display_UpSelected:=UnChecked;
	END_IF
	IF RightTower.Sensor_Floor5Approached=1 AND RightTower.Sensor_DoorOpened=1  THEN
		Floor5Panel.Display_UpSelected:=UnChecked;
	END_IF
	
	
	IF Floor6Panel.Key_Up=1 AND Floor6Panel.Display_UpSelected=UnChecked  THEN
		Floor6Panel.Display_UpSelected:=Checked;
	END_IF
	IF LeftTower.Sensor_Floor6Approached=1 AND LeftTower.Sensor_DoorOpened=1  THEN
		Floor6Panel.Display_UpSelected:=UnChecked;
	END_IF
	IF RightTower.Sensor_Floor6Approached=1 AND RightTower.Sensor_DoorOpened=1  THEN
		Floor6Panel.Display_UpSelected:=UnChecked;
	END_IF
	
	(*电梯外下降按键LED灯亮起与熄灭*)
	
	IF Floor2Panel.Key_Down=1 AND Floor2Panel.Display_DownSelected=UnChecked  THEN
		Floor2Panel.Display_DownSelected:=Checked;
	END_IF
	IF LeftTower.Sensor_Floor2Approached=1 AND LeftTower.Sensor_DoorOpened=1  THEN
		Floor2Panel.Display_DownSelected:=UnChecked;
	END_IF
	    IF RightTower.Sensor_Floor2Approached=1 AND RightTower.Sensor_DoorOpened=1  THEN
		Floor2Panel.Display_DownSelected:=UnChecked;
	    END_IF
	
	
		IF Floor3Panel.Key_Down=1 AND Floor3Panel.Display_DownSelected=UnChecked  THEN
			Floor3Panel.Display_DownSelected:=Checked;
		END_IF
		IF LeftTower.Sensor_Floor3Approached=1 AND LeftTower.Sensor_DoorOpened=1  THEN
			Floor3Panel.Display_DownSelected:=UnChecked;
		END_IF
	    IF RightTower.Sensor_Floor3Approached=1 AND RightTower.Sensor_DoorOpened=1  THEN
		Floor3Panel.Display_DownSelected:=UnChecked;
	    END_IF
	
	
		IF Floor4Panel.Key_Down=1 AND Floor4Panel.Display_DownSelected=UnChecked  THEN
			Floor4Panel.Display_DownSelected:=Checked;
		END_IF
		IF LeftTower.Sensor_Floor4Approached=1 AND LeftTower.Sensor_DoorOpened=1  THEN
			Floor4Panel.Display_DownSelected:=UnChecked;
		END_IF
	    IF RightTower.Sensor_Floor4Approached=1 AND RightTower.Sensor_DoorOpened=1  THEN
		Floor4Panel.Display_DownSelected:=UnChecked;
 	    END_IF
	
	
		IF Floor5Panel.Key_Down=1 AND Floor5Panel.Display_DownSelected=UnChecked  THEN
			Floor5Panel.Display_DownSelected:=Checked;
		END_IF
		IF LeftTower.Sensor_Floor5Approached=1 AND LeftTower.Sensor_DoorOpened=1  THEN
			Floor5Panel.Display_DownSelected:=UnChecked;
		END_IF
	    IF RightTower.Sensor_Floor5Approached=1 AND RightTower.Sensor_DoorOpened=1  THEN
		Floor5Panel.Display_DownSelected:=UnChecked;
	    END_IF
	
	
		IF Floor6Panel.Key_Down=1 AND Floor6Panel.Display_DownSelected=UnChecked  THEN
			Floor6Panel.Display_DownSelected:=Checked;
		END_IF
		IF LeftTower.Sensor_Floor6Approached=1 AND LeftTower.Sensor_DoorOpened=1  THEN
			Floor6Panel.Display_DownSelected:=UnChecked;
		END_IF
	    IF RightTower.Sensor_Floor6Approached=1 AND RightTower.Sensor_DoorOpened=1  THEN
		Floor6Panel.Display_DownSelected:=UnChecked;
	    END_IF
	
	
		IF Floor7Panel.Key_Down=1 AND Floor7Panel.Display_DownSelected=UnChecked  THEN
			Floor7Panel.Display_DownSelected:=Checked;
		END_IF
		IF LeftTower.Sensor_Floor7Approached=1 AND LeftTower.Sensor_DoorOpened=1  THEN
			Floor7Panel.Display_DownSelected:=UnChecked;
		END_IF
	    IF RightTower.Sensor_Floor7Approached=1 AND RightTower.Sensor_DoorOpened=1  THEN
		Floor7Panel.Display_DownSelected:=UnChecked;
	    END_IF
	
END_PROGRAM
