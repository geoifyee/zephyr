import Foundation

class Parser {
    func parse(_ tokens: [Token]) -> [[Token]] {
        var statements: [[Token]] = []
        var current: [Token] = []
        
        for token in tokens {
            if token.type == .newline {
                if !current.isEmpty {
                    statements.append(current)
                    current.removeAll()
                }
            } else {
                current.append(token)
            }
        }
        if !current.isEmpty {
            statements.append(current)
        }
        return statements
    }
}
