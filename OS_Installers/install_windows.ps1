# Zephyr Installer for Windows PowerShell

Write-Host "=== Zephyr Installer for Windows ===" -ForegroundColor Cyan

# Step 1: Check for Swift
$swift = Get-Command swift -ErrorAction SilentlyContinue
if (-not $swift) {
    Write-Host "[!] Swift not found. Installing via winget..." -ForegroundColor Yellow
    winget install --id Swift.Project --source winget
} else {
    Write-Host "[+] Swift already installed." -ForegroundColor Green
}

# Step 2: Build Zephyr
Write-Host "[*] Building Zephyr..." -ForegroundColor Cyan
swift build -c release

# Step 3: Add to PATH
$zephyrExe = "$PWD\.build\release\Zephyr.exe"
$dest = "C:\Zephyr"
New-Item -ItemType Directory -Force -Path $dest | Out-Null
Copy-Item $zephyrExe "$dest\zephyr.exe" -Force

[Environment]::SetEnvironmentVariable("PATH", $env:PATH + ";$dest", "Machine")

Write-Host "[✅] Zephyr installed successfully!" -ForegroundColor Green
Write-Host "Run it with: zephyr yourfile.zpr"
