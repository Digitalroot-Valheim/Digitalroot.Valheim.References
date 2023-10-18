@echo off
SET DOTNET_SKIP_FIRST_TIME_EXPERIENCE = true
SET DOTNET_CLI_TELEMETRY_OPTOUT = true

echo == Installing BepInEx.AssemblyPublicizer.Cli == 
REM dotnet tool update -g BepInEx.AssemblyPublicizer.Cli

SETLOCAL

SET ValheimInstallPath="C:\Program Files (x86)\Steam\steamapps\common\Valheim\BepInEx\plugins\JvL"
echo ValheimInstallPath=%ValheimInstallPath%
SET PublicizePath=".\lib"
echo PublicizePath=%PublicizePath%
SET OPTIONS=--strip
echo OPTIONS=%OPTIONS%

echo == Publicizing Jotunn.dll ==
call assembly-publicizer "%ValheimInstallPath:"=%\Jotunn.dll" %OPTIONS% -o %PublicizePath%

echo == Copying Jotunn files to output directory ==
robocopy %ValheimInstallPath% %PublicizePath% Jotunn.* /R:3 /W:3 /XF "%ValheimInstallPath:"=%\Jotunn.dll"

ENDLOCAL

PAUSE

EXIT
