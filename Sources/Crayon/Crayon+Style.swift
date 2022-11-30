//
//  File.swift
//  
//
//  Created by Kazuki Yamamoto on 2022/11/30.
//

import Foundation

public extension Crayon {
    static func bold(_ message: String) -> Self {
        Crayon(message: message, style: .bold)
    }

    static func thin(_ message: String) -> Self {
        Crayon(message: message, style: .thin)
    }

    static func italic(_ message: String) -> Self {
        Crayon(message: message, style: .italic)
    }

    static func underline(_ message: String) -> Self {
        Crayon(message: message, style: .underline)
    }

    static func blink(_ message: String) -> Self {
        Crayon(message: message, style: .blink)
    }

    static func rapidBlink(_ message: String) -> Self {
        Crayon(message: message, style: .rapidBlink)
    }

    func bold() -> Self {
        update(style: .bold)
    }

    func thin() -> Self {
        update(style: .thin)
    }

    func italic() -> Self {
        update(style: .italic)
    }

    func underline() -> Self {
        update(style: .underline)
    }

    func blink() -> Self {
        update(style: .blink)
    }

    func rapidBlink() -> Self {
        update(style: .rapidBlink)
    }
}
