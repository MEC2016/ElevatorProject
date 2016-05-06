
PROGRAM _CYCLIC
	(* Insert code here *)
	(*下列代码只是为了测试*)
	
	
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
		
	
	
	
END_PROGRAM
