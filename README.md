# zephyr
Zephyr — a modern, Swift-based programming language designed for effortless readability, limitless flexibility, and uncompromising performance.

## 💨 Zephyr Programming Language: Overview and Installation Guide

Zephyr is a **modern, Swift-based programming language** designed to be **simple, flexible, and approachable** for developers of all skill levels. It combines Swift’s performance and safety with an extremely easy-to-learn syntax.

-----

## 🎯 Overview

Zephyr focuses on three core goals:

1.  **Ease of learning** — Simple syntax and readable structure.
2.  **Flexibility** — Adaptable for scripting, tools, and general-purpose programming.
3.  **Performance** — Built on **Swift** for native execution speed.

Zephyr programs use the **`.zpr`** extension and are executed directly through the **Zephyr command-line interface (CLI)**.

-----

## ✨ Features

  * **Simple, human-readable syntax**
  * **Cross-platform** (Windows, macOS, Linux)
  * **Swift-based interpreter and runtime**
  * **Standard library** with common utilities
  * **Native CLI** for running `.zpr` files
  * **Open source** under the **AGPL-3.0 license**

-----

## ⚙️ Installation

The installation process involves three main steps across all platforms: **Install Swift**, **Clone Zephyr**, and **Run the Installer**.

### Windows

1.  **Install Swift:**
    ```powershell
    winget install --id Swift.Toolchain -e
    ```
2.  **Clone Zephyr:**
    ```powershell
    git clone https://github.com/geoifyee/zephyr.git
    cd zephyr
    ```
3.  **Run the installer:**
    ```powershell
    OS_Installers\install_windows.ps1
    ```

### macOS

1.  **Install Swift:**
    ```bash
    brew install swift
    ```
2.  **Clone Zephyr:**
    ```bash
    git clone https://github.com/geoifyee/zephyr.git
    cd zephyr
    ```
3.  **Run the installer:**
    ```bash
    sh OS_Installers/install_macos.sh
    ```

### Linux (Ubuntu, Zorin, Debian, Fedora)

1.  **Install Swift:**
      * **On Ubuntu, Zorin, Debian:**
        ```bash
        sudo apt update
        sudo apt install swift -y
        ```
      * **On Fedora:**
        ```bash
        sudo dnf install swift-lang
        ```
2.  **Clone Zephyr:**
    ```bash
    git clone https://github.com/geoifyee/zephyr.git
    cd zephyr
    ```
3.  **Run the installer:**
    ```bash
    sh OS_Installers/install_linux.sh
    ```
