# Microsoft Developer Studio Project File - Name="vcl" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=vcl - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "vcl.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "vcl.mak" CFG="vcl - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "vcl - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE "vcl - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "vcl - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
MTL=midl.exe
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_MBCS" /D "_LIB" /YX /FD /c
# ADD CPP /nologo /MD /W3 /GX /O2 /Ob2 /I "$(IUEROOT)\vxl\config.win32-VC60" /I "$(IUEROOT)/vxl" /D "NDEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /D "VCL_USE_NATIVE_STL" /YX /FD /c
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\Release\vcl.lib"

!ELSEIF  "$(CFG)" == "vcl - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "vcl___Win32_Debug"
# PROP BASE Intermediate_Dir "vcl___Win32_Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
MTL=midl.exe
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I "$(IUEROOT)\vxl\config.win32-VC60" /I "$(IUEROOT)/vxl" /D "_DEBUG" /D "WIN32" /D "_MBCS" /D "_LIB" /YX /FD /GZ /c
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo /out:"..\Debug\vcl.lib"

!ENDIF 

# Begin Target

# Name "vcl - Win32 Release"
# Name "vcl - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=".\Templates\complex-instances.cxx"
# End Source File
# Begin Source File

SOURCE=.\Templates\min_max.cxx
# End Source File
# Begin Source File

SOURCE=".\Templates\stream-instances.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\string-instances.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_algorithm+bool-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_algorithm+double-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_algorithm+float-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_algorithm+unsigned-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_b+char.vcl_s+char--.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_deque+int-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_list+int-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_map+double.int-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_map+int.int-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_map+int.void~-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_map+long.void~-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_map+string.int-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_map+string.string-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_map+unsigned_int.unsigned_int-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_map+unsigned_int.void~-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_map+void~.void~-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_ostream_iterator+int-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_pair+void~.int-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_set+int-.cxx"
# End Source File
# Begin Source File

SOURCE=.\vcl_unistd.cxx
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+bool-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+bool~-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+char-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+char~-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+complex+double--.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+complex+double-~-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+complex+float--.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+complex+float-~-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+const_char~-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+double-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+double~-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+float-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+float~-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+int-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+int~-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+long-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+long~-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+schar-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+slong-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+string-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+uchar-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+uchar~-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+uint-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+uint~-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+ulong-.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+vcl_vector+unsigned--.cxx"
# End Source File
# Begin Source File

SOURCE=".\Templates\vcl_vector+void~-.cxx"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\vcl_algorithm.h
# End Source File
# Begin Source File

SOURCE=.\vcl_alloc.h
# End Source File
# Begin Source File

SOURCE=.\vcl_cassert.h
# End Source File
# Begin Source File

SOURCE=.\vcl_cctype.h
# End Source File
# Begin Source File

SOURCE=.\vcl_climits.h
# End Source File
# Begin Source File

SOURCE=.\vcl_cmath.h
# End Source File
# Begin Source File

SOURCE=.\vcl_compiler.h
# End Source File
# Begin Source File

SOURCE=.\vcl_complex.h
# End Source File
# Begin Source File

SOURCE=.\vcl_complex_fwd.h
# End Source File
# Begin Source File

SOURCE=.\vcl_config.h
# End Source File
# Begin Source File

SOURCE=.\vcl_cstdarg.h
# End Source File
# Begin Source File

SOURCE=.\vcl_cstdio.h
# End Source File
# Begin Source File

SOURCE=.\vcl_cstdlib.h
# End Source File
# Begin Source File

SOURCE=.\vcl_cstring.h
# End Source File
# Begin Source File

SOURCE=.\vcl_ctime.h
# End Source File
# Begin Source File

SOURCE=.\vcl_deque.h
# End Source File
# Begin Source File

SOURCE=.\vcl_exception.h
# End Source File
# Begin Source File

SOURCE=.\vcl_fstream.h
# End Source File
# Begin Source File

SOURCE=.\vcl_functional.h
# End Source File
# Begin Source File

SOURCE=.\vcl_iomanip.h
# End Source File
# Begin Source File

SOURCE=.\vcl_ios.h
# End Source File
# Begin Source File

SOURCE=.\vcl_iosfwd.h
# End Source File
# Begin Source File

SOURCE=.\vcl_iostream.h
# End Source File
# Begin Source File

SOURCE=.\vcl_istream.h
# End Source File
# Begin Source File

SOURCE=.\vcl_iterator.h
# End Source File
# Begin Source File

SOURCE=.\vcl_limits.h
# End Source File
# Begin Source File

SOURCE=.\vcl_list.h
# End Source File
# Begin Source File

SOURCE=.\vcl_locale.h
# End Source File
# Begin Source File

SOURCE=.\vcl_map.h
# End Source File
# Begin Source File

SOURCE=.\vcl_memory.h
# End Source File
# Begin Source File

SOURCE=.\vcl_multimap.h
# End Source File
# Begin Source File

SOURCE=.\vcl_multiset.h
# End Source File
# Begin Source File

SOURCE=.\vcl_new.h
# End Source File
# Begin Source File

SOURCE=.\vcl_numeric.h
# End Source File
# Begin Source File

SOURCE=.\vcl_pair.h
# End Source File
# Begin Source File

SOURCE=.\vcl_queue.h
# End Source File
# Begin Source File

SOURCE=.\vcl_set.h
# End Source File
# Begin Source File

SOURCE=.\vcl_sstream.h
# End Source File
# Begin Source File

SOURCE=.\vcl_stack.h
# End Source File
# Begin Source File

SOURCE=.\vcl_stdexcept.h
# End Source File
# Begin Source File

SOURCE=.\vcl_stlfwd.h
# End Source File
# Begin Source File

SOURCE=.\vcl_streambuf.h
# End Source File
# Begin Source File

SOURCE=.\vcl_string.h
# End Source File
# Begin Source File

SOURCE=.\vcl_strstream.h
# End Source File
# Begin Source File

SOURCE=.\vcl_typeinfo.h
# End Source File
# Begin Source File

SOURCE=.\vcl_unistd.h
# End Source File
# Begin Source File

SOURCE=.\vcl_utility.h
# End Source File
# Begin Source File

SOURCE=.\vcl_vector.h
# End Source File
# End Group
# End Target
# End Project
