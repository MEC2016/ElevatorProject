UnmarkedObjectFolder := C:/Users/Rick/Desktop/gittest/ElevatorProject/elevator/Logical/Model
MarkedObjectFolder := C:/Users/Rick/Desktop/gittest/ElevatorProject/elevator/Logical/Model

$(AS_CPU_PATH)/Model.br: \
	$(AS_PROJECT_CPU_PATH)/Cpu.per \
	FORCE \
	$(AS_CPU_PATH)/Model/Model.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/Model/Model.ox" -o "$(AS_CPU_PATH)/Model.br" -v V1.00.0 -f "$(AS_CPU_PATH)/NT.ofs" -offsetLT "$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs" -T SG4  -M IA32  -B D4.21 -extConstants -d "runtime: V* - V*,asieccon: V* - V*" -r Cyclic1 -p 2 -s "Model" -L "AsIecCon: V*, astime: V*, brsystem: V*, Operator: V*, Runtime: V*, standard: V*, sys_lib: V*" -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/Model/Model.ox: \
	$(AS_CPU_PATH)/Model/a.out \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/Model/a.out" -o "$(AS_CPU_PATH)/Model/Model.ox" -T SG4 -r Cyclic1   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/Model/a.out: \
	$(AS_CPU_PATH)/Model/Cyclic.st.o \
	$(AS_CPU_PATH)/Model/Init.st.o \
	$(AS_CPU_PATH)/Model/Exit.st.o \
	FORCE
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link "$(AS_CPU_PATH)/Model/Cyclic.st.o" "$(AS_CPU_PATH)/Model/Init.st.o" "$(AS_CPU_PATH)/Model/Exit.st.o"  -o "$(AS_CPU_PATH)/Model/a.out"  -G V4.1.2  -T SG4  -M IA32  "-Wl,$(AS_SYSTEM_PATH)/D0421/SG4/IA32/libAsIecCon.a" "-Wl,$(AS_SYSTEM_PATH)/D0421/SG4/IA32/libbrsystem.a" "-Wl,$(AS_SYSTEM_PATH)/D0421/SG4/IA32/libsys_lib.a" "-Wl,$(AS_SYSTEM_PATH)/D0421/SG4/IA32/libstandard.a" "-Wl,$(AS_SYSTEM_PATH)/D0421/SG4/IA32/libastime.a" "-Wl,$(AS_SYSTEM_PATH)/D0421/SG4/IA32/libOperator.a" "-Wl,$(AS_SYSTEM_PATH)/D0421/SG4/IA32/libRuntime.a" -specs=I386specs -Wl,-q,-T,bur_elf_i386.x -nostdlib -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Model/Cyclic.st.o: \
	$(AS_PROJECT_PATH)/Logical/Model/Cyclic.st \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Model/Cyclic.st" -o "$(AS_CPU_PATH)/Model/Cyclic.st.o"  -O "$(AS_CPU_PATH)//Model/Cyclic.st.o.opt" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

$(AS_CPU_PATH)/Model/Init.st.o: \
	$(AS_PROJECT_PATH)/Logical/Model/Init.st \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Model/Init.st" -o "$(AS_CPU_PATH)/Model/Init.st.o"  -O "$(AS_CPU_PATH)//Model/Init.st.o.opt" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

$(AS_CPU_PATH)/Model/Exit.st.o: \
	$(AS_PROJECT_PATH)/Logical/Model/Exit.st \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Model/Exit.st" -o "$(AS_CPU_PATH)/Model/Exit.st.o"  -O "$(AS_CPU_PATH)//Model/Exit.st.o.opt" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 



FORCE: