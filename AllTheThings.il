
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.8.4084.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v4.0.30319
.module extern user32.dll
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly extern System.Configuration.Install
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:0:0
}
.assembly extern System.EnterpriseServices
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 4:0:0:0
}
.assembly extern System
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 4:0:0:0
}
.assembly AllTheThings
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.
  .custom instance void [System.EnterpriseServices]System.EnterpriseServices.ApplicationActivationAttribute::.ctor(valuetype [System.EnterpriseServices]System.EnterpriseServices.ActivationOption) = ( 01 00 01 00 00 00 00 00 ) 
  .custom instance void [System.EnterpriseServices]System.EnterpriseServices.ApplicationAccessControlAttribute::.ctor(bool) = ( 01 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module AllTheThings.dll
// MVID: {1B4AF376-91A2-4D3F-B05C-DA6F021AD30E}
.imagebase 0x10000000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0003       // WINDOWS_CUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x06680000


// =============== CLASS MEMBERS DECLARATION ===================

.class public auto ansi beforefieldinit Program
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  Main() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Hello From Main...I Don't Do Anything"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Program::Main

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Program::.ctor

} // end of class Program

.class public auto ansi beforefieldinit Thing0
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  ExecParam(string a) cil managed
  {
    // Code size       26 (0x1a)
    .maxstack  2
    .locals init (class [System]System.Diagnostics.Process V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "cmd.exe"
    IL_0006:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::Start(string)
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  callvirt   instance native int [System]System.Diagnostics.Process::get_MainWindowHandle()
    IL_0012:  ldarg.0
    IL_0013:  call       int32 Thing0::SetWindowText(native int,
                                                     string)
    IL_0018:  pop
    IL_0019:  ret
  } // end of method Thing0::ExecParam

  .method private hidebysig static pinvokeimpl("user32.dll" winapi) 
          int32  SetWindowText(native int hWnd,
                               string text) cil managed preservesig
  {
  }
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Thing0::.ctor

} // end of class Thing0

.class public auto ansi beforefieldinit Things
       extends [System.Configuration.Install]System.Configuration.Install.Installer
{
  .custom instance void [System]System.ComponentModel.RunInstallerAttribute::.ctor(bool) = ( 01 00 01 00 00 ) 
  .method public hidebysig virtual instance void 
          Uninstall(class [mscorlib]System.Collections.IDictionary savedState) cil managed
  {
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "Hello There From Uninstall"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldstr      "InstallUtil Uninstall"
    IL_0011:  call       void Thing0::ExecParam(string)
    IL_0016:  nop
    IL_0017:  ret
  } // end of method Things::Uninstall

  .method public hidebysig specialname virtual 
          instance string  get_HelpText() cil managed
  {
    // Code size       22 (0x16)
    .maxstack  1
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "InstallUtil Uninstall"
    IL_0006:  call       void Thing0::ExecParam(string)
    IL_000b:  nop
    IL_000c:  ldstr      "Executed: HelpText property\n"
    IL_0011:  stloc.0
    IL_0012:  br.s       IL_0014

    IL_0014:  ldloc.0
    IL_0015:  ret
  } // end of method Things::get_HelpText

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.Configuration.Install]System.Configuration.Install.Installer::.ctor()
    IL_0006:  ret
  } // end of method Things::.ctor

  .property instance string HelpText()
  {
    .get instance string Things::get_HelpText()
  } // end of property Things::HelpText
} // end of class Things

.class public auto ansi beforefieldinit Bypass
       extends [System.EnterpriseServices]System.EnterpriseServices.ServicedComponent
{
  .custom instance void [System.EnterpriseServices]System.EnterpriseServices.TransactionAttribute::.ctor(valuetype [System.EnterpriseServices]System.EnterpriseServices.TransactionOption) = ( 01 00 03 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.GuidAttribute::.ctor(string) = ( 01 00 24 33 31 44 32 42 39 36 39 2D 37 36 30 38   // ..$31D2B969-7608
                                                                                                  2D 34 32 36 45 2D 39 44 38 45 2D 41 30 39 46 43   // -426E-9D8E-A09FC
                                                                                                  39 41 35 31 36 38 30 00 00 )                      // 9A51680..
  .custom instance void [mscorlib]System.Runtime.InteropServices.ClassInterfaceAttribute::.ctor(valuetype [mscorlib]System.Runtime.InteropServices.ClassInterfaceType) = ( 01 00 00 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.InteropServices.ProgIdAttribute::.ctor(string) = ( 01 00 0F 64 6C 6C 67 75 65 73 74 2E 42 79 70 61   // ...dllguest.Bypa
                                                                                                    73 73 00 00 )                                     // ss..
  .custom instance void [mscorlib]System.Runtime.InteropServices.ComVisibleAttribute::.ctor(bool) = ( 01 00 01 00 00 ) 
  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       21 (0x15)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [System.EnterpriseServices]System.EnterpriseServices.ServicedComponent::.ctor()
    IL_0006:  nop
    IL_0007:  nop
    IL_0008:  ldstr      "I am a basic COM Object"
    IL_000d:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_0012:  nop
    IL_0013:  nop
    IL_0014:  ret
  } // end of method Bypass::.ctor

  .method public hidebysig static void  RegisterClass(string key) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComRegisterFunctionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "I shouldn't really execute"
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldstr      "COM UnRegisterClass"
    IL_0011:  call       void Thing0::ExecParam(string)
    IL_0016:  nop
    IL_0017:  ret
  } // end of method Bypass::RegisterClass

  .method public hidebysig static void  UnRegisterClass(string key) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.InteropServices.ComUnregisterFunctionAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       24 (0x18)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "I shouldn't really execute either."
    IL_0006:  call       void [mscorlib]System.Console::WriteLine(string)
    IL_000b:  nop
    IL_000c:  ldstr      "COM UnRegisterClass"
    IL_0011:  call       void Thing0::ExecParam(string)
    IL_0016:  nop
    IL_0017:  ret
  } // end of method Bypass::UnRegisterClass

  .method public hidebysig instance void 
          Exec() cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldstr      "COM Public Exec"
    IL_0006:  call       void Thing0::ExecParam(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Bypass::Exec

} // end of class Bypass

.class private auto ansi beforefieldinit Exports
       extends [mscorlib]System.Object
{
  .method public hidebysig static void  EntryPoint(native int hwnd,
                                                   native int hinst,
                                                   string lpszCmdLine,
                                                   int32 nCmdShow) cil managed
  {
    // Code size       13 (0xd)
    .maxstack  8
	.export[0]
    IL_0000:  nop
    IL_0001:  ldstr      "EntryPoint"
    IL_0006:  call       void Thing0::ExecParam(string)
    IL_000b:  nop
    IL_000c:  ret
  } // end of method Exports::EntryPoint

  .method public hidebysig static bool  DllRegisterServer() cil managed
  {
    // Code size       18 (0x12)
    .maxstack  1
	.export[1]
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "DllRegisterServer"
    IL_0006:  call       void Thing0::ExecParam(string)
    IL_000b:  nop
    IL_000c:  ldc.i4.1
    IL_000d:  stloc.0
    IL_000e:  br.s       IL_0010

    IL_0010:  ldloc.0
    IL_0011:  ret
  } // end of method Exports::DllRegisterServer

  .method public hidebysig static bool  DllUnregisterServer() cil managed
  {
    // Code size       18 (0x12)
    .maxstack  1
	.export[2]
    .locals init (bool V_0)
    IL_0000:  nop
    IL_0001:  ldstr      "DllUnregisterServer"
    IL_0006:  call       void Thing0::ExecParam(string)
    IL_000b:  nop
    IL_000c:  ldc.i4.1
    IL_000d:  stloc.0
    IL_000e:  br.s       IL_0010

    IL_0010:  ldloc.0
    IL_0011:  ret
  } // end of method Exports::DllUnregisterServer

  .method public hidebysig static void  DllInstall(bool bInstall,
                                                   native int a) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  1
	.export[3]
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  ldarg.1
    IL_0002:  call       string [mscorlib]System.Runtime.InteropServices.Marshal::PtrToStringUni(native int)
    IL_0007:  stloc.0
    IL_0008:  ldloc.0
    IL_0009:  call       void Thing0::ExecParam(string)
    IL_000e:  nop
    IL_000f:  ret
  } // end of method Exports::DllInstall

  .method public hidebysig specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       7 (0x7)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  ret
  } // end of method Exports::.ctor

} // end of class Exports


// =============================================================

// *********** DISASSEMBLY COMPLETE ***********************
// WARNING: Created Win32 resource file AllTheThings.res
