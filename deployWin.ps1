$sourceFolder = Get-item $PSScriptRoot
$sourcePath = Join-Path -Path $sourceFolder -ChildPath "\output\*.zip"
$appDataPath = $env:APPDATA
$targetPath = Join-Path -Path $appDataPath -ChildPath "\Factorio\mods\"

function Deploy () {
    Remove-Item -Path ($targetPath + "*") -Filter "EzStart*" -Force
    $latest = Get-ChildItem -Path $sourcePath | Sort-Object LastAccessTime -Descending | Select-Object -First 1
    Copy-Item -Path $latest -Destination $targetPath -Force

    if (Test-Path $latest) {
        Write-Host "Deployment successful."
        break
    }

    Write-Host "Something failed!"
}

Deploy