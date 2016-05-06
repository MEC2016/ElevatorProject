UnmarkedObjectFolder := E:/0-elevator/elevator/Logical/controller
MarkedObjectFolder := E:/0-elevator/elevator/Logical/controller

$(AS_CPU_PATH)/controller.br: \
	$(AS_PROJECT_CPU_PATH)/Cpu.per \
	$(AS_CPU_PATH)/controller/controller.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/controller/controller.ox" -o "$(AS_CPU_PATH)/controller.br" -v V1.00.0 -f "$(AS_CPU_PATH)/NT.ofs" -offsetLT "$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs" -T SG4  -M IA32  -B D4.21 -extConstants -d "runtime: V* - V*,asieccon: V* - V*" -r Cyclic4 -p 2 -s "controller" -L "AsIecCon: V*, astime: V*, brsystem: V*, Operator: V*, Runtime: V*, standard: V*, sys_lib: V*" -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/controller/controller.ox: \
	$(AS_CPU_PATH)/controller/a.out
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/controller/a.out" -o "$(AS_CPU_PATH)/controller/controller.ox" -T SG4 -r Cyclic4   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/controller/a.out: \
	$(AS_CPU_PATH)/controller/Cyclic.st.o \
	$(AS_CPU_PATH)/controller/Init.st.o \
	$(AS_CPU_PATH)/controller/Exit.st.o
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link "$(AS_CPU_PATH)/controller/Cyclic.st.o" "$(AS_CPU_PATH)/controller/Init.st.o" "$(AS_CPU_PATH)/controller/Exit.st.o"  -o "$(AS_CPU_PATH)/controller/a.out"  -G V4.1.2  -T SG4  -M IA32  "-Wl,$(AS_SYSTEM_PATH)/D0421/SG4/IA32/libAsIecCon.a" "-Wl,$(AS_SYSTEM_PATH)/D0421/SG4/IA32/libbrsystem.a" "-Wl,$(AS_SYSTEM_PATH)/D0421/SG4/IA32/libsys_lib.a" "-Wl,$(AS_SYSTEM_PATH)/D0421/SG4/IA32/libstandard.a" "-Wl,$(AS_SYSTEM_PATH)/D0421/SG4/IA32/libastime.a" "-Wl,$(AS_SYSTEM_PATH)/D0421/SG4/IA32/libOperator.a" "-Wl,$(AS_SYSTEM_PATH)/D0421/SG4/IA32/libRuntime.a" -specs=I386specs -Wl,-q,-T,bur_elf_i386.x -nostdlib -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/controller/Cyclic.st.o: \
	$(AS_PROJECT_PATH)/Logical/controller/Cyclic.st \
	$(AS_PROJECT_PATH)/Logical/Global.var \
	$(AS_PROJECT_PATH)/Logical/Global.typ
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/controller/Cyclic.st" -o "$(AS_CPU_PATH)/controller/Cyclic.st.o"  -T SG4  -M IA32  -G V4.1.2  -s "controller" -t "$(AS_TEMP_PATH)" -pointers -extComments -extBitAccess -extConstants -D _SG4 -l "$(AS_PROJECT_PATH)/Logical/controller/Types.typ" "$(AS_PROJECT_PATH)/Logical/controller/Variables.var" -g "$(AS_PROJECT_PATH)/Logical/Libraries/Runtime/runtime.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/standard/standard.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/sys_lib/sys_lib.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/brsystem/brsystem.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/Runtime/runtime.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/Operator/operator.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/standard/standard.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/sys_lib/sys_lib.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/brsystem/brsystem.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/Runtime/runtime.var" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.var" "$(AS_PROJECT_PATH)/Logical/Libraries/standard/standard.var" "$(AS_PROJECT_PATH)/Logical/Libraries/sys_lib/sys_lib.var" "$(AS_PROJECT_PATH)/Logical/Libraries/brsystem/brsystem.var" "$(AS_PROJECT_PATH)/Logical/Global.typ" "$(AS_PROJECT_PATH)/Logical/Global.var"  -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

$(AS_CPU_PATH)/controller/Init.st.o: \
	$(AS_PROJECT_PATH)/Logical/controller/Init.st \
	$(AS_PROJECT_PATH)/Logical/Global.var \
	$(AS_PROJECT_PATH)/Logical/Global.typ
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/controller/Init.st" -o "$(AS_CPU_PATH)/controller/Init.st.o"  -T SG4  -M IA32  -G V4.1.2  -s "controller" -t "$(AS_TEMP_PATH)" -pointers -extComments -extBitAccess -extConstants -D _SG4 -l "$(AS_PROJECT_PATH)/Logical/controller/Types.typ" "$(AS_PROJECT_PATH)/Logical/controller/Variables.var" -g "$(AS_PROJECT_PATH)/Logical/Libraries/Runtime/runtime.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/standard/standard.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/sys_lib/sys_lib.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/brsystem/brsystem.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/Runtime/runtime.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/Operator/operator.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/standard/standard.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/sys_lib/sys_lib.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/brsystem/brsystem.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/Runtime/runtime.var" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.var" "$(AS_PROJECT_PATH)/Logical/Libraries/standard/standard.var" "$(AS_PROJECT_PATH)/Logical/Libraries/sys_lib/sys_lib.var" "$(AS_PROJECT_PATH)/Logical/Libraries/brsystem/brsystem.var" "$(AS_PROJECT_PATH)/Logical/Global.typ" "$(AS_PROJECT_PATH)/Logical/Global.var"  -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

$(AS_CPU_PATH)/controller/Exit.st.o: \
	$(AS_PROJECT_PATH)/Logical/controller/Exit.st \
	$(AS_PROJECT_PATH)/Logical/Global.var \
	$(AS_PROJECT_PATH)/Logical/Global.typ
	@"$(AS_BIN_PATH)/BR.AS.IecCompiler.exe" "$(AS_PROJECT_PATH)/Logical/controller/Exit.st" -o "$(AS_CPU_PATH)/controller/Exit.st.o"  -T SG4  -M IA32  -G V4.1.2  -s "controller" -t "$(AS_TEMP_PATH)" -pointers -extComments -extBitAccess -extConstants -D _SG4 -l "$(AS_PROJECT_PATH)/Logical/controller/Types.typ" "$(AS_PROJECT_PATH)/Logical/controller/Variables.var" -g "$(AS_PROJECT_PATH)/Logical/Libraries/Runtime/runtime.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/standard/standard.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/sys_lib/sys_lib.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/brsystem/brsystem.typ" "$(AS_PROJECT_PATH)/Logical/Libraries/Runtime/runtime.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/Operator/operator.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/standard/standard.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/sys_lib/sys_lib.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/brsystem/brsystem.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/AsIecCon/AsIecCon.fun" "$(AS_PROJECT_PATH)/Logical/Libraries/Runtime/runtime.var" "$(AS_PROJECT_PATH)/Logical/Libraries/astime/astime.var" "$(AS_PROJECT_PATH)/Logical/Libraries/standard/standard.var" "$(AS_PROJECT_PATH)/Logical/Libraries/sys_lib/sys_lib.var" "$(AS_PROJECT_PATH)/Logical/Libraries/brsystem/brsystem.var" "$(AS_PROJECT_PATH)/Logical/Global.typ" "$(AS_PROJECT_PATH)/Logical/Global.var"  -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ieccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 

