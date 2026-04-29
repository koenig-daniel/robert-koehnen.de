# Session End — git commit + push
Write-Host ""
Write-Host "=== SESSION END ===" -ForegroundColor Cyan
Write-Host ""

git add -A
$msg = "Session end " + (Get-Date -Format "yyyy-MM-dd HH:mm")
git diff --cached --quiet
if ($LASTEXITCODE -ne 0) {
    git commit -m $msg
    git push
    Write-Host "Gepusht." -ForegroundColor Green
} else {
    Write-Host "Nichts zu committen." -ForegroundColor Gray
}

Write-Host ""
Write-Host ">>> Claude: Memory fuer diese Session aktualisieren." -ForegroundColor Yellow
