import Foundation

let args = CommandLine.arguments
guard args.count > 1 else {
    print("Usage: zephyr <file.zpr>")
    exit(1)
}

let path = args[1]
guard path.hasSuffix(".zpr") else {
    print("The Zephyr Code Run command can only run its own files (.zpr). --Zephyr, zephyr.org")
    exit(1)
}

do {
    let code = try String(contentsOfFile: path, encoding: .utf8)
    let interpreter = Interpreter()
    try interpreter.run(code)
} catch {
    print("Error: \(error)")
}
