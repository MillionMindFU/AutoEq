if (-not (Get-Command hatch -ErrorAction SilentlyContinue)) {
    Write-Host "Hatch not found" -ForegroundColor Red
    exit 1
}

try {
    cd webapp
    hatch run python -m uvicorn main:app --host 0.0.0.0 --port 8000
} catch {
    Write-Host "Error: $_" -ForegroundColor Red
    exit 1
}