param(
    [string]$baseDir=$(Split-Path $MyInvocation.MyCommand.Path),
    [string]$version=$([Environment]::GetEnvironmentVariable("CCNetLabel", "Process")),
    [string]$packageName="Isogeo.Help_AnyCPU_Release_$version.install.zip",
    [string]$srcPath=$(Join-Path (Split-Path $baseDir -Parent) 'tmp\out\bin'),
    [string]$upkPath=$(Join-Path (Split-Path $baseDir -Parent) 'tmp\obj\install\unpack'),
    [string]$objPath=$(Join-Path (Split-Path $baseDir -Parent) 'tmp\obj\install\Isogeo.Help'),
    [string]$cfgPath=$(Join-Path $upkPath 'config.int.ps1'),
    [string]$psPath=$(Join-Path (Split-Path $baseDir -Parent) 'build'),
    [string]$installPath=$(Join-Path (Split-Path $baseDir -Parent) 'build')
)
trap [System.Exception] {
    Write-Error $_.Exception.ToString()
    Exit -1
}

if (!(Test-Path -Path (Join-Path $psPath psake.psm1))) {
    $psPath=(Get-ChildItem -Path (Join-Path (Split-Path $baseDir -Parent) packages) -Filter psake.psm1 -Recurse | Select-Object -First 1).DirectoryName
}
if (!(Test-Path -Path (Join-Path $installPath Install.psm1))) {
    $installPath=(Get-ChildItem (Join-Path (Split-Path $baseDir -Parent) packages) -Recurse Install.psm1 | Select-Object -First 1).DirectoryName
}
Import-Module -Name (Join-Path $psPath psake) -DisableNameChecking
Import-Module -Name (Join-Path $installPath Install) -DisableNameChecking

New-Item $upkPath -Type Directory -Force | Out-Null
Unzip-File (Join-Path $srcPath $packageName) $upkPath

Invoke-psake (Join-Path $upkPath install.ps1)  -properties @{ baseDir=$upkPath; srcPath=$upkPath; configPath=$cfgPath; objPath=$objPath } -nologo
