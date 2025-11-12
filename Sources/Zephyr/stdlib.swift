import Foundation

class ZephyrStdlib {
    var variables: [String: String] = [:]
    
    func execute(_ command: String, args: [String]) -> Bool {
        switch command {
        // MARK: Say
        case "say", "print", "echo":
            print(resolve(args.joined(separator: " ")))
        
        // MARK: Let
        case "let":
            if args.count >= 3 && args[1] == "be" {
                let name = args[0]
                let value = resolve(args.dropFirst(2).joined(separator: " "))
                variables[name] = value
            } else {
                print("Syntax: let <name> be <value>")
            }
        
        // MARK: Input
        case "input":
            if args.count >= 1 {
                let name = args[0]
                print("> ", terminator: "")
                if let line = readLine() {
                    variables[name] = line
                }
            }
        
        // MARK: Math
        case "sum":
            let nums = args.compactMap { Double(resolve($0)) }
            print(nums.reduce(0, +))
        
        case "random":
            let range = args.compactMap { Int(resolve($0)) }
            if range.count == 2 {
                print(Int.random(in: range[0]...range[1]))
            } else {
                print(Int.random(in: 0...100))
            }
        
        // MARK: Repeat
        case "repeat":
            if let n = Int(resolve(args.first ?? "1")) {
                for i in 1...n {
                    variables["number"] = "\(i)"
                    print(resolve(args.dropFirst().joined(separator: " ")))
                }
            }
        
        // MARK: Wait / Sleep
        case "wait", "sleep":
            if let seconds = Double(resolve(args.first ?? "1")) {
                Thread.sleep(forTimeInterval: seconds)
            }
        
        // MARK: File IO
        case "write":
            if args.count >= 2 {
                let path = resolve(args[0])
                let content = resolve(args.dropFirst().joined(separator: " "))
                try? content.write(toFile: path, atomically: true, encoding: .utf8)
            }
        
        case "read":
            if let path = args.first {
                if let data = try? String(contentsOfFile: resolve(path), encoding: .utf8) {
                    print(data)
                }
            }
        
        // MARK: Time
        case "now":
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            print(formatter.string(from: Date()))
        
        // MARK: System
        case "clear":
            print("\u{001B}[2J")
        
        case "exit":
            print("Exiting Zephyr...")
            exit(0)
        
        default:
            return false
        }
        return true
    }
    
    // MARK: Variable resolution
    private func resolve(_ text: String) -> String {
        var result = text
        for (key, val) in variables {
            result = result.replacingOccurrences(of: key, with: val)
        }
        return result
    }
}
