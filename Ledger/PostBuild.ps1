param([String]$name = "")
param([String]$dll = "")
param([String]$install = "")

$prefix = ".\dist\$name"

Copy-Item .\Module -Destination $prefix -Recurse
Copy-Item $dll -Destination $prefix\bin\Win64_Shipping_Client\

(Get-Content -Path $prefix\SubModule.xml -Raw) -Replace '$(Version)', (Get-ChildItem $dll).VersionInfo.FileVersion | Set-Content -Path $prefix\SubModule.xml

If ($install -ne "") {
    Copy-Item $prefix -Destination $install\Modules\$name -Recurse
}
