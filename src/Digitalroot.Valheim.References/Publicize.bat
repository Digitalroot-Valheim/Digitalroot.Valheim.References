@echo off
SET DOTNET_SKIP_FIRST_TIME_EXPERIENCE = true
SET DOTNET_CLI_TELEMETRY_OPTOUT = true

echo == Installing BepInEx.AssemblyPublicizer.Cli ==
REM dotnet tool update -g BepInEx.AssemblyPublicizer.Cli

SETLOCAL

SET ValheimInstallPath="C:\Program Files (x86)\Steam\steamapps\common\Valheim\valheim_Data\Managed"
echo ValheimInstallPath=%ValheimInstallPath%
SET PublicizePath=".\lib"
echo PublicizePath=%PublicizePath%
SET OPTIONS=--strip
echo OPTIONS=%OPTIONS%

echo == Publicizing assembly_*.dll ==
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_googleanalytics.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_guiutils.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_lux.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_postprocessing.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_simplemeshcombine.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_steamworks.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_sunshafts.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_utils.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\assembly_valheim.dll" %OPTIONS% -o %PublicizePath%

echo == Publicizing Unity_*.dll ==
call assembly-publicizer "%ValheimInstallPath:"=%\Unity.AI.Navigation.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\Unity.InputSystem.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\Unity.InputSystem.ForUI.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\Unity.MemoryProfiler.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\Unity.TextMeshPro.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\Unity.Timeline.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.AccessibilityModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.AIModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.AndroidJNIModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.AnimationModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.ARModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.AssetBundleModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.AudioModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.ClothModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.ClusterInputModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.ClusterRendererModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.ContentLoadModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.CoreModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.CrashReportingModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.DirectorModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.DSPGraphModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.GameCenterModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.GIModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.GridModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.HotReloadModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.ImageConversionModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.IMGUIModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.InputLegacyModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.InputModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.JSONSerializeModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.LocalizationModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.NVIDIAModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.ParticleSystemModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.PerformanceReportingModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.Physics2DModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.PhysicsModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.ProfilerModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.PropertiesModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.RuntimeInitializeOnLoadManagerInitializerModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.ScreenCaptureModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.SharedInternalsModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.SpatialTracking.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.SpriteMaskModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.SpriteShapeModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.StreamingModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.SubstanceModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.SubsystemsModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.TerrainModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.TerrainPhysicsModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.TextCoreFontEngineModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.TextCoreModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.TextCoreTextEngineModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.TextRenderingModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.TilemapModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.TLSModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UI.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UIElementsModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UIElementsNativeModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UIModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UmbraModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UNETModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UnityAnalyticsCommonModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UnityAnalyticsModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UnityConnectModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UnityCurlModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UnityTestProtocolModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UnityWebRequestAssetBundleModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UnityWebRequestAudioModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UnityWebRequestModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UnityWebRequestTextureModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.UnityWebRequestWWWModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.VehiclesModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.VFXModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.VideoModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.VirtualTexturingModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.VRModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.WindModule.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.XR.LegacyInputHelpers.dll" %OPTIONS% -o %PublicizePath%
call assembly-publicizer "%ValheimInstallPath:"=%\UnityEngine.XRModule.dll" %OPTIONS% -o %PublicizePath%

ENDLOCAL

PAUSE

EXIT
