PROGRAM _CYCLIC
<?xml version="1.0"?>
<?AutomationStudio Version=3.0.71?>
<!-- Automation Studio Generated XML Section -->
<networks maxcolumn="0">
	<network label="" comment="" row="2" column="0" commented="0">
		<row><contact type="closed" name="LeftTower.Sensor_Floor1Approached"/><contact type="closed" name="LeftTower.Sensor_Floor2Approached"/><contact type="closed" name="LeftTower.Sensor_Floor3Approached"/><contact type="closed" name="LeftTower.Sensor_Floor4Approached"/><contact type="closed" name="LeftTower.Sensor_Floor5Approached"/><contact type="closed" name="LeftTower.Sensor_Floor6Approached"/><contact type="closed" name="LeftTower.Sensor_Floor7Approached"/><contact type="closed" name="X022"/><contact type="closed" name="X023"/><coil type="open" name="M30"/></row>
		<row><empty/><empty/><empty/><empty/><empty/><empty/><empty/><empty/><empty or="true"/><coil type="reset" name="C0"/></row>
	</network>
	<network label="" comment="" row="9" column="0" commented="0">
		<row><contact type="open" name="LeftTower.Sensor_Floor1Approached"/><contact type="closed" name="C0"/><line/><coil type="reset" name="C1"/></row>
		<row><contact type="open" name="LeftTower.Sensor_Floor2Approached" or="true"/><empty/><empty/><empty/></row>
		<row><contact type="open" name="LeftTower.Sensor_Floor3Approached" or="true"/><empty/><empty/><empty/></row>
		<row><contact type="open" name="LeftTower.Sensor_Floor4Approached" or="true"/><empty/><empty/><empty/></row>
		<row><contact type="open" name="X022" or="true"/><empty/><empty/><empty/></row>
		<row><contact type="open" name="X023" or="true"/><empty/><empty/><empty/></row>
		<row><contact type="open" name="LeftTower.Sensor_Floor5Approached" or="true"/><empty/><empty/><empty/></row>
		<row><contact type="open" name="LeftTower.Sensor_Floor6Approached" or="true"/><empty/><empty/><empty/></row>
		<row><contact type="open" name="LeftTower.Sensor_Floor7Approached" or="true"/><empty/><empty/><empty/></row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row><contact type="closed" name="M30"/><contact type="open" name="LeftCabin.Key_Open"/><line/><coil type="open" name="M31"/></row>
		<row><empty or="true"/><contact type="open" name="LeftCabin.Key_Close"/><line/><coil type="open" name="M32"/></row>
	</network>
	<network label="" comment="" row="10" column="0" commented="0">
		<row><contact type="open" name="LeftTower.Sensor_Floor1Approached"/><contact type="closed" name="LeftTower.Sensor_DoorOpened"/><contact type="closed" name="LeftTower.Sensor_DoorClosed"/><contact type="closed" name="LeftTower.Signal_Start_DoorMotor_P"/><contact type="closed" name="LeftTower.Signal_Start_DoorMotor_N"/><contact type="closed" name="C0"/><contact type="closed" name="M32"/><coil type="open" name="M33"/></row>
		<row><contact type="open" name="LeftTower.Sensor_Floor2Approached" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/><empty/></row>
		<row><contact type="open" name="LeftTower.Sensor_Floor3Approached" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/><empty/></row>
		<row><contact type="open" name="LeftTower.Sensor_Floor4Approached" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/><empty/></row>
		<row><contact type="open" name="X022" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/><empty/></row>
		<row><contact type="open" name="X023" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/><empty/></row>
		<row><contact type="open" name="M33" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/><empty/></row>
		<row><contact type="open" name="LeftTower.Sensor_Floor5Approached" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/><empty/></row>
		<row><contact type="open" name="LeftTower.Sensor_Floor6Approached" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/><empty/></row>
		<row><contact type="open" name="LeftTower.Sensor_Floor7Approached" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/><empty/></row>
	</network>
	<network label="" comment="" row="7" column="0" commented="0">
		<row><line/><contact type="closed" name="LeftTower.Sensor_DoorOpened"/><contact type="closed" name="LeftTower.Signal_Start_DoorMotor_P"/><contact type="closed" name="LeftTower.Signal_Start_CabinMotor_P"/><contact type="closed" name="LeftTower.Signal_Start_CabinMotor_N"/><contact type="closed" name="M32"/><coil type="open" name="M01"/></row>
		<row><contact type="open" name="M33" or="true"/><line/><line/><line/><line/><line/><coil type="open" name="T0K20"/></row>
		<row><contact type="open" name="M70" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/></row>
		<row><contact type="open" name="M71" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/></row>
		<row><contact type="open" name="M72" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/></row>
		<row><contact type="open" name="M73" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/></row>
		<row><contact type="open" name="M01" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/></row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row><contact type="open" name="T0"/><contact type="closed" name="LeftTower.Sensor_DoorOpened"/><contact type="closed" name="LeftTower.Signal_Start_DoorMotor_P"/><contact type="closed" name="LeftTower.Signal_Start_CabinMotor_P"/><contact type="closed" name="LeftTower.Signal_Start_CabinMotor_N"/><contact type="closed" name="M32"/><coil type="open" name="LeftTower.Signal_Start_DoorMotor_P"/></row>
		<row><contact type="open" name="LeftTower.Signal_Start_DoorMotor_P" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/></row>
		<row><contact type="open" name="M31" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/></row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row><contact type="open" name="LeftTower.Sensor_DoorOpened"/><contact type="closed" name="LeftTower.Signal_Start_DoorMotor_N"/><line/><coil type="open" name="T1K100"/></row>
		<row><empty/><empty or="true"/><line/><coil type="open" name="M34"/></row>
	</network>
	<network label="" comment="" row="2" column="0" commented="0">
		<row><contact type="open" name="T1"/><contact type="closed" name="LeftTower.Sensor_DoorClosed"/><contact type="closed" name="LeftTower.Signal_Start_DoorMotor_P"/><contact type="closed" name="LeftTower.Signal_Start_CabinMotor_P"/><contact type="closed" name="LeftTower.Signal_Start_CabinMotor_N"/><contact type="closed" name="M31"/><coil type="open" name="M35"/></row>
		<row><contact type="open" name="M35" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/></row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row><contact type="open" name="M32"/><contact type="closed" name="LeftTower.Sensor_DoorClosed"/><contact type="closed" name="LeftTower.Signal_Start_DoorMotor_P"/><contact type="closed" name="LeftTower.Signal_Start_CabinMotor_P"/><contact type="closed" name="LeftTower.Signal_Start_DoorMotor_N"/><contact type="closed" name="M31"/><coil type="open" name="LeftTower.Sensor_DoorClosed"/></row>
		<row><contact type="open" name="M35" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/></row>
		<row><contact type="open" name="LeftTower.Signal_Start_DoorMotor_N" or="true"/><empty/><empty/><empty/><empty/><empty/><empty/></row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row><contact type="open" name="LeftTower.Sensor_DoorOpened"/><contact type="closed" name="LeftTower.Signal_Start_CabinMotor_P"/><contact type="closed" name="LeftTower.Signal_Start_CabinMotor_N"/><coil type="open" name="C0K1"/></row>
		<row><contact type="open" name="M31" or="true"/><empty/><empty/><empty/></row>
		<row><contact type="open" name="C0" or="true"/><empty/><empty/><empty/></row>
	</network>
	<network label="" comment="" row="3" column="0" commented="0">
		<row><contact type="open" name="LeftTower.Sensor_DoorClosed"/><contact type="open" name="C0"/><contact type="closed" name="LeftTower.Signal_Start_CabinMotor_P"/><contact type="closed" name="LeftTower.Signal_Start_CabinMotor_N"/><coil type="open" name="C1K1"/></row>
		<row><contact type="open" name="M32"/><line or="true"/><empty/><empty/><empty/></row>
		<row><contact type="open" name="C1"/><line or="true"/><empty/><empty/><empty/></row>
	</network>
</networks>
END_PROGRAM


