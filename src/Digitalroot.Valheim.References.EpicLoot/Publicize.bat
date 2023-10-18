@echo off
SET DOTNET_SKIP_FIRST_TIME_EXPERIENCE = true
SET DOTNET_CLI_TELEMETRY_OPTOUT = true

echo == Installing BepInEx.AssemblyPublicizer.Cli == 
REM dotnet tool update -g BepInEx.AssemblyPublicizer.Cli

SETLOCAL

SET ValheimInstallPath="C:\Program Files (x86)\Steam\steamapps\common\Valheim\BepInEx\plugins\EpicLoot"
echo ValheimInstallPath=%ValheimInstallPath%
SET PublicizePath=".\lib"
echo PublicizePath=%PublicizePath%
SET OPTIONS=--strip
echo OPTIONS=%OPTIONS%

echo == Publicizing EpicLoot.dll ==
call assembly-publicizer "%ValheimInstallPath:"=%\EpicLoot.dll" %OPTIONS% -o %PublicizePath%

ENDLOCAL

PAUSE

EXIT
