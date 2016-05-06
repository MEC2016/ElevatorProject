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

DSOFLAGS=-P "$(AS_PROJECT_PATH)" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)"
LIB_SHARED=$(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/vcshared.vca

#
# Shared Runtime Options
#
VCRS_OBJECT=$(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/vcrt_s.vco
VCRS_SOURCE=$(AS_PROJECT_PATH)/Logical/VCShared/Package.vcp

# All Shared Source Objects
VCR_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr 

TXTGRP_SHARED_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmAcknowledgeState.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmBypassState.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmEvent.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmState.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/DateTimeFormats.txtgrp \
	$(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/httpURL_SDM.txtgrp 

VCUG_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Length.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Mass.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Volume.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Power.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Memory.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Pressure.vcug \
	$(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Temperatures.vcug 

ALCFG_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/VCShared/AlarmGroups/AlarmSystem.alcfg 

ALGRP_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/VCShared/AlarmGroups/SystemAlarms.algrp 

DSO_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/VCShared/DataSources/Internal.dso \
	$(AS_PROJECT_PATH)/Logical/VCShared/DataSources/DataSource.dso 

CVINFO_SOURCES_demo=$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo 



# UnitGroups
VCUG_OBJECTS_demo = $(addprefix $(AS_CPU_PATH)/VCShared/vcug., $(notdir $(VCUG_SOURCES_demo:.vcug=.vco)))

$(AS_CPU_PATH)/VCShared/vcug.Length.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Length.vcug
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Mass.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Mass.vcug
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Volume.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Volume.vcug
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Power.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Power.vcug
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Memory.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Memory.vcug
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Pressure.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Pressure.vcug
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(AS_CPU_PATH)/VCShared/vcug.Temperatures.vco: $(AS_PROJECT_PATH)/Logical/VCShared/UnitGroups/Temperatures.vcug
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


#UnitGroups END




# AlarmGroups
ALGRP_OBJECTS_demo = $(addprefix $(AS_CPU_PATH)/VCShared/algrp., $(notdir $(ALGRP_SOURCES_demo:.algrp=.vco)))

$(AS_CPU_PATH)/VCShared/algrp.SystemAlarms.vco: $(AS_PROJECT_PATH)/Logical/VCShared/AlarmGroups/SystemAlarms.algrp
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


#AlarmGroups END




# AlarmSystem
ALCFG_OBJECTS_demo = $(addprefix $(AS_CPU_PATH)/VCShared/alcfg., $(notdir $(ALCFG_SOURCES_demo:.alcfg=.vco)))

$(AS_CPU_PATH)/VCShared/alcfg.AlarmSystem.vco: $(AS_PROJECT_PATH)/Logical/VCShared/AlarmGroups/AlarmSystem.alcfg
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


#AlarmSystem END




# Text Groups
TXTGRP_SHARED_OBJECTS_demo = $(addprefix $(AS_CPU_PATH)/VCShared/txtgrp., $(notdir $(TXTGRP_SHARED_SOURCES_demo:.txtgrp=.vco)))

$(AS_CPU_PATH)/VCShared/txtgrp.AlarmAcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmAcknowledgeState.txtgrp $(VC_LANGUAGES_demo)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.AlarmBypassState.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmBypassState.txtgrp $(VC_LANGUAGES_demo)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmEvent.txtgrp $(VC_LANGUAGES_demo)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/AlarmState.txtgrp $(VC_LANGUAGES_demo)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.DateTimeFormats.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/DateTimeFormats.txtgrp $(VC_LANGUAGES_demo)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


$(AS_CPU_PATH)/VCShared/txtgrp.httpURL_SDM.vco: $(AS_PROJECT_PATH)/Logical/VCShared/TextGroups/httpURL_SDM.txtgrp $(VC_LANGUAGES_demo)
	 $(VCC) -f "$<" -o "$@" -l "$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr" -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -pal "$(PALFILE_demo)" $(VCCFLAGS_demo)  -p demo -so $(VC_STATIC_OPTIONS_demo) -vcr 4211 -sfas


#Text Groups END


#
# Datapoint Objects
#
$(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/dso.Internal.vco: $(AS_PROJECT_PATH)/Logical/VCShared/DataSources/Internal.dso 
	 $(VCC) -f "$<" -o "$@" $(DSOFLAGS) $(VCCFLAGS_demo) -p demo -vcr 4211 -sfas

$(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/dso.DataSource.vco: $(AS_PROJECT_PATH)/Logical/VCShared/DataSources/DataSource.dso 
	 $(VCC) -f "$<" -o "$@" $(DSOFLAGS) $(VCCFLAGS_demo) -p demo -vcr 4211 -sfas

DPT_OBJECTS = $(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/dpt.DataPointList.vco
DSO_OBJECTS_demo=$(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/dso.Internal.vco $(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/dso.DataSource.vco 
$(DSO_OBJECTS_demo): $(DSO_SOURCES_demo)


#
# Building the Shared Runtime Options
#
$(VCRS_OBJECT) : $(VCRS_SOURCE)
	$(VCC) -f "$<" -o "$@" -ct shared -cv "$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo" -sl  $(VCCFLAGS_demo) -p demo -vcr 4211 -sfas

#
# The Shared Module
#
SHARED_MODULE=$(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
SHARED_CCF=$(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/vcshared.ccf
DEL_SHARED_CCF=$(TEMP_PATH_ROOT_demo)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/vcshared.ccf.lfl

$(SHARED_MODULE) : $(SHARED_CCF)
	 $(MODGEN) -so $(VC_STATIC_OPTIONS_Shared) -fw "$(VCFIRMWAREPATH)" -m $(VCSTARTUP) -v V1.00.0 -vc "$(VCOBJECT_demo)" -f "$<" -o "$@" -d vcgclass -profile "False"

$(VCUG_OBJECTS_demo): $(VC_LANGUAGES_demo)
$(TXTGRP_SHARED_OBJECTS_demo): $(VC_LANGUAGES_demo)
$(ALGRP_OBJECTS_demo): $(VC_LANGUAGES_demo)
$(ALCFG_OBJECTS_demo): $(VC_LANGUAGES_demo)

$(SHARED_CCF): $(VCRS_OBJECT) $(VCR_OBJECTS_demo) $(VCUG_OBJECTS_demo) $(ALGRP_OBJECTS_demo) $(ALCFG_OBJECTS_demo) $(DSO_OBJECTS_demo) $(TXTGRP_SHARED_OBJECTS_demo) $(CVINFO_OBJECTS_demo)
	-@CMD if exist /Q "$(DEL_SHARED_CCF)" /C DEL /F /Q "$(DEL_SHARED_CCF)" 2>nul
	 @$(VCFLGEN) "$@.lfl" "$(VCR_OBJECTS_demo:.vco=.vco,)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)"
	 @$(VCFLGEN) "$@.lfl" -mask .vcug -vcp "$(AS_PROJECT_PATH)/Logical/VCShared/Package.vcp" -temp "$(TEMP_PATH_Shared)" -prj "$(PRJ_PATH_demo)"
	 @$(VCFLGEN) "$@.lfl" -mask .algrp -vcp "$(AS_PROJECT_PATH)/Logical/VCShared/Package.vcp" -temp "$(TEMP_PATH_Shared)" -prj "$(PRJ_PATH_demo)"
	 @$(VCFLGEN) "$@.lfl" "$(ALCFG_OBJECTS_demo:.vco=.vco,)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)"
	 @$(VCFLGEN) "$@.lfl" -mask .txtgrp -vcp "$(AS_PROJECT_PATH)/Logical/VCShared/Package.vcp" -temp "$(TEMP_PATH_Shared)" -prj "$(PRJ_PATH_demo)"
	 @$(VCFLGEN) "$@.lfl" "$(DSO_OBJECTS_demo:.vco=.vco,)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)"
	 @$(VCFLGEN) "$@.lfl" "$(DPT_OBJECTS:.vco=.vco,)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)"
	 @$(VCFLGEN) "$@.lfl" "$(VCRS_OBJECT)" -temp "$(TEMP_PATH_demo)" -prj "$(PRJ_PATH_demo)"
	 $(LINK) "$@.lfl" -o "$@" -lib "$(LIB_SHARED)" -P "$(AS_PROJECT_PATH)" -m "shared resources" -profile "False" -warningLevel2 -name demo -vcr 4211 -sfas


$(LIB_SHARED): $(SHARED_CCF)
