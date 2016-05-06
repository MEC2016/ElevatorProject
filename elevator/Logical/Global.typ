(*********************************************************************************
 * Copyright:  
 * Author:    Chen
 * Created:   April 23, 2016/7:59 PM 
 *********************************************************************************
 * Declaration of global data types
 *********************************************************************************)

TYPE
	
 (*电梯井接口信号定义*)	
tTower_Interface: STRUCT 
		
		Sensor_DoorOpened : BOOL;(*传感器信号指示轿厢门已打开*)
		Sensor_DoorClosed : BOOL;(*传感器信号指示轿厢门已关闭*)
		
		Sensor_Floor1Approached :  BOOL;(*传感器信号指示轿厢已到达对应楼层*)
		Sensor_Floor2Approached :  BOOL;
		Sensor_Floor3Approached :  BOOL;
		Sensor_Floor4Approached :  BOOL;
		Sensor_Floor5Approached :  BOOL;
		Sensor_Floor6Approached :  BOOL;
		Sensor_Floor7Approached :  BOOL;
		
		Signal_Start_DoorMotor_P : BOOL; (*控制信号，上升沿触发，使轿厢门电机正转固定的角度，打开轿厢门*)
		Signal_Start_DoorMotor_N : BOOL; (*控制信号，上升沿触发，使轿厢门电机反转固定的角度，关闭轿厢门*)
		
		Signal_Start_CabinMotor_P : BOOL; (*控制信号，上升沿触发，使轿厢提升电机正转，电梯上行*)
		Signal_Start_CabinMotor_N : BOOL; (*控制信号，上升沿触发，使轿厢提升电机反转，电梯下行*)
		Signal_Stop_CabinMotor : BOOL;    (*控制信号，上升沿触发，使轿厢提升电机停止*)
				
		Sensor_Position_Door : UINT;	  (*轿厢门位置反馈*)
		Sensor_Position_Cabin : UINT;     (*轿厢垂直位置反馈*)
		
END_STRUCT;
			


(*楼层面板接口信号定义*)		
tFloor_Interface: STRUCT	
		Key_Up : BOOL;(*向上按钮*)
		Key_Down : BOOL;(*向下按钮*)
		Display_Current_Floor_Left : USINT;(*左电梯当前楼层显示数码管*)
		Display_Current_Floor_Right : USINT;(*右电梯当前楼层显示数码管*)
		Display_Current_Direction_Left : STRING[2];(*左电梯当前运行方向显示数码管*)
		Display_Current_Direction_Right : STRING[2];(*右电梯当前运行方向显示数码管*)		    
END_STRUCT;

(*对应楼层的设置状态*)
tCheckStatus : 
		(
		Checked:=16#3340,
		UnChecked:=16#FE10		
);

(*轿厢接口信号定义*)
tCabin_Interface: STRUCT	
		
		Key_Open : BOOL; (*开门按钮*)
		Key_Close : BOOL; (*关门按钮*)
		Key_Floor1 : BOOL; (*目标楼层按钮*)
		Key_Floor2 : BOOL;
		Key_Floor3 : BOOL;
		Key_Floor4 : BOOL;
		Key_Floor5 : BOOL;
		Key_Floor6 : BOOL;
		Key_Floor7 : BOOL;
		Display_Floor1Selected : tCheckStatus;(*目标楼层被选中指示灯*)
		Display_Floor2Selected : tCheckStatus;
		Display_Floor3Selected : tCheckStatus;
		Display_Floor4Selected : tCheckStatus;
		Display_Floor5Selected : tCheckStatus;
		Display_Floor6Selected : tCheckStatus;
		Display_Floor7Selected : tCheckStatus;
			
		Display_Current_Floor : USINT;  (*当前楼层显示数码管*)
		Display_Current_Direction : STRING[2];    (*当前运行方向显示数码管*)
		
END_STRUCT;
	
	
END_TYPE
