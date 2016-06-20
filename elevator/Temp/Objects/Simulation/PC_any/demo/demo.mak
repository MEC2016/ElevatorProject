######################################################
#                                                    #
# Automatic generated Makefile for Visual Components #
#                                                    #
#                  Do NOT edit!                      #
#                                                    #
######################################################

VCC=@"$(AS_BIN_PATH)/br.vc.pc.exe"
LINK=@"$(AS_BIN_PATH)/BR.VC.Link.exe"
MODGEN=@"$(AS_BIN_PATH)/BR.VC.ModGen.exe"
VCPL=@"$(AS_BIN_PATH)/BR.VC.PL.exe"
VCHWPP=@"$(AS_BIN_PATH)/BR.VC.HWPP.exe"
VCDEP=@"$(AS_BIN_PATH)/BR.VC.Depend.exe"
VCFLGEN=@"$(AS_BIN_PATH)/BR.VC.lfgen.exe"
VCREFHANDLER=@"$(AS_BIN_PATH)/BR.VC.CrossReferenceHandler.exe"
VCXREFEXTENDER=@"$(AS_BIN_PATH)/BR.AS.CrossRefVCExtender.exe"
RM=CMD /C DEL
PALFILE_demo=$(AS_PROJECT_PATH)/Logical/demo/Palette.vcr
VCCFLAGS_demo=-server -proj demo -vc "$(AS_PROJECT_PATH)/Logical/demo/VCObject.vc" -prj_path "$(AS_PROJECT_PATH)" -temp_path "$(AS_TEMP_PATH)" -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path "$(AS_CPU_PATH)"
VCFIRMWARE=4.21.1
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.21.1/SG4
VCOBJECT_demo=$(AS_PROJECT_PATH)/Logical/demo/VCObject.vc
VCSTARTUP="vcstart.br"
VCLOD="vclod.br"
VCSTPOST="vcstpost.br"
TARGET_FILE_demo=$(AS_CPU_PATH)/demo.br
OBJ_SCOPE_demo=
PRJ_PATH_demo=$(AS_PROJECT_PATH)
SRC_PATH_demo=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_demo)/demo
TEMP_PATH_demo=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/demo
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_demo=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_demo=$(TEMP_PATH_demo)/libraries.vci
VC_XREF_BUILDFILE_demo=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_demo=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC="$(TEMP_PATH_demo)/cpuhwc.vci"
VC_STATIC_OPTIONS_demo="$(TEMP_PATH_demo)/vcStaticOptions.xml"
VC_STATIC_OPTIONS_Shared="$(TEMP_PATH_Shared)/vcStaticOptions.xml"
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCFntDat/Font_demo.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_demo=-d vcgclass -profile "False"
DEFAULT_STYLE_SHEET_demo=Source[local].StyleSheet[Color]
SHARED_MODULE=$(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
LFNTFLAGS_demo=-P "$(AS_PROJECT_PATH)" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)"
BDRFLAGS_demo=-P "$(AS_PROJECT_PATH)" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)"

# Local Libs
LIB_LOCAL_OBJ_demo=$(TEMP_PATH_demo)/localobj.vca

# Hardware sources
PANEL_HW_OBJECT_demo=$(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/demo/dis.Hardware.vco
PANEL_HW_SOURCE_demo=C:/Users/Rick/Desktop/gittest/ElevatorProject/elevator/Physical/Simulation/Hardware.hw 
DIS_OBJECTS_demo=$(PANEL_HW_OBJECT_demo) $(KEYMAP_OBJECTS_demo)

# KeyMapping flags
$(TEMP_PATH_demo)/dis.PS2-Keyboard.vco: $(AS_PROJECT_PATH)/Physical/$(AS_CONFIGURATION)/$(AS_PLC)/VC/PS2-Keyboard.dis
	$(VCHWPP) -f "$(PANEL_HW_SOURCE_demo)" -o "$(subst .vco,.vci,$(TEMP_PATH_demo)/dis.PS2-Keyboard.vco)" -n demo -d demo -pal "$(PALFILE_demo)" -c "$(AS_CONFIGURATION)" -p "$(AS_PLC)" -ptemp "$(AS_TEMP_PLC)" -B "D4.21" -L "" -hw "$(CPUHWC)" -warninglevel 2 -so $(VC_STATIC_OPTIONS_demo) -sos $(VC_STATIC_OPTIONS_Shared) -keyboard "$(AS_PROJECT_PATH)/Physical/$(AS_CONFIGURATION)/$(AS_PLC)/VC/PS2-Keyboard.dis" -fp "$(AS_VC_PATH)/Firmware/V4.21.1/SG4" -prj "$(AS_PROJECT_PATH)" -apj "elevator" -sfas -vcob "$(VCOBJECT_demo)"
	$(VCC) -f "$(subst .vco,.vci,$@)" -o "$@" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -k "$(VCVK_SOURCES_demo)" $(VCCFLAGS_demo) -p demo -sfas

KEYMAP_SOURCES_demo=$(AS_PROJECT_PATH)/Physical/$(AS_CONFIGURATION)/$(AS_PLC)/VC/PS2-Keyboard.dis 
KEYMAP_OBJECTS_demo=$(TEMP_PATH_demo)/dis.PS2-Keyboard.vco 

# All Source Objects
FNINFO_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/demo/Fonts/DefaultFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/demo/Fonts/Arial9px.fninfo \
	$(AS_PROJECT_PATH)/Logical/demo/Fonts/Arial9pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/demo/Fonts/Arial10pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/demo/Fonts/Arial12px.fninfo \
	$(AS_PROJECT_PATH)/Logical/demo/Fonts/Arial9pxValue.fninfo 

BMINFO_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA1.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA2.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA3.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/NumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/NumPad.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AcknowledgeReset.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmActive.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmBypassOFF.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmBypassON.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmInactive.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmLatched.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmNotQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/Reset.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ResetAcknowledge.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/Triggered.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ListPadHor.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ListPadVer.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/backward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/backward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/global_area_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/global_area_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/forward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/forward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/control_button_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/control_button_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/right_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/right_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/left_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/left_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/multi_up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/multi_up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/multi_down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/multi_down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ProgressBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/down_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/down_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/up_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/global_area_gradient_upside.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/global_area_gradient_downside.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/frame_header.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/up_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/EditPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/EditPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneNumPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneListPadVer_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPadQVGA1_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneEditpadQVGA2_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneEditPadQVGA3_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneEditPadVga_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneEditPadVga_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneListPadHor_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneNumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/mse.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/mse1.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/off3.bminfo \
	$(AS_PROJECT_PATH)/Logical/demo/Bitmaps/on3.bminfo 

BMGRP_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/AlphaPadQVGA.bmgrp \
	$(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/NumPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/AlphaPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/AlarmEvent.bmgrp \
	$(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/AlarmState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/BypassState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/AcknowledgeState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/NavigationPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/Borders.bmgrp 

PAGE_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/demo/Pages/Main_Page.page 

VCS_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/demo/StyleSheets/Gray.vcs \
	$(AS_PROJECT_PATH)/Logical/demo/StyleSheets/Color.vcs 

BDR_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/demo/Borders/Raised.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/Sunken.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/Etched.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/Bump.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/SunkenOuter.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/RaisedInner.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/Flat_black.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/Flat_grey.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/BackwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/BackwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/ControlActive.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/ControlPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/DownActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/DownPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/ForwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/ForwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/GlobalAreaActive.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/GlobalAreaPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/MultiScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/MultiScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/MultiScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/MultiScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/ProgressBarBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollLeftActive.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollLeftPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollRightActive.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollRightPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/UpActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/UpPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/demo/Borders/FrameHeader.bdr 

TPR_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/demo/TouchPads/NumPad.tpr \
	$(AS_PROJECT_PATH)/Logical/demo/TouchPads/AlphaPadQVGA.tpr \
	$(AS_PROJECT_PATH)/Logical/demo/TouchPads/AlphaPad.tpr \
	$(AS_PROJECT_PATH)/Logical/demo/TouchPads/NavigationPad_ver.tpr \
	$(AS_PROJECT_PATH)/Logical/demo/TouchPads/NavigationPad_hor.tpr \
	$(AS_PROJECT_PATH)/Logical/demo/TouchPads/EditPad.tpr 

TDC_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/demo/Trends/TrendData.tdc 

VCVK_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/demo/VirtualKeys.vcvk 

VCR_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/demo/Palette.vcr 

# Runtime Object sources
VCR_OBJECT_demo=$(TEMP_PATH_demo)/vcrt.vco
VCR_SOURCE_demo=$(SRC_PATH_demo)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_OBJECT_demo): $(PANEL_HW_SOURCE_demo) $(PALFILE_demo) $(VC_LIBRARY_LIST_demo) $(KEYMAP_SOURCES_demo)
	$(VCHWPP) -f "$<" -o "$(subst .vco,.vci,$@)" -n demo -d demo -pal "$(PALFILE_demo)" -c "$(AS_CONFIGURATION)" -p "$(AS_PLC)" -ptemp "$(AS_TEMP_PLC)" -B "D4.21" -L "" -verbose "False" -profile "False" -hw "$(CPUHWC)" -warninglevel 2 -so $(VC_STATIC_OPTIONS_demo) -sos $(VC_STATIC_OPTIONS_Shared) -fp "$(AS_VC_PATH)/Firmware/V4.21.1/SG4" -sfas -prj "$(AS_PROJECT_PATH)" -apj "elevator" -vcob "$(VCOBJECT_demo)"
	$(VCC) -f "$(subst .vco,.vci,$@)" -o "$@" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -k "$(VCVK_SOURCES_demo)" $(VCCFLAGS_demo) -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


# Pages
PAGE_OBJECTS_demo = $(addprefix $(TEMP_PATH_demo)/page., $(notdir $(PAGE_SOURCES_demo:.page=.vco)))

$(TEMP_PATH_demo)/page.Main_Page.vco: $(AS_PROJECT_PATH)/Logical/demo/Pages/Main_Page.page $(VC_LANGUAGES_demo)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo) -P "$(AS_PROJECT_PATH)" -ds "$(SRC_PATH_demo)/StyleSheets/Color.vcs" -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


#Pages END




# Stylesheets
VCS_OBJECTS_demo = $(addprefix $(TEMP_PATH_demo)/vcs., $(notdir $(VCS_SOURCES_demo:.vcs=.vco)))

$(TEMP_PATH_demo)/vcs.Gray.vco: $(AS_PROJECT_PATH)/Logical/demo/StyleSheets/Gray.vcs
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo) -P "$(AS_PROJECT_PATH)" -ds $(DEFAULT_STYLE_SHEET_demo) -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/vcs.Color.vco: $(AS_PROJECT_PATH)/Logical/demo/StyleSheets/Color.vcs
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo) -P "$(AS_PROJECT_PATH)" -ds $(DEFAULT_STYLE_SHEET_demo) -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


#Stylesheets END




# Virtual Keys
VCVK_OBJECTS_demo = $(addprefix $(TEMP_PATH_demo)/vcvk., $(notdir $(VCVK_SOURCES_demo:.vcvk=.vco)))

$(TEMP_PATH_demo)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/demo/VirtualKeys.vcvk
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas

$(VCVK_OBJECTS_demo): $(VC_LANGUAGES_demo)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_demo = $(addprefix $(TEMP_PATH_demo)/tpr., $(notdir $(TPR_SOURCES_demo:.tpr=.vco)))

$(TEMP_PATH_demo)/tpr.NumPad.vco: $(AS_PROJECT_PATH)/Logical/demo/TouchPads/NumPad.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo) -prj "C:/Users/Rick/Desktop/gittest/ElevatorProject/elevator/Logical/demo" -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/tpr.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/demo/TouchPads/AlphaPadQVGA.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo) -prj "C:/Users/Rick/Desktop/gittest/ElevatorProject/elevator/Logical/demo" -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/tpr.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/demo/TouchPads/AlphaPad.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo) -prj "C:/Users/Rick/Desktop/gittest/ElevatorProject/elevator/Logical/demo" -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/tpr.NavigationPad_ver.vco: $(AS_PROJECT_PATH)/Logical/demo/TouchPads/NavigationPad_ver.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo) -prj "C:/Users/Rick/Desktop/gittest/ElevatorProject/elevator/Logical/demo" -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/tpr.NavigationPad_hor.vco: $(AS_PROJECT_PATH)/Logical/demo/TouchPads/NavigationPad_hor.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo) -prj "C:/Users/Rick/Desktop/gittest/ElevatorProject/elevator/Logical/demo" -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/tpr.EditPad.vco: $(AS_PROJECT_PATH)/Logical/demo/TouchPads/EditPad.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo) -prj "C:/Users/Rick/Desktop/gittest/ElevatorProject/elevator/Logical/demo" -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


#Touch Pads END




# BitmapGroups
BMGRP_OBJECTS_demo = $(addprefix $(TEMP_PATH_demo)/bmgrp., $(notdir $(BMGRP_SOURCES_demo:.bmgrp=.vco)))

$(TEMP_PATH_demo)/bmgrp.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/AlphaPadQVGA.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bmgrp.NumPad.vco: $(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/NumPad.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bmgrp.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/AlphaPad.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bmgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/AlarmEvent.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bmgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/AlarmState.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bmgrp.BypassState.vco: $(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/BypassState.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bmgrp.AcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/AcknowledgeState.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bmgrp.NavigationPad.vco: $(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/NavigationPad.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bmgrp.Borders.vco: $(AS_PROJECT_PATH)/Logical/demo/BitmapGroups/Borders.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_demo = $(addprefix $(TEMP_PATH_demo)/bminfo., $(notdir $(BMINFO_SOURCES_demo:.bminfo=.vco)))

$(TEMP_PATH_demo)/bminfo.AlphaPadQVGA1.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA1.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA1.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.AlphaPadQVGA2.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA2.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA2.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.AlphaPadQVGA3.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA3.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA3.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.AlphaPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadVGA_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.AlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA2_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.AlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA3_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.AlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadQVGA1_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.AlphaPadVGA.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlphaPadVGA.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.NumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/NumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/NumPad_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.NumPad.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/NumPad.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/NumPad.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.AcknowledgeReset.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AcknowledgeReset.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AcknowledgeReset.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.AlarmActive.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmActive.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmActive.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.AlarmBypassOFF.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmBypassOFF.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmBypassOFF.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.AlarmBypassON.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmBypassON.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmBypassON.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.AlarmInactive.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmInactive.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmInactive.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.AlarmLatched.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmLatched.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmLatched.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.AlarmNotQuit.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmNotQuit.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmNotQuit.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.AlarmQuit.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmQuit.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/AlarmQuit.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.Reset.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/Reset.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/Reset.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.ResetAcknowledge.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ResetAcknowledge.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ResetAcknowledge.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.Triggered.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/Triggered.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/Triggered.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.ListPadHor.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ListPadHor.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ListPadHor.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.ListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ListPadHor_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.ListPadVer.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ListPadVer.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ListPadVer.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.ListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ListPadVer_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.backward_active.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/backward_active.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/backward_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.backward_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/backward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/backward_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.global_area_active.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/global_area_active.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/global_area_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.global_area_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/global_area_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/global_area_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.forward_active.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/forward_active.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/forward_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.forward_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/forward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/forward_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.control_button_active.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/control_button_active.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/control_button_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.control_button_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/control_button_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/control_button_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.right_active.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/right_active.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/right_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.right_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/right_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/right_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.left_active.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/left_active.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/left_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.left_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/left_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/left_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.up_active.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/up_active.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/up_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.up_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/up_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.down_active.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/down_active.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/down_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.down_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/down_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.multi_up_active.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/multi_up_active.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/multi_up_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.multi_up_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/multi_up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/multi_up_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.multi_down_active.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/multi_down_active.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/multi_down_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.multi_down_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/multi_down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/multi_down_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.ProgressBorder.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ProgressBorder.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/ProgressBorder.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.down_active_control.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/down_active_control.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/down_active_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.down_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/down_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/down_pressed_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.up_active_control.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/up_active_control.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/up_active_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.global_area_gradient_upside.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/global_area_gradient_upside.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/global_area_gradient_upside.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.global_area_gradient_downside.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/global_area_gradient_downside.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/global_area_gradient_downside.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.frame_header.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/frame_header.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/frame_header.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.up_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/up_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/up_pressed_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.EditPadVGA.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/EditPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/EditPadVGA.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.EditPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/EditPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/EditPadVGA_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneNumPad_released.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneNumPad_released.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneNumPad_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneListPadVer_released.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneListPadVer_released.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneListPadVer_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneAlphaPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPad_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneAlphaPad_released.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPad_released.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPad_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneAlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPadQVGA1_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneAlphaPadQVGA1_released.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPadQVGA1_released.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPadQVGA1_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneAlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPadQVGA2_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneAlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneAlphaPadQVGA3_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneEditpadQVGA2_released.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneEditpadQVGA2_released.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneEditpadQVGA2_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneEditPadQVGA3_released.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneEditPadQVGA3_released.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneEditPadQVGA3_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneEditPadVga_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneEditPadVga_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneEditPadVga_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneEditPadVga_released.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneEditPadVga_released.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneEditPadVga_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneListPadHor_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneListPadHor_released.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneListPadHor_released.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneListPadHor_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneListPadVer_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.zuneNumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneNumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/zuneNumPad_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.mse.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/mse.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/mse.png
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.mse1.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/mse1.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/mse1.png
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.off3.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/off3.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/off3.png
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(TEMP_PATH_demo)/bminfo.on3.vco: $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/on3.bminfo $(AS_PROJECT_PATH)/Logical/demo/Bitmaps/on3.png
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


#Bitmaps END




# Trend Data Configuration
TDC_OBJECTS_demo = $(addprefix $(TEMP_PATH_demo)/tdc., $(notdir $(TDC_SOURCES_demo:.tdc=.vco)))

$(TEMP_PATH_demo)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/demo/Trends/TrendData.tdc
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


#Trend Data Configuration END


#
# Borders
#
BDR_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/demo/Borders/Raised.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/Sunken.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/Etched.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/Bump.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/SunkenOuter.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/RaisedInner.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/Flat_black.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/Flat_grey.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/BackwardActive.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/BackwardPressed.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/ControlActive.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/ControlPressed.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/DownActiveControl.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/DownPressedControl.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/ForwardActive.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/ForwardPressed.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/GlobalAreaActive.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/GlobalAreaPressed.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/MultiScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/MultiScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/MultiScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/MultiScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/ProgressBarBorder.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollLeftActive.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollLeftPressed.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollRightActive.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/ScrollRightPressed.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/UpActiveControl.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/UpPressedControl.bdr $(AS_PROJECT_PATH)/Logical/demo/Borders/FrameHeader.bdr 
BDR_OBJECTS_demo=$(TEMP_PATH_demo)/bdr.Bordermanager.vco
$(TEMP_PATH_demo)/bdr.Bordermanager.vco: $(BDR_SOURCES_demo)
	$(VCC) -f "$<" -o "$@" -pkg "$(SRC_PATH_demo)" $(BDRFLAGS_demo) $(VCCFLAGS_demo) -p demo$(SRC_PATH_demo)
#
# Logical fonts
#
$(TEMP_PATH_demo)/lfnt.en.vco: $(TEMP_PATH_demo)/en.lfnt $(VC_LANGUAGES_demo)
	 $(VCC) -f "$<" -o "$@" $(LFNTFLAGS_demo) $(VCCFLAGS_demo) -p demo -sfas
$(TEMP_PATH_demo)/lfnt.de.vco: $(TEMP_PATH_demo)/de.lfnt $(VC_LANGUAGES_demo)
	 $(VCC) -f "$<" -o "$@" $(LFNTFLAGS_demo) $(VCCFLAGS_demo) -p demo -sfas
LFNT_OBJECTS_demo=$(TEMP_PATH_demo)/lfnt.en.vco $(TEMP_PATH_demo)/lfnt.de.vco 

#Runtime Object
$(VCR_OBJECT_demo) : $(VCR_SOURCE_demo)
	$(VCC) -f "$<" -o "$@" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -sl en $(VCCFLAGS_demo) -rt  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas
# Local resources Library rules
LIB_LOCAL_RES_demo=$(TEMP_PATH_demo)/localres.vca
$(LIB_LOCAL_RES_demo) : $(TEMP_PATH_demo)/demo02.ccf

# Bitmap Library rules
LIB_BMP_RES_demo=$(TEMP_PATH_demo)/bmpres.vca
$(LIB_BMP_RES_demo) : $(TEMP_PATH_demo)/demo03.ccf
$(BMGRP_OBJECTS_demo) : $(PALFILE_demo) $(VC_LANGUAGES_demo)
$(BMINFO_OBJECTS_demo) : $(PALFILE_demo)

BUILD_FILE_demo=$(TEMP_PATH_demo)/BuildFiles.arg
$(BUILD_FILE_demo) : BUILD_FILE_CLEAN_demo $(BUILD_SOURCES_demo)
BUILD_FILE_CLEAN_demo:
	$(RM) /F /Q "$(BUILD_FILE_demo)" 2>nul
#All Modules depending to this project
PROJECT_MODULES_demo=$(AS_CPU_PATH)/demo01.br $(AS_CPU_PATH)/demo02.br $(AS_CPU_PATH)/demo03.br $(FONT_MODULES_demo) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_demo): $(PROJECT_MODULES_demo) $(TEMP_PATH_demo)/demo.prj
	$(MODGEN) -so $(VC_STATIC_OPTIONS_demo) -fw "$(VCFIRMWAREPATH)" -m $(VCSTPOST) -v V1.00.0 -f "$(TEMP_PATH_demo)/demo.prj" -o "$@" -vc "$(VCOBJECT_demo)" $(DEPENDENCIES_demo) $(addprefix -d ,$(notdir $(PROJECT_MODULES_demo:.br=)))

$(AS_CPU_PATH)/demo01.br: $(TEMP_PATH_demo)/demo01.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_demo) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -v V1.00.0 -b -vc "$(VCOBJECT_demo)" -f "$<" -o "$@" $(DEPENDENCIES_demo)

$(AS_CPU_PATH)/demo02.br: $(TEMP_PATH_demo)/demo02.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_demo) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -v V1.00.0 -b -vc "$(VCOBJECT_demo)" -f "$<" -o "$@" $(DEPENDENCIES_demo)

$(AS_CPU_PATH)/demo03.br: $(TEMP_PATH_demo)/demo03.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_demo) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -v V1.00.0 -b -vc "$(VCOBJECT_demo)" -f "$<" -o "$@" $(DEPENDENCIES_demo)

# General Build rules END
$(LIB_LOCAL_OBJ_demo) : $(TEMP_PATH_demo)/demo01.ccf

# Main Module
$(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/demo.vcm:
$(TEMP_PATH_demo)/demo.prj: $(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/demo.vcm
	$(VCDEP) -m "$(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/demo.vcm" -s "$(AS_CPU_PATH)/VCShared/Shared.vcm" -p "$(AS_PATH)/AS/VC/Firmware" -c "$(AS_CPU_PATH)" -fw "$(VCFIRMWAREPATH)" -hw "$(CPUHWC)" -so $(VC_STATIC_OPTIONS_demo) -o demo -proj demo
	$(VCPL) $(notdir $(PROJECT_MODULES_demo:.br=,4)) demo,2 -o "$@" -p demo -vc "demo" -verbose "False" -fl "$(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/demo.vcm" -vcr "$(VCR_SOURCE_demo)" -prj "$(AS_PROJECT_PATH)" -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL_demo=$(TEMP_PATH_demo)\demo01.ccf.lfl
$(TEMP_PATH_demo)/demo01.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_demo) $(TEMP_PATH_demo)/demo03.ccf $(LIB_LOCAL_RES_demo) $(TEMP_PATH_demo)/demo02.ccf $(DIS_OBJECTS_demo) $(PAGE_OBJECTS_demo) $(VCS_OBJECTS_demo) $(VCVK_OBJECTS_demo) $(VCRT_OBJECTS_demo) $(TPR_OBJECTS_demo) $(TXTGRP_OBJECTS_demo) $(LAYER_OBJECTS_demo) $(VCR_OBJECT_demo) $(TDC_OBJECTS_demo) $(TRD_OBJECTS_demo) $(TRE_OBJECTS_demo) $(PRC_OBJECTS_demo) $(SCR_OBJECTS_demo)
	-@CMD if exist /Q "$(DEL_TARGET01_LFL_demo)" /C DEL /F /Q "$(DEL_TARGET01_LFL_demo)" 2>nul
	@$(VCFLGEN) "$@.lfl" "$(LIB_SHARED)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LIB_BMP_RES_demo)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LIB_LOCAL_RES_demo)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(DIS_OBJECTS_demo:.vco=.vco,)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .page -vcp "$(AS_PROJECT_PATH)/Logical/demo/Package.vcp" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(VCS_OBJECTS_demo:.vco=.vco,)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .vcvk -vcp "$(AS_PROJECT_PATH)/Logical/demo/Package.vcp" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(VCRT_OBJECTS_demo:.vco=.vco,)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(TPR_OBJECTS_demo:.vco=.vco,)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .txtgrp -vcp "$(AS_PROJECT_PATH)/Logical/demo/Package.vcp" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .layer -vcp "$(AS_PROJECT_PATH)/Logical/demo/Package.vcp" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(VCR_OBJECT_demo:.vco=.vco,)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .tdc -vcp "$(AS_PROJECT_PATH)/Logical/demo/Package.vcp" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .trd -vcp "$(AS_PROJECT_PATH)/Logical/demo/Package.vcp" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(TRE_OBJECTS_demo:.vco=.vco,)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(PRC_OBJECTS_demo:.vco=.vco,)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(SCR_OBJECTS_demo:.vco=.vco,)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	$(LINK) "$@.lfl" -o "$@" -p demo -lib "$(LIB_LOCAL_OBJ_demo)" -P "$(AS_PROJECT_PATH)" -m "local objects" -profile "False" -warningLevel2 -vcr 4211 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL_demo=$(TEMP_PATH_demo)\demo02.ccf.lfl
$(TEMP_PATH_demo)/demo02.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_demo) $(TEMP_PATH_demo)/demo03.ccf $(BDR_OBJECTS_demo) $(LFNT_OBJECTS_demo) $(CLM_OBJECTS_demo)
	-@CMD if exist /Q "$(DEL_TARGET02_LFL_demo)" /C DEL /F /Q "$(DEL_TARGET02_LFL_demo)" 2>nul
	@$(VCFLGEN) "$@.lfl" "$(LIB_SHARED)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LIB_BMP_RES_demo)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(BDR_OBJECTS_demo:.vco=.vco,)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LFNT_OBJECTS_demo:.vco=.vco,)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(CLM_OBJECTS_demo:.vco=.vco,)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	$(LINK) "$@.lfl" -o "$@" -p demo -lib "$(LIB_LOCAL_RES_demo)" -P "$(AS_PROJECT_PATH)" -m "local resources" -profile "False" -warningLevel2 -vcr 4211 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL_demo=$(TEMP_PATH_demo)\demo03.ccf.lfl
$(TEMP_PATH_demo)/demo03.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_demo) $(BMINFO_OBJECTS_demo) $(PALFILE_demo)
	-@CMD if exist /Q "$(DEL_TARGET03_LFL_demo)" /C DEL /F /Q "$(DEL_TARGET03_LFL_demo)" 2>nul
	@$(VCFLGEN) "$@.lfl" "$(LIB_SHARED)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .bmgrp -vcp "$(AS_PROJECT_PATH)/Logical/demo/Package.vcp" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .bminfo -vcp "$(AS_PROJECT_PATH)/Logical/demo/Package.vcp" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)" -sfas
	$(LINK) "$@.lfl" -o "$@" -p demo -lib "$(LIB_BMP_RES_demo)" -P "$(AS_PROJECT_PATH)" -m "bitmap resources" -profile "False" -warningLevel2 -vcr 4211 -sfas
# 03 Module END

