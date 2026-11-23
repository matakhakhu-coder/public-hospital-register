# Copies the register data and session logs into site/data/ so the public page can read them.
# Run from the repo root:  .\sync-site.ps1

$root = $PSScriptRoot
$out = Join-Path $root "site\data"
New-Item -ItemType Directory -Force -Path $out | Out-Null

$hospitals = Get-ChildItem "$root\data\hospitals\*.json" | ForEach-Object {
  Get-Content $_.FullName -Raw | ConvertFrom-Json
}
ConvertTo-Json -InputObject @($hospitals) -Depth 12 | Set-Content "$out\hospitals.json" -Encoding UTF8

$logs = Get-ChildItem "$root\log\*.md" | Sort-Object Name -Descending | ForEach-Object {
  [pscustomobject]@{ name = $_.BaseName; text = (Get-Content $_.FullName -Raw) }
}
ConvertTo-Json -InputObject @($logs) -Depth 4 | Set-Content "$out\logs.json" -Encoding UTF8

Write-Host "Site data synced."
