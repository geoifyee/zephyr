#!/bin/bash
# Zephyr Programming Language Installer for Linux
# Works on Debian, Ubuntu, Fedora, Arch, Zorin, and most modern distros

echo "=== Zephyr Installer for Linux ==="

# Step 1: Check for Swift
if ! command -v swift &> /dev/null
then
    echo "[!] Swift not found. Installing Swift..."
    if [ -x "$(command -v apt)" ]; then
        sudo apt update && sudo apt install -y swift
    elif [ -x "$(command -v dnf)" ]; then
        sudo dnf install -y swift
    elif [ -x "$(command -v pacman)" ]; then
        sudo pacman -Syu swift
    else
        echo "[-] Could not detect your package manager. Please install Swift manually."
        exit 1
    fi
else
    echo "[+] Swift already installed."
fi

# Step 2: Build Zephyr
echo "[*] Building Zephyr..."
swift build -c release

# Step 3: Install to /usr/local/bin
sudo cp .build/release/Zephyr /usr/local/bin/zephyr

echo "[✅] Zephyr installed successfully!"
echo "Run your first program with: zephyr examples/hello.zpr"
