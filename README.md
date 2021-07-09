# AllTheThingsExec
Executes Blended Managed/Unmanged Exports


## Compile AllTheThings.cs
`C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe /platform:AnyCPU /target:library .\AllTheThings.cs`
 

## You need the .net SDK for ildasm
`C:\Program Files (x86)\Microsoft SDKs\Windows\v10.0A\bin\NETFX 4.8 Tools\ildasm.exe /out:AllTheThings.il .\AllTheThings.dll`

## Add your export directives

Something like this, your specifics may vary
```
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

```


## Re-assemble
`C:\Windows\Microsoft.NET\Framework\v4.0.30319\ilasm.exe AllTheThings.il /DLL /output=AllTheThings.dll`

## You can have weird consequences of x64 x86 


## Create a .bat file like this and test all the various iterations.

```
C:\Windows\Microsoft.NET\Framework64\v4.0.30319\InstallUtil.exe /logfile= /LogToConsole=false /U AllTheThings.dll
C:\Windows\Microsoft.NET\Framework64\v4.0.30319\regsvcs.exe AllTheThings.dll
C:\Windows\Microsoft.NET\Framework64\v4.0.30319\regasm.exe /U AllTheThings.dll
regsvr32 /s /u AllTheThings.dll
regsvr32 /s AllTheThings.dll
rundll32 AllTheThings.dll,EntryPoint
odbcconf.exe /a { REGSVR AllTheThings.dll }
regsvr32.exe /s /n /i:"Some String To Do Things ;-)" AllTheThings.dll
C:\Windows\Microsoft.NET\Framework\v4.0.30319\InstallUtil.exe /? AllTheThings.dll
```
experiment with various behavior like using .snk etc..



Cheers



THanks to Adam @xpn good documentation here on how to do this without other dependencies

https://blog.xpnsec.com/rundll32-your-dotnet/
https://blog.xpnsec.com/the-net-export-portal/

