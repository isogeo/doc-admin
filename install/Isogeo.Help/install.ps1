properties {
    $baseDir=Resolve-Path .
    $packageName="package.zip"
    $configPath=Join-Path (Resolve-Path .) 'config.int.ps1'
    $srcPath=Resolve-Path .
    $objPath=Join-Path "$Env:TMP" "install\Isogeo.Help"
    $intPath=Join-Path "C:\inetpub" "Isogeo.Help"
    $msdeploy=Join-Path (Get-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\IIS Extensions\MSDeploy\3").InstallPath msdeploy.exe
}


Task default -depends Install

Task Install -depends Init, Clean {
    . $configPath

    $authParams=""
    if ($($config.destination.authorization) -ne $NULL) {
        foreach ($attr in $($config.destination.authorization).GetEnumerator()) {
            $authParams+=",$($attr.Key)=`"$($attr.Value)`""
        }
    }

    if ($($config.destination.restart)) {
        $stopargs=@( "-verb:sync"; "-source:recycleApp"; "-dest:recycleApp=`"$($config.destination.application)`",recycleMode=StopAppPool,computerName=`"$($config.destination.server)`"$authParams" )
        Write-Host "`"$msdeploy`"" $stopargs
        & "$msdeploy" $stopargs | Write-Host -ForegroundColor DarkGray
        FailOnError
    }

    New-Item $objPath -Type Directory -Force | Out-Null

    $intPathRegEx=$intPath -replace "\\", "\\"

    $dstManifestPath=Join-Path $objPath "manifest.dest.xml"
    $dstManifest = New-ManifestDocument { $($config.destination.manifest) }
    $dstManifest.Save($dstManifestPath)

    $paramPath=Join-Path $objPath "parameters.dest.xml"
    $param = New-ParameterDocument { $($config.destination.parameters) }
    $param.Save($paramPath)

    Write-Host
    Set-Location $srcPath
    $deplargs=@( "-verb:sync"; "-source:package=`"$packageName`""; "-dest:manifest=`"$dstManifestPath`",computerName=`"$($config.destination.server)`"$authParams"; "-setParamFile:`"$paramPath`""; "-replace:objectName=path,match=`"$intPathRegEx`",replace=`"$($config.destination.path)`""; "-allowUntrusted" )
    Write-Host "`"$msdeploy`"" $deplargs
    & "$msdeploy" $deplargs | Write-Host -ForegroundColor DarkGray
    FailOnError

    if ($($config.destination.restart)) {
        Write-Host
        $startargs=@( "-verb:sync"; "-source:recycleApp"; "-dest:recycleApp=`"$($config.destination.application)`",recycleMode=StartAppPool,computerName=`"$($config.destination.server)`"$authParams" )
        Write-Host "`"$msdeploy`"" $startargs
        & "$msdeploy" $startargs | Write-Host -ForegroundColor DarkGray
        FailOnError
    }
}

Task Init {
    Import-Module -Name (Join-Path $baseDir Install) -DisableNameChecking
}

Task Clean -depends Init {
  Remove-Item -Force -Recurse $objPath -ErrorAction SilentlyContinue
}
