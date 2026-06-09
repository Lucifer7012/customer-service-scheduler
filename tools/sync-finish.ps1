param(
  [string]$Message = ""
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$projectRoot = (Resolve-Path (Join-Path $PSScriptRoot "..")).Path

if (-not (Test-Path -LiteralPath (Join-Path $projectRoot ".git"))) {
  throw "No Git repository found. Please initialize the repository first."
}

Push-Location $projectRoot
try {
  & node tools/check-html.js

  $statusBeforeAdd = (& git status --short).Trim()
  if ($statusBeforeAdd) {
    Write-Host $statusBeforeAdd
  }

  & git add -- .

  $statusAfterAdd = (& git status --short).Trim()
  if (-not $statusAfterAdd) {
    Write-Host "No changes to commit."
    exit 0
  }

  if (-not $Message) {
    $Message = "Update scheduler on $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
  }

  & git commit -m $Message
  & git push origin main
  & git log --oneline -1
}
finally {
  Pop-Location
}

