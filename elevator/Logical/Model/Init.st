

PROGRAM _INIT
	(* Insert code here *)
	LeftDoorState := DoorIsClosed;
	LeftCabinState := CabinIsStoped;
	
	LeftTower.Sensor_DoorClosed := TRUE;
	LeftTower.Sensor_DoorOpened := FALSE;
	LeftTower.Sensor_Floor1Approached := TRUE;
	LeftTower.Sensor_Floor2Approached := FALSE;
	LeftTower.Sensor_Floor3Approached := FALSE;
	LeftTower.Sensor_Floor4Approached := FALSE;
	LeftTower.Sensor_Floor5Approached := FALSE;
	LeftTower.Sensor_Floor6Approached := FALSE;
	LeftTower.Sensor_Floor7Approached := FALSE;
	LeftTower.Sensor_Position_Door := 0;	
	LeftTower.Sensor_Position_Cabin := 0; 
	
	LeftCabin.Display_Current_Direction := '--';
	RightCabin.Display_Current_Direction := '--';
	
	
	
		
	
END_PROGRAM