#!/usr/bin/env pwsh

<#
Quick pass generator
@Sewa5
#>

[CmdletBinding()]
param (
    # Count of Combinations
    [Parameter()]
    [int]
    $Count = 2,
    # Password Base
    [Parameter()]
    [string]
    $PassBase = "pass",
    # Path to file
    [Parameter()]
    [string]
    $OutPath = ".\generated-passwords.lst"
)
Write-Host "Generating Password Combinations"
for ($i = 0; $i -lt [Math]::Pow(10, $Count); $i++) {
    $x += $PassBase + ("{0:"+"0" * $Count + "}") -f $i + "`n"
}
New-Item $OutPath -Force -Value $x