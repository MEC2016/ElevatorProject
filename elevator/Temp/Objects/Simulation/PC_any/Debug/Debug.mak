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
PALFILE_Debug=$(AS_PROJECT_PATH)/Logical/Debug/Palette.vcr
VCCFLAGS_Debug=-server -proj Debug -vc "$(AS_PROJECT_PATH)/Logical/Debug/VCObject.vc" -prj_path "$(AS_PROJECT_PATH)" -temp_path "$(AS_TEMP_PATH)" -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path "$(AS_CPU_PATH)"
VCFIRMWARE=4.21.1
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.21.1/SG4
VCOBJECT_Debug=$(AS_PROJECT_PATH)/Logical/Debug/VCObject.vc
VCSTARTUP="vcstart.br"
VCLOD="vclod.br"
VCSTPOST="vcstpost.br"
TARGET_FILE_Debug=$(AS_CPU_PATH)/Debug.br
OBJ_SCOPE_Debug=
PRJ_PATH_Debug=$(AS_PROJECT_PATH)
SRC_PATH_Debug=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_Debug)/Debug
TEMP_PATH_Debug=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Debug
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_Debug=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_Debug=$(TEMP_PATH_Debug)/libraries.vci
VC_XREF_BUILDFILE_Debug=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_Debug=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC="$(TEMP_PATH_Debug)/cpuhwc.vci"
VC_STATIC_OPTIONS_Debug="$(TEMP_PATH_Debug)/vcStaticOptions.xml"
VC_STATIC_OPTIONS_Shared="$(TEMP_PATH_Shared)/vcStaticOptions.xml"
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCFntDat/Font_Debug.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_Debug=-d vcgclass -profile "False"
DEFAULT_STYLE_SHEET_Debug=Source[local].StyleSheet[Color]
SHARED_MODULE=$(TEMP_PATH_ROOT_Debug)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
LFNTFLAGS_Debug=-P "$(AS_PROJECT_PATH)" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)"
BDRFLAGS_Debug=-P "$(AS_PROJECT_PATH)" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)"

# Local Libs
LIB_LOCAL_OBJ_Debug=$(TEMP_PATH_Debug)/localobj.vca

# Hardware sources
PANEL_HW_OBJECT_Debug=$(TEMP_PATH_ROOT_Debug)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Debug/dis.Hardware.vco
PANEL_HW_SOURCE_Debug=E:/0-elevator/elevator/Physical/Simulation/Hardware.hw 
DIS_OBJECTS_Debug=$(PANEL_HW_OBJECT_Debug) $(KEYMAP_OBJECTS_Debug)

# KeyMapping flags
KEYMAP_SOURCES_Debug=
KEYMAP_OBJECTS_Debug=

# All Source Objects
FNINFO_SOURCES_Debug=$(AS_PROJECT_PATH)/Logical/Debug/Fonts/DefaultFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Fonts/Arial9px.fninfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Fonts/Arial9pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Fonts/Arial10pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Fonts/Arial12px.fninfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Fonts/Arial9pxValue.fninfo 

BMINFO_SOURCES_Debug=$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA1.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA2.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA3.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/NumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/NumPad.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AcknowledgeReset.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmActive.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmBypassOFF.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmBypassON.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmInactive.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmLatched.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmNotQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/Reset.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ResetAcknowledge.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/Triggered.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ListPadHor.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ListPadVer.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/backward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/backward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/global_area_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/global_area_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/forward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/forward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/control_button_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/control_button_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/right_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/right_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/left_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/left_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/multi_up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/multi_up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/multi_down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/multi_down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ProgressBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/down_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/down_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/up_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/global_area_gradient_upside.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/global_area_gradient_downside.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/frame_header.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/up_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/EditPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/EditPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneNumPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneListPadVer_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPadQVGA1_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneEditpadQVGA2_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneEditPadQVGA3_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneEditPadVga_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneEditPadVga_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneListPadHor_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneNumPad_pressed.bminfo 

BMGRP_SOURCES_Debug=$(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/AlphaPadQVGA.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/NumPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/AlphaPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/AlarmEvent.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/AlarmState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/BypassState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/AcknowledgeState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/NavigationPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/Borders.bmgrp 

PAGE_SOURCES_Debug=$(AS_PROJECT_PATH)/Logical/Debug/Pages/Init_Page.page 

VCS_SOURCES_Debug=$(AS_PROJECT_PATH)/Logical/Debug/StyleSheets/Gray.vcs \
	$(AS_PROJECT_PATH)/Logical/Debug/StyleSheets/Color.vcs 

BDR_SOURCES_Debug=$(AS_PROJECT_PATH)/Logical/Debug/Borders/Raised.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/Sunken.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/Etched.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/Bump.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/SunkenOuter.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/RaisedInner.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/Flat_black.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/Flat_grey.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/BackwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/BackwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/ControlActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/ControlPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/DownActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/DownPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/ForwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/ForwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/GlobalAreaActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/GlobalAreaPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/MultiScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/MultiScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/MultiScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/MultiScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/ProgressBarBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollLeftActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollLeftPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollRightActive.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollRightPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/UpActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/UpPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/Debug/Borders/FrameHeader.bdr 

TPR_SOURCES_Debug=$(AS_PROJECT_PATH)/Logical/Debug/TouchPads/NumPad.tpr \
	$(AS_PROJECT_PATH)/Logical/Debug/TouchPads/AlphaPadQVGA.tpr \
	$(AS_PROJECT_PATH)/Logical/Debug/TouchPads/AlphaPad.tpr \
	$(AS_PROJECT_PATH)/Logical/Debug/TouchPads/NavigationPad_ver.tpr \
	$(AS_PROJECT_PATH)/Logical/Debug/TouchPads/NavigationPad_hor.tpr \
	$(AS_PROJECT_PATH)/Logical/Debug/TouchPads/EditPad.tpr 

TDC_SOURCES_Debug=$(AS_PROJECT_PATH)/Logical/Debug/Trends/TrendData.tdc 

VCVK_SOURCES_Debug=$(AS_PROJECT_PATH)/Logical/Debug/VirtualKeys.vcvk 

VCR_SOURCES_Debug=$(AS_PROJECT_PATH)/Logical/Debug/Palette.vcr 

# Runtime Object sources
VCR_OBJECT_Debug=$(TEMP_PATH_Debug)/vcrt.vco
VCR_SOURCE_Debug=$(SRC_PATH_Debug)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_OBJECT_Debug): $(PANEL_HW_SOURCE_Debug) $(PALFILE_Debug) $(VC_LIBRARY_LIST_Debug) $(KEYMAP_SOURCES_Debug)
	$(VCHWPP) -f "$<" -o "$(subst .vco,.vci,$@)" -n Debug -d Debug -pal "$(PALFILE_Debug)" -c "$(AS_CONFIGURATION)" -p "$(AS_PLC)" -ptemp "$(AS_TEMP_PLC)" -B "D4.21" -L "" -verbose "False" -profile "False" -hw "$(CPUHWC)" -warninglevel 2 -so $(VC_STATIC_OPTIONS_Debug) -sos $(VC_STATIC_OPTIONS_Shared) -fp "$(AS_VC_PATH)/Firmware/V4.21.1/SG4" -sfas -prj "$(AS_PROJECT_PATH)" -apj "elevator" -vcob "$(VCOBJECT_Debug)"
	$(VCC) -f "$(subst .vco,.vci,$@)" -o "$@" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -k "$(VCVK_SOURCES_Debug)" $(VCCFLAGS_Debug) -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


# Pages
PAGE_OBJECTS_Debug = $(addprefix $(TEMP_PATH_Debug)/page., $(notdir $(PAGE_SOURCES_Debug:.page=.vco)))

$(TEMP_PATH_Debug)/page.Init_Page.vco: $(AS_PROJECT_PATH)/Logical/Debug/Pages/Init_Page.page $(VC_LANGUAGES_Debug)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug) -P "$(AS_PROJECT_PATH)" -ds "$(SRC_PATH_Debug)/StyleSheets/Color.vcs" -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


#Pages END




# Stylesheets
VCS_OBJECTS_Debug = $(addprefix $(TEMP_PATH_Debug)/vcs., $(notdir $(VCS_SOURCES_Debug:.vcs=.vco)))

$(TEMP_PATH_Debug)/vcs.Gray.vco: $(AS_PROJECT_PATH)/Logical/Debug/StyleSheets/Gray.vcs
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug) -P "$(AS_PROJECT_PATH)" -ds $(DEFAULT_STYLE_SHEET_Debug) -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/vcs.Color.vco: $(AS_PROJECT_PATH)/Logical/Debug/StyleSheets/Color.vcs
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug) -P "$(AS_PROJECT_PATH)" -ds $(DEFAULT_STYLE_SHEET_Debug) -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


#Stylesheets END




# Virtual Keys
VCVK_OBJECTS_Debug = $(addprefix $(TEMP_PATH_Debug)/vcvk., $(notdir $(VCVK_SOURCES_Debug:.vcvk=.vco)))

$(TEMP_PATH_Debug)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/Debug/VirtualKeys.vcvk
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas

$(VCVK_OBJECTS_Debug): $(VC_LANGUAGES_Debug)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_Debug = $(addprefix $(TEMP_PATH_Debug)/tpr., $(notdir $(TPR_SOURCES_Debug:.tpr=.vco)))

$(TEMP_PATH_Debug)/tpr.NumPad.vco: $(AS_PROJECT_PATH)/Logical/Debug/TouchPads/NumPad.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug) -prj "E:/0-elevator/elevator/Logical/Debug" -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/tpr.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/Debug/TouchPads/AlphaPadQVGA.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug) -prj "E:/0-elevator/elevator/Logical/Debug" -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/tpr.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/Debug/TouchPads/AlphaPad.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug) -prj "E:/0-elevator/elevator/Logical/Debug" -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/tpr.NavigationPad_ver.vco: $(AS_PROJECT_PATH)/Logical/Debug/TouchPads/NavigationPad_ver.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug) -prj "E:/0-elevator/elevator/Logical/Debug" -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/tpr.NavigationPad_hor.vco: $(AS_PROJECT_PATH)/Logical/Debug/TouchPads/NavigationPad_hor.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug) -prj "E:/0-elevator/elevator/Logical/Debug" -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/tpr.EditPad.vco: $(AS_PROJECT_PATH)/Logical/Debug/TouchPads/EditPad.tpr
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug) -prj "E:/0-elevator/elevator/Logical/Debug" -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


#Touch Pads END




# BitmapGroups
BMGRP_OBJECTS_Debug = $(addprefix $(TEMP_PATH_Debug)/bmgrp., $(notdir $(BMGRP_SOURCES_Debug:.bmgrp=.vco)))

$(TEMP_PATH_Debug)/bmgrp.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/AlphaPadQVGA.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bmgrp.NumPad.vco: $(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/NumPad.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bmgrp.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/AlphaPad.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bmgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/AlarmEvent.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bmgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/AlarmState.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bmgrp.BypassState.vco: $(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/BypassState.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bmgrp.AcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/AcknowledgeState.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bmgrp.NavigationPad.vco: $(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/NavigationPad.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bmgrp.Borders.vco: $(AS_PROJECT_PATH)/Logical/Debug/BitmapGroups/Borders.bmgrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_Debug = $(addprefix $(TEMP_PATH_Debug)/bminfo., $(notdir $(BMINFO_SOURCES_Debug:.bminfo=.vco)))

$(TEMP_PATH_Debug)/bminfo.AlphaPadQVGA1.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA1.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA1.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.AlphaPadQVGA2.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA2.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA2.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.AlphaPadQVGA3.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA3.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA3.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.AlphaPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadVGA_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.AlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA2_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.AlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA3_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.AlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadQVGA1_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.AlphaPadVGA.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlphaPadVGA.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.NumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/NumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/NumPad_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.NumPad.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/NumPad.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/NumPad.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.AcknowledgeReset.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AcknowledgeReset.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AcknowledgeReset.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.AlarmActive.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmActive.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmActive.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.AlarmBypassOFF.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmBypassOFF.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmBypassOFF.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.AlarmBypassON.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmBypassON.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmBypassON.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.AlarmInactive.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmInactive.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmInactive.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.AlarmLatched.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmLatched.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmLatched.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.AlarmNotQuit.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmNotQuit.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmNotQuit.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.AlarmQuit.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmQuit.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/AlarmQuit.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.Reset.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/Reset.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/Reset.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.ResetAcknowledge.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ResetAcknowledge.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ResetAcknowledge.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.Triggered.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/Triggered.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/Triggered.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.ListPadHor.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ListPadHor.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ListPadHor.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.ListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ListPadHor_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.ListPadVer.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ListPadVer.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ListPadVer.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.ListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ListPadVer_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.backward_active.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/backward_active.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/backward_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.backward_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/backward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/backward_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.global_area_active.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/global_area_active.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/global_area_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.global_area_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/global_area_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/global_area_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.forward_active.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/forward_active.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/forward_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.forward_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/forward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/forward_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.control_button_active.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/control_button_active.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/control_button_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.control_button_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/control_button_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/control_button_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.right_active.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/right_active.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/right_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.right_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/right_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/right_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.left_active.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/left_active.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/left_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.left_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/left_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/left_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.up_active.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/up_active.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/up_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.up_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/up_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.down_active.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/down_active.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/down_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.down_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/down_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.multi_up_active.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/multi_up_active.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/multi_up_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.multi_up_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/multi_up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/multi_up_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.multi_down_active.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/multi_down_active.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/multi_down_active.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.multi_down_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/multi_down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/multi_down_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.ProgressBorder.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ProgressBorder.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/ProgressBorder.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.down_active_control.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/down_active_control.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/down_active_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.down_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/down_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/down_pressed_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.up_active_control.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/up_active_control.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/up_active_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.global_area_gradient_upside.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/global_area_gradient_upside.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/global_area_gradient_upside.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.global_area_gradient_downside.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/global_area_gradient_downside.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/global_area_gradient_downside.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.frame_header.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/frame_header.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/frame_header.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.up_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/up_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/up_pressed_control.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.EditPadVGA.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/EditPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/EditPadVGA.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.EditPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/EditPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/EditPadVGA_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneNumPad_released.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneNumPad_released.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneNumPad_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneListPadVer_released.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneListPadVer_released.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneListPadVer_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneAlphaPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPad_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneAlphaPad_released.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPad_released.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPad_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneAlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPadQVGA1_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneAlphaPadQVGA1_released.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPadQVGA1_released.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPadQVGA1_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneAlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPadQVGA2_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneAlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneAlphaPadQVGA3_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneEditpadQVGA2_released.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneEditpadQVGA2_released.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneEditpadQVGA2_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneEditPadQVGA3_released.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneEditPadQVGA3_released.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneEditPadQVGA3_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneEditPadVga_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneEditPadVga_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneEditPadVga_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneEditPadVga_released.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneEditPadVga_released.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneEditPadVga_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneListPadHor_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneListPadHor_released.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneListPadHor_released.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneListPadHor_released.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneListPadVer_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


$(TEMP_PATH_Debug)/bminfo.zuneNumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneNumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/Debug/Bitmaps/zuneNumPad_pressed.bmp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


#Bitmaps END




# Trend Data Configuration
TDC_OBJECTS_Debug = $(addprefix $(TEMP_PATH_Debug)/tdc., $(notdir $(TDC_SOURCES_Debug:.tdc=.vco)))

$(TEMP_PATH_Debug)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/Debug/Trends/TrendData.tdc
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_Debug)" $(VCCFLAGS_Debug)  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas


#Trend Data Configuration END


#
# Borders
#
BDR_SOURCES_Debug=$(AS_PROJECT_PATH)/Logical/Debug/Borders/Raised.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/Sunken.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/Etched.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/Bump.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/SunkenOuter.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/RaisedInner.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/Flat_black.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/Flat_grey.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/BackwardActive.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/BackwardPressed.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/ControlActive.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/ControlPressed.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/DownActiveControl.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/DownPressedControl.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/ForwardActive.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/ForwardPressed.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/GlobalAreaActive.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/GlobalAreaPressed.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/MultiScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/MultiScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/MultiScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/MultiScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/ProgressBarBorder.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollLeftActive.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollLeftPressed.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollRightActive.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/ScrollRightPressed.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/UpActiveControl.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/UpPressedControl.bdr $(AS_PROJECT_PATH)/Logical/Debug/Borders/FrameHeader.bdr 
BDR_OBJECTS_Debug=$(TEMP_PATH_Debug)/bdr.Bordermanager.vco
$(TEMP_PATH_Debug)/bdr.Bordermanager.vco: $(BDR_SOURCES_Debug)
	$(VCC) -f "$<" -o "$@" -pkg "$(SRC_PATH_Debug)" $(BDRFLAGS_Debug) $(VCCFLAGS_Debug) -p Debug$(SRC_PATH_Debug)
#
# Logical fonts
#
$(TEMP_PATH_Debug)/lfnt.en.vco: $(TEMP_PATH_Debug)/en.lfnt $(VC_LANGUAGES_Debug)
	 $(VCC) -f "$<" -o "$@" $(LFNTFLAGS_Debug) $(VCCFLAGS_Debug) -p Debug -sfas
$(TEMP_PATH_Debug)/lfnt.de.vco: $(TEMP_PATH_Debug)/de.lfnt $(VC_LANGUAGES_Debug)
	 $(VCC) -f "$<" -o "$@" $(LFNTFLAGS_Debug) $(VCCFLAGS_Debug) -p Debug -sfas
LFNT_OBJECTS_Debug=$(TEMP_PATH_Debug)/lfnt.en.vco $(TEMP_PATH_Debug)/lfnt.de.vco 

#Runtime Object
$(VCR_OBJECT_Debug) : $(VCR_SOURCE_Debug)
	$(VCC) -f "$<" -o "$@" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -sl en $(VCCFLAGS_Debug) -rt  -p Debug -so $(VC_STATIC_OPTIONS_Debug) -vcr 4211 -sfas
# Local resources Library rules
LIB_LOCAL_RES_Debug=$(TEMP_PATH_Debug)/localres.vca
$(LIB_LOCAL_RES_Debug) : $(TEMP_PATH_Debug)/Debug02.ccf

# Bitmap Library rules
LIB_BMP_RES_Debug=$(TEMP_PATH_Debug)/bmpres.vca
$(LIB_BMP_RES_Debug) : $(TEMP_PATH_Debug)/Debug03.ccf
$(BMGRP_OBJECTS_Debug) : $(PALFILE_Debug) $(VC_LANGUAGES_Debug)
$(BMINFO_OBJECTS_Debug) : $(PALFILE_Debug)

BUILD_FILE_Debug=$(TEMP_PATH_Debug)/BuildFiles.arg
$(BUILD_FILE_Debug) : BUILD_FILE_CLEAN_Debug $(BUILD_SOURCES_Debug)
BUILD_FILE_CLEAN_Debug:
	$(RM) /F /Q "$(BUILD_FILE_Debug)" 2>nul
#All Modules depending to this project
PROJECT_MODULES_Debug=$(AS_CPU_PATH)/Debug01.br $(AS_CPU_PATH)/Debug02.br $(AS_CPU_PATH)/Debug03.br $(FONT_MODULES_Debug) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_Debug): $(PROJECT_MODULES_Debug) $(TEMP_PATH_Debug)/Debug.prj
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Debug) -fw "$(VCFIRMWAREPATH)" -m $(VCSTPOST) -v V1.00.0 -f "$(TEMP_PATH_Debug)/Debug.prj" -o "$@" -vc "$(VCOBJECT_Debug)" $(DEPENDENCIES_Debug) $(addprefix -d ,$(notdir $(PROJECT_MODULES_Debug:.br=)))

$(AS_CPU_PATH)/Debug01.br: $(TEMP_PATH_Debug)/Debug01.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Debug) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -v V1.00.0 -b -vc "$(VCOBJECT_Debug)" -f "$<" -o "$@" $(DEPENDENCIES_Debug)

$(AS_CPU_PATH)/Debug02.br: $(TEMP_PATH_Debug)/Debug02.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Debug) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -v V1.00.0 -b -vc "$(VCOBJECT_Debug)" -f "$<" -o "$@" $(DEPENDENCIES_Debug)

$(AS_CPU_PATH)/Debug03.br: $(TEMP_PATH_Debug)/Debug03.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Debug) -fw "$(VCFIRMWAREPATH)" -m $(VCLOD) -v V1.00.0 -b -vc "$(VCOBJECT_Debug)" -f "$<" -o "$@" $(DEPENDENCIES_Debug)

# General Build rules END
$(LIB_LOCAL_OBJ_Debug) : $(TEMP_PATH_Debug)/Debug01.ccf

# Main Module
$(TEMP_PATH_ROOT_Debug)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Debug.vcm:
$(TEMP_PATH_Debug)/Debug.prj: $(TEMP_PATH_ROOT_Debug)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Debug.vcm
	$(VCDEP) -m "$(TEMP_PATH_ROOT_Debug)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Debug.vcm" -s "$(AS_CPU_PATH)/VCShared/Shared.vcm" -p "$(AS_PATH)/AS/VC/Firmware" -c "$(AS_CPU_PATH)" -fw "$(VCFIRMWAREPATH)" -hw "$(CPUHWC)" -so $(VC_STATIC_OPTIONS_Debug) -o Debug -proj Debug
	$(VCPL) $(notdir $(PROJECT_MODULES_Debug:.br=,4)) Debug,2 -o "$@" -p Debug -vc "Debug" -verbose "False" -fl "$(TEMP_PATH_ROOT_Debug)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Debug.vcm" -vcr "$(VCR_SOURCE_Debug)" -prj "$(AS_PROJECT_PATH)" -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL_Debug=$(TEMP_PATH_Debug)\Debug01.ccf.lfl
$(TEMP_PATH_Debug)/Debug01.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Debug) $(TEMP_PATH_Debug)/Debug03.ccf $(LIB_LOCAL_RES_Debug) $(TEMP_PATH_Debug)/Debug02.ccf $(DIS_OBJECTS_Debug) $(PAGE_OBJECTS_Debug) $(VCS_OBJECTS_Debug) $(VCVK_OBJECTS_Debug) $(VCRT_OBJECTS_Debug) $(TPR_OBJECTS_Debug) $(TXTGRP_OBJECTS_Debug) $(LAYER_OBJECTS_Debug) $(VCR_OBJECT_Debug) $(TDC_OBJECTS_Debug) $(TRD_OBJECTS_Debug) $(TRE_OBJECTS_Debug) $(PRC_OBJECTS_Debug) $(SCR_OBJECTS_Debug)
	-@CMD if exist /Q "$(DEL_TARGET01_LFL_Debug)" /C DEL /F /Q "$(DEL_TARGET01_LFL_Debug)" 2>nul
	@$(VCFLGEN) "$@.lfl" "$(LIB_SHARED)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LIB_BMP_RES_Debug)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LIB_LOCAL_RES_Debug)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(DIS_OBJECTS_Debug:.vco=.vco,)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .page -vcp "$(AS_PROJECT_PATH)/Logical/Debug/Package.vcp" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(VCS_OBJECTS_Debug:.vco=.vco,)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .vcvk -vcp "$(AS_PROJECT_PATH)/Logical/Debug/Package.vcp" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(VCRT_OBJECTS_Debug:.vco=.vco,)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(TPR_OBJECTS_Debug:.vco=.vco,)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .txtgrp -vcp "$(AS_PROJECT_PATH)/Logical/Debug/Package.vcp" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .layer -vcp "$(AS_PROJECT_PATH)/Logical/Debug/Package.vcp" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(VCR_OBJECT_Debug:.vco=.vco,)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .tdc -vcp "$(AS_PROJECT_PATH)/Logical/Debug/Package.vcp" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .trd -vcp "$(AS_PROJECT_PATH)/Logical/Debug/Package.vcp" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(TRE_OBJECTS_Debug:.vco=.vco,)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(PRC_OBJECTS_Debug:.vco=.vco,)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(SCR_OBJECTS_Debug:.vco=.vco,)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	$(LINK) "$@.lfl" -o "$@" -p Debug -lib "$(LIB_LOCAL_OBJ_Debug)" -P "$(AS_PROJECT_PATH)" -m "local objects" -profile "False" -warningLevel2 -vcr 4211 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL_Debug=$(TEMP_PATH_Debug)\Debug02.ccf.lfl
$(TEMP_PATH_Debug)/Debug02.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Debug) $(TEMP_PATH_Debug)/Debug03.ccf $(BDR_OBJECTS_Debug) $(LFNT_OBJECTS_Debug) $(CLM_OBJECTS_Debug)
	-@CMD if exist /Q "$(DEL_TARGET02_LFL_Debug)" /C DEL /F /Q "$(DEL_TARGET02_LFL_Debug)" 2>nul
	@$(VCFLGEN) "$@.lfl" "$(LIB_SHARED)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LIB_BMP_RES_Debug)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(BDR_OBJECTS_Debug:.vco=.vco,)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(LFNT_OBJECTS_Debug:.vco=.vco,)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" "$(CLM_OBJECTS_Debug:.vco=.vco,)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	$(LINK) "$@.lfl" -o "$@" -p Debug -lib "$(LIB_LOCAL_RES_Debug)" -P "$(AS_PROJECT_PATH)" -m "local resources" -profile "False" -warningLevel2 -vcr 4211 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL_Debug=$(TEMP_PATH_Debug)\Debug03.ccf.lfl
$(TEMP_PATH_Debug)/Debug03.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_Debug) $(BMINFO_OBJECTS_Debug) $(PALFILE_Debug)
	-@CMD if exist /Q "$(DEL_TARGET03_LFL_Debug)" /C DEL /F /Q "$(DEL_TARGET03_LFL_Debug)" 2>nul
	@$(VCFLGEN) "$@.lfl" "$(LIB_SHARED)" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .bmgrp -vcp "$(AS_PROJECT_PATH)/Logical/Debug/Package.vcp" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	@$(VCFLGEN) "$@.lfl" -mask .bminfo -vcp "$(AS_PROJECT_PATH)/Logical/Debug/Package.vcp" -temp "$(TEMP_PATH_Debug)" -prj "$(PRJ_PATH_Debug)" -sfas
	$(LINK) "$@.lfl" -o "$@" -p Debug -lib "$(LIB_BMP_RES_Debug)" -P "$(AS_PROJECT_PATH)" -m "bitmap resources" -profile "False" -warningLevel2 -vcr 4211 -sfas
# 03 Module END

# Post Build Steps

.PHONY : vcPostBuild_Debug

vcPostBuild_Debug :
	$(VCC) -pb -vcm "$(TEMP_PATH_Debug)/MODULEFILES.vcm" -fw "$(VCFIRMWAREPATH)" $(VCCFLAGS_Debug) -p Debug -vcr 4211 -sfas

# Post Build Steps END
