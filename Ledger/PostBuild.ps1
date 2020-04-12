param($name, $dll, $game, $config)

$prefix = ".\dist\$name"

Copy-Item ".\Module\*" -Destination "$prefix\" -Recurse -Force
Copy-Item "$dll" -Destination "$prefix\bin\Win64_Shipping_Client" -Force

(Get-Content -Path "$prefix\SubModule.xml" -Raw) -Replace '\$\(Version\)', (Get-ChildItem "$dll").VersionInfo.FileVersion | Set-Content -Path "$prefix\SubModule.xml" -Force

Copy-Item "$prefix" -Destination "$game\Modules" -Recurse -Force

If ($config -eq "Debug") {
    Start-Process -FilePath "$game\bin\Win64_Shipping_Client\Bannerlord.exe" -ArgumentList "/singleplayer _MODULES_*Native*SandBoxCore*CustomBattle*SandBox*StoryMode*$name*_MODULES_"
}
