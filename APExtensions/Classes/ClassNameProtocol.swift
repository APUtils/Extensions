//
//  ClassNameProtocol.swift
//  APExtensions
//
//  Created by Anton Plebanovich on 6/8/17.
//  Copyright © 2017 APExtensions. All rights reserved.
//

import Foundation

/// Allows to get class name string
public protocol ClassName {
    @nonobjc static var className: String { get }
}

public extension ClassName {
    @nonobjc static var className: String {
        return String(describing: self)
    }
}

extension NSObject: ClassName {}
