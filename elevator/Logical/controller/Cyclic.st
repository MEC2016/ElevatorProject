
PROGRAM _CYCLIC
	(* Insert code here *)
	(*ÏÂÁÐ´úÂëÖ»ÊÇÎªÁË²âÊÔ*)
	
	(*停电梯*)
	IF Target_Floor_Left=1 AND	Current_Floor_Left=Target_Floor_Left THEN 
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
	END_IF
	(*停电梯*)
	
	LeftTower.Signal_Start_DoorMotor_P := LeftCabin.Key_Open ;
	LeftTower.Signal_Start_DoorMotor_N := LeftCabin.Key_Close ;
	
	RightTower.Signal_Start_DoorMotor_P := RightCabin.Key_Open ;
	RightTower.Signal_Start_DoorMotor_N := RightCabin.Key_Close ;
	
	LeftTower.Signal_Start_CabinMotor_P := Floor1Panel.Key_Up ;
	RightTower.Signal_Start_CabinMotor_P := Floor1Panel.Key_Up ;
	
	LeftTower.Signal_Start_CabinMotor_N := Floor7Panel.Key_Down ;
	RightTower.Signal_Start_CabinMotor_N := Floor7Panel.Key_Down ;

	LeftTower.Signal_Stop_CabinMotor := Floor3Panel.Key_Up ;
	RightTower.Signal_Stop_CabinMotor := Floor3Panel.Key_Up ;
	
	IF LeftCabin.Display_Floor1Selected = UnChecked AND LeftCabin.Key_Floor1 =1 THEN
		LeftCabin.Display_Floor1Selected := Checked;
	END_IF	
	IF LeftCabin.Display_Floor2Selected = UnChecked AND LeftCabin.Key_Floor2 =1 THEN
		LeftCabin.Display_Floor2Selected := Checked;
	END_IF	
	IF LeftCabin.Display_Floor3Selected = UnChecked AND LeftCabin.Key_Floor3 =1 THEN
		LeftCabin.Display_Floor3Selected := Checked;
	END_IF	
	IF LeftCabin.Display_Floor4Selected = UnChecked AND LeftCabin.Key_Floor4 =1 THEN
		LeftCabin.Display_Floor4Selected := Checked;
	END_IF	
	IF LeftCabin.Display_Floor5Selected = UnChecked AND LeftCabin.Key_Floor5 =1 THEN
		LeftCabin.Display_Floor5Selected := Checked;
	END_IF	
	IF LeftCabin.Display_Floor6Selected = UnChecked AND LeftCabin.Key_Floor6 =1 THEN
		LeftCabin.Display_Floor6Selected := Checked;
	END_IF	
	IF LeftCabin.Display_Floor7Selected = UnChecked AND LeftCabin.Key_Floor7 =1 THEN
		LeftCabin.Display_Floor7Selected := Checked;
	END_IF	
	
	IF RightCabin.Display_Floor1Selected = UnChecked AND RightCabin.Key_Floor1 =1 THEN
		RightCabin.Display_Floor1Selected := Checked;
	END_IF	
	IF RightCabin.Display_Floor2Selected = UnChecked AND RightCabin.Key_Floor2 =1 THEN
		RightCabin.Display_Floor2Selected := Checked;
	END_IF	
	IF RightCabin.Display_Floor3Selected = UnChecked AND RightCabin.Key_Floor3 =1 THEN
		RightCabin.Display_Floor3Selected := Checked;
	END_IF	
	IF RightCabin.Display_Floor4Selected = UnChecked AND RightCabin.Key_Floor4 =1 THEN
		RightCabin.Display_Floor4Selected := Checked;
	END_IF	
	IF RightCabin.Display_Floor5Selected = UnChecked AND RightCabin.Key_Floor5 =1 THEN
		RightCabin.Display_Floor5Selected := Checked;
	END_IF	
	IF RightCabin.Display_Floor6Selected = UnChecked AND RightCabin.Key_Floor6 =1 THEN
		RightCabin.Display_Floor6Selected := Checked;
	END_IF	
	IF RightCabin.Display_Floor7Selected = UnChecked AND RightCabin.Key_Floor7 =1 THEN
		RightCabin.Display_Floor7Selected := Checked;
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

	
	
END_PROGRAM
