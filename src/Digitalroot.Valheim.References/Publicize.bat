@echo off
SET DOTNET_SKIP_FIRST_TIME_EXPERIENCE = true
SET DOTNET_CLI_TELEMETRY_OPTOUT = true

echo == Installing BepInEx.AssemblyPublicizer.Cli ==
REM dotnet tool update -g BepInEx.AssemblyPublicizer.Cli

SETLOCAL

SET ValheimInstallPath="C:\Program Files (x86)\Steam\steamapps\common\Valheim\valheim_Data\Managed"
echo ValheimInstallPath=%ValheimInstallPath%
SET PublicizePath=".\Digitalroot.Valheim.References\lib"
echo PublicizePath=%PublicizePath%
SET OPTIONS=--strip
echo OPTIONS=%OPTIONS%

echo == Publicizing assembly_*.dll ==
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_googleanalytics.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_guiutils.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_lux.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_postprocessing.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_simplemeshcombine.dll" %OPTIONS% -o %PublicizePath%
REM call assembly-publicizer "%ValheimInstallPath:"=%\assembly_steamworks.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_sunshafts.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_utils.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_valheim.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\gui_framework.dll" %OPTIONS% -o %PublicizePath%

ENDLOCAL

REM PAUSE

EXIT
