param(
    [switch]$WhatIf
)

$ErrorActionPreference = "Stop"

$scriptRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$sourceDir = Join-Path $scriptRoot "..\skills"

if (-not (Test-Path $sourceDir)) {
    Write-Error "找不到 skills 目录: $sourceDir"
    exit 1
}

$targets = @(
    "$env:USERPROFILE\.agents\skills"
    "$env:USERPROFILE\.claude\skills"
)

foreach ($target in $targets) {
    Write-Host "--- 安装到 $target ---"

    foreach ($category in Get-ChildItem -Path $sourceDir -Directory) {
        foreach ($skill in Get-ChildItem -Path $category.FullName -Directory) {
            $dest = Join-Path $target $category.Name $skill.Name

            if ($WhatIf) {
                Write-Host "  [预览] $($skill.FullName) -> $dest"
            } else {
                New-Item -ItemType Directory -Path $dest -Force | Out-Null
                Copy-Item -Path "$($skill.FullName)\*" -Destination $dest -Recurse -Force
                Write-Host "  + $($category.Name)/$($skill.Name)"
            }
        }
    }
}

if (-not $WhatIf) {
    Write-Host "`n完成。"
}
