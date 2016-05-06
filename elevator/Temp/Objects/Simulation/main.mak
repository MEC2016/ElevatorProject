SHELL = cmd.exe
CYGWIN=nontsec
export PATH := D:\TwinCAT\Common64;D:\TwinCAT\Common32;D:\tools\CMake\bin;C:\MinGW\bin;C:\ProgramData\Oracle\Java\javapath;C:\Program Files\Common Files\Microsoft Shared\Windows Live;C:\Program Files (x86)\Common Files\Microsoft Shared\Windows Live;C:\Program Files (x86)\Intel\iCLS Client\;C:\Program Files\Intel\iCLS Client\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\Intel\WiFi\bin\;C:\Program Files\Common Files\Intel\WirelessCommon\;C:\Program Files\ThinkPad\Bluetooth Software\;C:\Program Files\ThinkPad\Bluetooth Software\syswow64;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files (x86)\Intel\OpenCL SDK\2.0\bin\x86;C:\Program Files (x86)\Intel\OpenCL SDK\2.0\bin\x64;C:\Program Files\Common Files\Lenovo;C:\Program Files (x86)\Windows Live\Shared;C:\SWTOOLS\ReadyApps;C:\Program Files (x86)\Symantec\VIP Access Client\;C:\Program Files (x86)\Common Files\Lenovo;C:\Program Files\TortoiseSVN\bin;C:\Program Files\Microsoft Windows Performance Toolkit\;C:\Program Files\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files (x86)\IVI Foundation\VISA\WinNT\Bin;C:\Program Files (x86)\Intel\Phone Flash Tool Lite;d:\MATLAB\MATLAB Production Server\R2015a\runtime\win64;d:\MATLAB\MATLAB Production Server\R2015a\bin;d:\MATLAB\MATLAB Production Server\R2015a\polyspace\bin;C:\Program Files (x86)\Microsoft SDKs\TypeScript\1.0\;C:\Program Files\Microsoft\Web Platform Installer\;C:\Program Files (x86)\Microsoft ASP.NET\ASP.NET Web Pages\v1.0\;C:\Program Files (x86)\IVI Foundation\IVI\bin;C:\Program Files (x86)\IVI Foundation\VISA\WinNT\Bin\;C:\Program Files (x86)\IVI Foundation\VISA\WinNT\Bin;C:\Program Files\IVI Foundation\VISA\Win64\Bin\;C:\Program Files (x86)\Windows Kits\8.1\Windows Performance Toolkit\;d:\tools\ATMEL Corporation\SAM-BA v2.10;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\Chen\AppData\Local\Pandoc\;d:\tools\ATMEL Corporation\SAM-BA v2.10;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\Chen\AppData\Local\Pandoc
export AS_BUILD_MODE := Build
export AS_VERSION := 4.2.1.214
export AS_COMPANY_NAME :=  
export AS_USER_NAME := Chen
export AS_PATH := D:/BrAutomation/AS42
export AS_BIN_PATH := D:/BrAutomation/AS42/Bin-en
export AS_PROJECT_PATH := E:/0-elevator/elevator
export AS_PROJECT_NAME := elevator
export AS_SYSTEM_PATH := D:/BrAutomation/AS/System
export AS_VC_PATH := D:/BrAutomation/AS42/AS/VC
export AS_TEMP_PATH := E:/0-elevator/elevator/Temp
export AS_CONFIGURATION := Simulation
export AS_BINARIES_PATH := E:/0-elevator/elevator/Binaries
export AS_GNU_INST_PATH := D:/BrAutomation/AS42/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := D:/BrAutomation/AS42/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := D:/BrAutomation/AS42
export WIN32_AS_PATH := "D:\BrAutomation\AS42"
export WIN32_AS_BIN_PATH := "D:\BrAutomation\AS42\Bin-en"
export WIN32_AS_PROJECT_PATH := "E:\0-elevator\elevator"
export WIN32_AS_SYSTEM_PATH := "D:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "D:\BrAutomation\AS42\AS\VC"
export WIN32_AS_TEMP_PATH := "E:\0-elevator\elevator\Temp"
export WIN32_AS_BINARIES_PATH := "E:\0-elevator\elevator\Binaries"
export WIN32_AS_GNU_INST_PATH := "D:\BrAutomation\AS42\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "D:\BrAutomation\AS42"

.suffixes:

ProjectMakeFile:

	@"$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe" "$(AS_PROJECT_PATH)/elevator.apj" -t "$(AS_TEMP_PATH)" -c "$(AS_CONFIGURATION)" -o "$(AS_BINARIES_PATH)"   -sfas -buildMode "Build" 

	@$(AS_GNU_BIN_PATH)/mingw32-make.exe -r -f 'E:/0-elevator/elevator/Temp/Objects/$(AS_CONFIGURATION)/PC_any/#cpu.mak' -k 

