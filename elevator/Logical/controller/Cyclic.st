
PROGRAM _CYCLIC
	(* Insert code here *)
	(*下列代码只是为了测试*)
	
	
	LeftTower.Signal_Start_DoorMotor_P := LeftCabin.Key_Open ;
	LeftTower.Signal_Start_DoorMotor_N := LeftCabin.Key_Close ;
	
	RightTower.Signal_Start_DoorMotor_P := RightCabin.Key_Open ;
	RightTower.Signal_Start_DoorMotor_N := RightCabin.Key_Close ;
	
//refresh the UpList
	FOR i := 0 TO 6 DO
		IF UpList[i] = 0 THEN
			UpLast := i;
			EXIT;
		END_IF
	END_FOR
	
	FOR i := 0 TO 6 DO           
		IF FloorPanel[i].Key_Up THEN
			FOR j := 0 TO 6 DO
				IF UpList[j] = i+1 THEN
					EXIT;
				END_IF
				IF j = 6 THEN
					UpList[UpLast] := i+1;
					UpLast := UpLast+1;
				END_IF
			END_FOR
		END_IF
	END_FOR
//refresh the DownList
	FOR i := 0 TO 6 DO
		IF DownList[i] = 0 THEN
			DownLast := i;
			EXIT;
		END_IF
	END_FOR
	
	FOR i := 0 TO 6 DO           
		IF FloorPanel[i].Key_Down THEN
			FOR j := 0 TO 6 DO
				IF DownList[j] = i+1 THEN
					EXIT;
				END_IF
				IF j = 6 THEN
					DownList[DownLast] := i+1;
					DownLast := DownLast+1;
				END_IF
			END_FOR
		END_IF
	END_FOR
	IF UpList[0] <> 0 THEN
		IF LeftCabin.Display_Current_Floor < UpList[0] THEN
			LeftTower.Signal_Start_CabinMotor_P := TRUE;
			LeftTower.Signal_Start_CabinMotor_N := FALSE;
		END_IF
		IF LeftCabin.Display_Current_Floor > UpList[0] THEN
			LeftTower.Signal_Start_CabinMotor_N := TRUE;
			LeftTower.Signal_Start_CabinMotor_N := FALSE;
		END_IF
		IF LeftCabin.Display_Current_Floor = UpList[0] THEN
			LeftTower.Signal_Stop_CabinMotor := TRUE;
			LeftTower.Signal_Start_CabinMotor_P := FALSE;
			LeftTower.Signal_Start_CabinMotor_N := FALSE;			
			LeftTower.Signal_Start_DoorMotor_P := TRUE;
			FOR i := 0 TO 6 DO 
				UpList[i] := UpList[i+1] ;
				EXIT;
				END_FOR
		END_IF		
	END_IF
	
	
	
	
//	LeftTower.Signal_Start_CabinMotor_P := FloorPanel[0].Key_Up ;
//	RightTower.Signal_Start_CabinMotor_P := FloorPanel[0].Key_Up ;
//	
//	LeftTower.Signal_Start_CabinMotor_N := FloorPanel[6].Key_Down ;
//	RightTower.Signal_Start_CabinMotor_N := FloorPanel[6].Key_Down ;
//
//	LeftTower.Signal_Stop_CabinMotor := FloorPanel[3].Key_Up ;
//	RightTower.Signal_Stop_CabinMotor := FloorPanel[3].Key_Up ;
	
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
		
	
	
	
END_PROGRAM
