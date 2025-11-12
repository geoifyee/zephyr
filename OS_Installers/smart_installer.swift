//
//  smart_installer.swift
//  Zephyr Installer
//
//  Created by Zephyr Developers © 2025
//
//  Swift-based universal installer for Zephyr 1.1 Beta
//  Works on Linux, macOS, and Windows
//

import Foundation

// MARK: - Helpers

@discardableResult
func run(_ command: String) -> Int32 {
    print("→ \(command)")
    return system(command)
}

func detectOS() -> String {
    #if os(Linux)
    return "Linux"
    #elseif os(macOS)
    return "macOS"
    #elseif os(Windows)
    return "Windows"
    #else
    return "Unknown"
    #endif
}

// MARK: - Installer Logic

print("""
=====================================
🌪️  Zephyr Smart Installer 1.1 Beta
=====================================
""")

let osType = detectOS()
print("Detected OS: \(osType)\n")

switch osType {
case "Linux":
    print("[*] Installing Zephyr for Linux...")
    run("bash ./OS_Installers/install_linux.sh")

case "macOS":
    print("[*] Installing Zephyr for macOS...")
    run("bash ./OS_Installers/install_macos.sh")

case "Windows":
    print("[*] Installing Zephyr for Windows...")
    run("powershell -ExecutionPolicy Bypass -File ./OS_Installers/install_windows.ps1")

default:
    print("⚠️ Unsupported OS detected. Please install manually from https://zephyr.org/downloads")
}

print("\n[✅] Installation process completed (if no errors above).")
print("Run Zephyr with: zephyr yourfile.zpr")
