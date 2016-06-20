SHELL = cmd.exe
export AS_PLC := PC_any
export AS_TEMP_PLC := PC_any
export AS_CPU_PATH := $(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)
export AS_CPU_PATH_2 := C:/Users/Rick/Desktop/gittest/ElevatorProject/elevator/Temp//Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)
export AS_PROJECT_CONFIG_PATH := $(AS_PROJECT_PATH)/Physical/$(AS_CONFIGURATION)
export AS_PROJECT_CPU_PATH := $(AS_PROJECT_CONFIG_PATH)/$(AS_PLC)
export AS_STATIC_ARCHIVES_PATH := $(AS_TEMP_PATH)/Archives/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)
export WIN32_AS_CPU_PATH := $(WIN32_AS_TEMP_PATH)\Objects\$(AS_CONFIGURATION)\$(AS_TEMP_PLC)
export WIN32_AS_ACTIVE_CONFIG_PATH := $(WIN32_AS_PROJECT_PATH)\Physical\$(AS_CONFIGURATION)\$(AS_PLC)


CpuMakeFile: \
$(AS_CPU_PATH)/ashwd.br \
$(AS_CPU_PATH)/asfw.br \
$(AS_CPU_PATH)/sysconf.br \
$(AS_CPU_PATH)/arconfig.br \
$(AS_CPU_PATH)/Model.br \
$(AS_CPU_PATH)/controller.br \
$(AS_CPU_PATH)/demo.br \
$(AS_CPU_PATH)/iomap.br \
$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/Transfer.lst


$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/Transfer.lst: \
	FORCE
	@"$(AS_BIN_PATH)/BR.AS.FinalizeBuild.exe" "$(AS_PROJECT_PATH)/elevator.apj" -t "$(AS_TEMP_PATH)" -o "$(AS_BINARIES_PATH)" -c "$(AS_CONFIGURATION)" -i "E:/ASV/AS42" -S "PC_any"  -all -A "AR000" -pil   -swFiles "$(AS_PROJECT_PATH)/Physical/Simulation/PC_any/Cpu.sw" -C "/RT=1000 /AM=* /DAIP=127.0.0.1 /REPO=11160 /ANSL=1" -D "/IF=tcpip /LOPO=11159 /SA=1" -M IA32 -T SG4

#nothing to do (just call module make files)

include $(AS_CPU_PATH)/iomap/iomap.mak
include $(AS_CPU_PATH)/demo/demo.mak
include $(AS_CPU_PATH)/controller/controller.mak
include $(AS_CPU_PATH)/Model/Model.mak
include $(AS_CPU_PATH)/arconfig/arconfig.mak
include $(AS_CPU_PATH)/sysconf/sysconf.mak
include $(AS_CPU_PATH)/AsFw/AsFw.mak
include $(AS_CPU_PATH)/AsHwd/AsHwd.mak

.DEFAULT:
#nothing to do (need this target for prerequisite files that don't exit)

FORCE:
