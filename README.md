## 💨 Zephyr Programming Language: An Overview and Guide

**Zephyr** is a modern, Swift-based programming language designed for **effortless readability, limitless flexibility, and uncompromising performance**. It combines Swift's performance, type safety, and modern syntax with an extremely easy-to-learn structure, making it accessible to developers at all skill levels.

-----

## 🎯 Overview

Zephyr is built on three **Core Principles**:

  * **Ease of learning** — Simple, predictable, and human-readable syntax.
  * **Flexibility** — Adaptable for scripting, tools, and general-purpose applications.
  * **Performance** — Powered by Swift for native execution speed.

Zephyr programs use the **`.zpr`** extension and are executed through the Zephyr command-line interface (`zephyr`).

### Version and Resources

  * **Version:** Zephyr 1.1 Beta
  * **Source Code:** Latest source and documentation are available at: `https://github.com/geoifyee/zephyr`

-----

## ✨ Features

  * Clear, **minimal syntax**
  * **Cross-platform** (Windows, macOS, Linux)
  * **Swift-based** interpreter and runtime
  * Comprehensive standard library
  * Native **CLI** for running `.zpr` files
  * Distributed under the **AGPL-3.0 open-source license**

-----

## ⚙️ Installation

The installation process consists of three steps on all platforms: 1) Install Swift, 2) Clone Zephyr, and 3) Run the appropriate installer script.

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

-----

## ▶️ Running Zephyr Code

To run a Zephyr program, you execute the `zephyr` CLI with the path to your `.zpr` file.

1.  **Create a file named `hello.zpr`:**
    ```zpr
    print("Hello, world")
    print("This is your first Zephyr program.")
    ```
2.  **Run it:**
    ```bash
    ./zephyr examples/hello.zpr
    ```
    > **Note:** The Zephyr Code Run command can only run its own files (`.zpr`).

-----

## 📂 Project Structure

The core components of the Zephyr project include:

```css
Zephyr/
 ├── Sources/Zephyr/
 │   ├── main.swift (Entry point)
 │   ├── tokenizer.swift
 │   ├── parser.swift
 │   ├── runtime.swift
 │   ├── stdlib.swift (Standard library implementation)
 │   └── interpreter.swift
 ├── OS_Installers/ (Installation scripts for different operating systems)
 │   ├── install_linux.sh
 │   ├── install_macos.sh
 │   ├── install_windows.ps1
 │   └── smart_installer.swift
 ├── examples/
 │   └── hello.zpr
 ├── zephyr (The compiled executable)
 └── Package.swift (Swift package manifest)
```

-----

## ⚖️ License

Zephyr is licensed under the **GNU Affero General Public License v3.0 (AGPL-3.0)**. You are free to use, modify, and distribute the software, provided that all derivative works remain open-source and accessible.
