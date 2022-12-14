
import Foundation

public extension Crayon {
    static func foregroundDefault(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.default))
    }

    static func foregroundDefault(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.default))
    }

    static func black(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.black))
    }

    static func black(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.black))
    }

    static func red(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.red))
    }

    static func red(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.red))
    }

    static func green(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.green))
    }

    static func green(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.green))
    }

    static func yellow(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.yellow))
    }

    static func yellow(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.yellow))
    }

    static func blue(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.blue))
    }

    static func blue(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.blue))
    }

    static func magenta(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.magenta))
    }

    static func magenta(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.magenta))
    }

    static func cyan(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.cyan))
    }

    static func cyan(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.cyan))
    }

    static func white(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.white))
    }

    static func white(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.white))
    }

    static func brightBlack(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.brightBlack))
    }

    static func brightBlack(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.brightBlack))
    }

    static func brightRed(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.brightRed))
    }

    static func brightRed(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.brightRed))
    }

    static func brightGreen(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.brightGreen))
    }

    static func brightGreen(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.brightGreen))
    }

    static func brightYellow(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.brightYellow))
    }

    static func brightYellow(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.brightYellow))
    }

    static func brightBlue(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.brightBlue))
    }

    static func brightBlue(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.brightBlue))
    }

    static func brightMagenta(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.brightMagenta))
    }

    static func brightMagenta(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.brightMagenta))
    }

    static func brightCyan(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.brightCyan))
    }

    static func brightCyan(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.brightCyan))
    }

    static func brightWhite(_ message: String) -> Self {
        Crayon(message: message, foreground: .color(.brightWhite))
    }

    static func brightWhite(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, foreground: .color(.brightWhite))
    }

    static func foreground(_ message: String, color: ANSIColor) -> Self {
        Crayon(message: message, foreground: .color(color))
    }

    static func foreground(_ message: String, color: UInt8) -> Self {
        Crayon(message: message, foreground: .color256(color))
    }

    static func foreground(_ message: String, red: UInt8, green: UInt8, blue: UInt8) -> Self {
        Crayon(message: message, foreground: .trueColor(red: red, green: green, blue: blue))
    }

    static func foreground(_ message: String, hex: String) -> Self {
        Crayon(message: message, foreground: Utils.makeColor(from: hex))
    }

    static func foreground(_ crayon: Crayon, color: ANSIColor) -> Self {
        Crayon(message: crayon.string, foreground: .color(color))
    }

    static func foreground(_ crayon: Crayon, color: UInt8) -> Self {
        Crayon(message: crayon.string, foreground: .color256(color))
    }

    static func foreground(_ crayon: Crayon, red: UInt8, green: UInt8, blue: UInt8) -> Self {
        Crayon(message: crayon.string, foreground: .trueColor(red: red, green: green, blue: blue))
    }

    static func foreground(_ crayon: Crayon, hex: String) -> Self {
        Crayon(message: crayon.string, foreground: Utils.makeColor(from: hex))
    }

}

public extension Crayon {
    func foregroundDefault() -> Self {
        update(foreground: .color(.default))
    }

    func black() -> Self {
        update(foreground: .color(.black))
    }

    func red() -> Self {
        update(foreground: .color(.red))
    }

    func green() -> Self {
        update(foreground: .color(.green))
    }

    func yellow() -> Self {
        update(foreground: .color(.yellow))
    }

    func blue() -> Self {
        update(foreground: .color(.blue))
    }

    func magenta() -> Self {
        update(foreground: .color(.magenta))
    }

    func cyan() -> Self {
        update(foreground: .color(.cyan))
    }

    func white() -> Self {
        update(foreground: .color(.white))
    }

    func brightBlack() -> Self {
        update(foreground: .color(.brightBlack))
    }

    func brightRed() -> Self {
        update(foreground: .color(.brightRed))
    }

    func brightGreen() -> Self {
        update(foreground: .color(.brightGreen))
    }

    func brightYellow() -> Self {
        update(foreground: .color(.brightYellow))
    }

    func brightBlue() -> Self {
        update(foreground: .color(.brightBlue))
    }

    func brightMagenta() -> Self {
        update(foreground: .color(.brightMagenta))
    }

    func brightCyan() -> Self {
        update(foreground: .color(.brightCyan))
    }

    func brightWhite() -> Self {
        update(foreground: .color(.brightWhite))
    }

    func foreground(_ color: UInt8) -> Self {
        update(foreground: .color256(color))
    }

    func foreground(red: UInt8, green: UInt8, blue: UInt8) -> Self {
        update(foreground: .trueColor(red: red, green: green, blue: blue))
    }

    func foreground(_ hex: String) -> Self {
        update(foreground: Utils.makeColor(from: hex))
    }
}
