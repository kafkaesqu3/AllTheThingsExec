# AllTheThingsExec
Executes Blended Managed/Unmanged Exports


## Compile AllTheThings.cs

## You need the .net SDK for ildasm

`C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe /platform:AnyCPU /target:library .\AllTheThings.cs`
 
## Add your export directives

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

