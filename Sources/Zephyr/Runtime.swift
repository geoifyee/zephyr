import Foundation

class Runtime {
    static let shared = Runtime()
    
    private init() {}
    
    var variables: [String: String] = [:]
    var flags: [String: Bool] = [:]
    
    func set(_ name: String, value: String) {
        variables[name] = value
    }
    
    func get(_ name: String) -> String? {
        return variables[name]
    }
    
    func exists(_ name: String) -> Bool {
        return variables.keys.contains(name)
    }
    
    func clear() {
        variables.removeAll()
        flags.removeAll()
    }
}
