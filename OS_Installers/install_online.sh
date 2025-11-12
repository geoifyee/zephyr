#!/bin/bash
# Zephyr Online Installer (universal)
# Created by Zephyr Developers © 2025
# Repo: https://github.com/geoifyee/zephyr

echo "====================================="
echo "🌪️  Zephyr Universal Installer v1.1"
echo "====================================="

# --- Detect OS ---
OS="$(uname -s)"
case "$OS" in
    Linux*)     OS_TYPE=Linux ;;
    Darwin*)    OS_TYPE=macOS ;;
    MINGW*|MSYS*|CYGWIN*) OS_TYPE=Windows ;;
    *)          OS_TYPE="Unknown" ;;
esac

echo "Detected OS: $OS_TYPE"

# --- Download the repo if not present ---
if [ ! -d "zephyr" ]; then
    echo "[*] Downloading latest Zephyr release from GitHub..."
    git clone --depth 1 https://github.com/geoifyee/zephyr.git
    cd zephyr || exit 1
else
    echo "[+] Zephyr repo already present. Updating..."
    cd zephyr || exit 1
    git pull origin main
fi

# --- Install depending on OS ---
case "$OS_TYPE" in
    Linux)
        echo "[*] Running Linux installer..."
        bash ./OS_Installers/install_linux.sh
        ;;
    macOS)
        echo "[*] Running macOS installer..."
        bash ./OS_Installers/install_macos.sh
        ;;
    Windows)
        echo "[*] Running Windows installer (PowerShell)..."
        powershell -ExecutionPolicy Bypass -File ./OS_Installers/install_windows.ps1
        ;;
    *)
        echo "⚠️ Unsupported OS. Please install manually from https://github.com/geoifyee/zephyr"
        ;;
esac

echo ""
echo "[✅] Zephyr installation complete!"
echo "Run your first program with: zephyr examples/hello.zpr"
