import Foundation

enum TokenType {
    case keyword, identifier, string, number, newline, unknown
}

struct Token {
    var type: TokenType
    var value: String
}

class Tokenizer {
    func tokenize(_ code: String) -> [Token] {
        var tokens: [Token] = []
        let lines = code.components(separatedBy: .newlines)
        
        for line in lines {
            let trimmed = line.trimmingCharacters(in: .whitespaces)
            if trimmed.isEmpty {
                tokens.append(Token(type: .newline, value: "\n"))
                continue
            }
            
            let words = trimmed.split(separator: " ").map(String.init)
            for word in words {
                if word.hasPrefix("\"") && word.hasSuffix("\"") {
                    tokens.append(Token(type: .string, value: String(word.dropFirst().dropLast())))
                } else if Double(word) != nil {
                    tokens.append(Token(type: .number, value: word))
                } else if ["say", "let", "repeat", "end", "if", "else", "input", "now", "sum", "sleep", "wait"].contains(word) {
                    tokens.append(Token(type: .keyword, value: word))
                } else {
                    tokens.append(Token(type: .identifier, value: word))
                }
            }
            tokens.append(Token(type: .newline, value: "\n"))
        }
        
        return tokens
    }
}
