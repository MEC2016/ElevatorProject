SHELL = cmd.exe
CYGWIN=nontsec
export PATH := C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;c:\Program Files (x86)\Intel\iCLS Client\;c:\Program Files\Intel\iCLS Client\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;c:\Program Files (x86)\ATI Technologies\ATI.ACE\Core-Static;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\Program Files (x86)\Windows Live\Shared;E:\bin;C:\Program Files (x86)\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files\Microsoft SQL Server\110\DTS\Binn\;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode
export AS_BUILD_MODE := Rebuild
export AS_VERSION := 4.2.1.214
export AS_COMPANY_NAME :=  
export AS_USER_NAME := Rick
export AS_PATH := E:/ASV/AS42
export AS_BIN_PATH := E:/ASV/AS42/Bin-en
export AS_PROJECT_PATH := C:/Users/Rick/Desktop/gittest/ElevatorProject/elevator
export AS_PROJECT_NAME := elevator
export AS_SYSTEM_PATH := E:/ASV/AS/System
export AS_VC_PATH := E:/ASV/AS42/AS/VC
export AS_TEMP_PATH := C:/Users/Rick/Desktop/gittest/ElevatorProject/elevator/Temp
export AS_CONFIGURATION := Simulation
export AS_BINARIES_PATH := C:/Users/Rick/Desktop/gittest/ElevatorProject/elevator/Binaries
export AS_GNU_INST_PATH := E:/ASV/AS42/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := E:/ASV/AS42/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := E:/ASV/AS42
export WIN32_AS_PATH := "E:\ASV\AS42"
export WIN32_AS_BIN_PATH := "E:\ASV\AS42\Bin-en"
export WIN32_AS_PROJECT_PATH := "C:\Users\Rick\Desktop\gittest\ElevatorProject\elevator"
export WIN32_AS_SYSTEM_PATH := "E:\ASV\AS\System"
export WIN32_AS_VC_PATH := "E:\ASV\AS42\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\Users\Rick\Desktop\gittest\ElevatorProject\elevator\Temp"
export WIN32_AS_BINARIES_PATH := "C:\Users\Rick\Desktop\gittest\ElevatorProject\elevator\Binaries"
export WIN32_AS_GNU_INST_PATH := "E:\ASV\AS42\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "E:\ASV\AS42"

.suffixes:

ProjectMakeFile:

	@"$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe" "$(AS_PROJECT_PATH)/elevator.apj" -t "$(AS_TEMP_PATH)" -c "$(AS_CONFIGURATION)" -o "$(AS_BINARIES_PATH)"   -sfas -buildMode "Rebuild" 

	@$(AS_GNU_BIN_PATH)/mingw32-make.exe -r -f 'C:/Users/Rick/Desktop/gittest/ElevatorProject/elevator/Temp/Objects/$(AS_CONFIGURATION)/PC_any/#cpu.mak' -k 

