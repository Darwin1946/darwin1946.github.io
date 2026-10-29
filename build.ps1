$ErrorActionPreference = 'Stop'
Set-Location $PSScriptRoot
npm --prefix blog ci
if ($LASTEXITCODE -ne 0) { throw 'Dependency install failed' }
npm --prefix blog run build
if ($LASTEXITCODE -ne 0) { throw 'Build failed' }
$target = Join-Path $PSScriptRoot 'docs'
if (Test-Path -LiteralPath $target) {
  if ((Resolve-Path -LiteralPath $target).Path -ne [IO.Path]::GetFullPath((Join-Path $PSScriptRoot 'docs'))) { throw 'Unexpected output path' }
  Remove-Item -LiteralPath $target -Recurse -Force
}
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'blog/public') -Destination $target -Recurse
New-Item -ItemType File -Path (Join-Path $target '.nojekyll') -Force | Out-Null
Write-Host 'Build ready in docs/. Commit and push to publish.'
