param()

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$projectRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path

if (-not (Test-Path -LiteralPath (Join-Path $projectRoot ".git"))) {
  throw "No Git repository found. Please run this after the project has been initialized and pushed to GitHub."
}

Write-Host "Project root: $projectRoot"
& git -C $projectRoot pull --ff-only
& git -C $projectRoot status --short

