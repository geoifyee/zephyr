import Foundation

class Interpreter {
    private let stdlib = ZephyrStdlib()
    
    func run(_ code: String) throws {
        let lines = code.split(separator: "\n").map { $0.trimmingCharacters(in: .whitespaces) }
        for line in lines {
            if line.isEmpty { continue }
            execute(line)
        }
    }
    
    private func execute(_ line: String) {
        let parts = line.split(separator: " ").map(String.init)
        guard let command = parts.first else { return }
        let args = Array(parts.dropFirst())
        
        if !stdlib.execute(command, args: args) {
            print("Unknown command: \(command)")
        }
    }
}
