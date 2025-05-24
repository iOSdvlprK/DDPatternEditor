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
        
        return true
        
        // TODO: test for:
        // 1. not a Swift keyword
        // 2. starts with a letter or underscore
        // 3. remaining characters is a letter, digit or underscore
        
    }
}
