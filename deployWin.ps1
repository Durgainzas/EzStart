$sourceFolder = Get-item $PSScriptRoot
$sourcePath = Join-Path -Path $sourceFolder -ChildPath "\output\*"
$appDataPath = $env:APPDATA
$targetPath = Join-Path -Path $appDataPath -ChildPath "\Factorio\mods\"

function Deploy () {
    Copy-Item -Path $sourcePath -Destination $targetPath -Force

    if (Join-Path -Path $targetPath -ChildPath "\EzStart*" | Test-Path) {
        Write-Host "Deployment successful."
        break
    }

    Write-Host "Something failed!"
}

Deploy