$currentFolder = Get-item $PSScriptRoot
$infoFilePath = Join-Path -Path $currentFolder -ChildPath "source\info.json"
$sourcePath = Join-Path -Path $currentFolder -ChildPath "source\*"
$outputFolder = Join-Path -Path $currentFolder -ChildPath "output\"

function Build-Mod {
    if (-Not (Test-Path $outputFolder)) { New-Item -ItemType Directory -Path $outputFolder -Force }

    if (Get-FileName($infoFilePath) | Export-ToZipFile | Test-Path)
    {
        Write-Host "Build successful."
        break
    }

    Write-Host "Something failed!"
}

function Get-FileName([string]$filePath) {
    try {
        $convertedFile = Get-Content $filePath -ErrorAction Stop | ConvertFrom-Json
    }
    catch {
        Write-Host "There was problem reading file!"
        break
    }

    $zipName = ($convertedFile.name + "_" + $convertedFile.version)
    return $zipName
}

function Export-ToZipFile {
    param (
        # Parameter help description
        [Parameter(Mandatory=$true,
        ValueFromPipeline=$true)]
        [string]
        $file
    )

    $outputPath = Join-Path -Path $outputFolder -ChildPath ($file + ".zip")

    try {
        Compress-Archive -Path $sourcePath -DestinationPath $outputPath -Force -CompressionLevel NoCompression 
    }
    catch {
        Write-Host "There was error during creating zipfile"
        break
    }
    
    return $outputPath
}

Build-Mod