#!/bin/bash
# Zephyr Installer for macOS

echo "=== Zephyr Installer for macOS ==="

if ! command -v swift &> /dev/null
then
    echo "[!] Swift not found. Installing via Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew install swift
else
    echo "[+] Swift already installed."
fi

echo "[*] Building Zephyr..."
swift build -c release
sudo cp .build/release/Zephyr /usr/local/bin/zephyr

echo "[✅] Zephyr installed successfully!"
echo "Run Zephyr with: zephyr yourfile.zpr"
