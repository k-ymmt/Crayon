//
//  Crayon.swift
//  
//
//  Created by Kazuki Yamamoto on 2022/11/27.
//

import Foundation

public struct Crayon {
    public enum SupportLevel: Int, Comparable {
        case none
        case ansiColor
        case color256
        case trueColor

        public static func < (lhs: SupportLevel, rhs: SupportLevel) -> Bool {
            lhs.rawValue < rhs.rawValue
        }
    }

    public static var supportLevel: SupportLevel = .trueColor

    public let style: Style?
    public let foreground: Color?
    public let background: Color?
    public let message: String

    public init(
        message: String,
        style: Style? = nil,
        foreground: Color? = nil,
        background: Color? = nil
    ) {
        self.style = style
        self.foreground = foreground
        self.background = background
        self.message = message
    }
}

public extension Crayon {
    static func +(lhs: Crayon, rhs: String) -> String {
        lhs.description + rhs
    }

    static func +(lhs: String, rhs: Crayon) -> String {
        lhs + rhs.description
    }

    static func +(lhs: Crayon, rhs: Crayon) -> String {
        lhs.description + rhs.description
    }
}

extension Crayon: CustomStringConvertible {
    public var description: String {
        guard Self.supportLevel != .none else {
            return message
        }
        let parameters = [
            style.map { String($0.rawValue) },
            foreground?.rawValue(isBackground: false),
            background?.rawValue(isBackground: true)
        ].compactMap { $0 }

        guard !parameters.isEmpty else {
            return message
        }

        return "\u{001B}[\(parameters.joined(separator: ";"))m\(message)\u{001B}[m"
    }
}

extension Crayon {
    func update(style: Style? = nil, foreground: Color? = nil, background: Color? = nil) -> Self {
        Crayon(
            message: message,
            style: style ?? self.style,
            foreground: foreground ?? self.foreground,
            background: background ?? self.background
        )
    }
}
