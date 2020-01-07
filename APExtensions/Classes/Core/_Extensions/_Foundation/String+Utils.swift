//
//  String+Utils.swift
//  APExtensions
//
//  Created by Anton Plebanovich on 16/04/16.
//  Copyright © 2019 Anton Plebanovich. All rights reserved.
//

import Foundation

// ******************************* MARK: - Appending

public extension String {
    mutating func appendNewLine() {
        append("\n")
    }
    
    mutating func append(valueName: String?, value: Any?, separator: String = ", ") {
        var stringRepresentation: String
        if let value = g.unwrap(value) {
            if let value = value as? String {
                stringRepresentation = value
            } else if let bool = value as? Bool {
                stringRepresentation = bool ? "true" : "false"
            } else {
                stringRepresentation = String(describing: value)
            }
        } else {
            stringRepresentation = "nil"
        }
        
        if let valueName = valueName {
            append(string: "\(valueName):", separator: separator)
            appendWithSpace(stringRepresentation)
        } else {
            append(string: stringRepresentation, separator: separator)
        }
    }
    
    mutating func appendWithNewLine(_ string: String?) {
        append(string: string, separator: "\n")
    }
    
    mutating func appendWithSpace(_ string: String?) {
        append(string: string, separator: " ")
    }
    
    mutating func appendWithComma(_ string: String?) {
        append(string: string, separator: ", ")
    }
    
    mutating func append(string: String?, separator: String) {
        guard let string = string, !string.isEmpty else { return }
        
        if isEmpty {
            self.append(string)
        } else {
            self.append("\(separator)\(string)")
        }
    }
    
    mutating func wrap(`class`: Any.Type) {
        self = String(format: "%@(%@)", String(describing: `class`), self)
    }
}
// ******************************* MARK: - Capitalization

public extension String {
    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}