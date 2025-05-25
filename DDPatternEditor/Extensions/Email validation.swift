//
//  Email validation.swift
//  DDPatternEditor
//
//  Created by joe on 5/24/25.
//

extension String {
    var isValidIdentifier: Bool {
        // non-empty: the string must be non-empty
        guard !self.isEmpty else { return false }
        
        // starts with a letter or underscore
        let firstCharacter = self.first!
        if !firstCharacter.isLetter && firstCharacter != "_" {
            return false
        }
        
        // remaining characters is a letter, digit or underscore
        let validCharacters = self
            .allSatisfy { $0.isLetter || $0.isNumber || $0 == "_" }
        if !validCharacters { return false }
        
        // self is a valid identifier!
        return true
    }
}
