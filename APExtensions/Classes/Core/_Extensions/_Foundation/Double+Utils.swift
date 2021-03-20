//
//  Double+Utils.swift
//  APExtensions
//
//  Created by Anton Plebanovich on 12/26/19.
//  Copyright © 2019 Anton Plebanovich. All rights reserved.
//

import Foundation

// ******************************* MARK: - As String

public extension Double {
    
    /// Returns string representation rounded to tenth
    var asCeilString: String {
        String(format: "%.0f", self)
    }
    
    /// Returns string representation rounded to tenth
    var asTenthString: String {
        String(format: "%.1f", self)
    }
    
    /// Returns string representation rounded to hundredth
    var asHundredthString: String {
        String(format: "%.2f", self)
    }
    
    /// Returns string representation rounded to thousands
    var asThousandsString: String {
        String(format: "%.3f", self)
    }
    
    /// Returns `self` as `String`
    var asString: String {
        String(self)
    }
}

// ******************************* MARK: - As

public extension Double {
    
    /// Returns `self` as `Date` using `timeIntervalSince1970` representation.
    var asDate: Date {
        return Date(timeIntervalSince1970: self)
    }
    
    /// Returns `self` as `Int` if possible
    var asInt: Int? {
        if self >= Int.min.asDouble, self < Int.max.asDouble {
            return Int(self)
        } else {
            return nil
        }
    }
}
