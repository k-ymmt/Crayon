
import Foundation

public extension Crayon {
    static func backgroundDefault(_ message: String) -> Self {
        Crayon(message: message, background: .color(.default))
    }

    static func backgroundDefault(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.default))
    }

    static func backgroundBlack(_ message: String) -> Self {
        Crayon(message: message, background: .color(.black))
    }

    static func backgroundBlack(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.black))
    }

    static func backgroundRed(_ message: String) -> Self {
        Crayon(message: message, background: .color(.red))
    }

    static func backgroundRed(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.red))
    }

    static func backgroundGreen(_ message: String) -> Self {
        Crayon(message: message, background: .color(.green))
    }

    static func backgroundGreen(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.green))
    }

    static func backgroundYellow(_ message: String) -> Self {
        Crayon(message: message, background: .color(.yellow))
    }

    static func backgroundYellow(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.yellow))
    }

    static func backgroundBlue(_ message: String) -> Self {
        Crayon(message: message, background: .color(.blue))
    }

    static func backgroundBlue(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.blue))
    }

    static func backgroundMagenta(_ message: String) -> Self {
        Crayon(message: message, background: .color(.magenta))
    }

    static func backgroundMagenta(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.magenta))
    }

    static func backgroundCyan(_ message: String) -> Self {
        Crayon(message: message, background: .color(.cyan))
    }

    static func backgroundCyan(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.cyan))
    }

    static func backgroundWhite(_ message: String) -> Self {
        Crayon(message: message, background: .color(.white))
    }

    static func backgroundWhite(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.white))
    }

    static func backgroundBrightBlack(_ message: String) -> Self {
        Crayon(message: message, background: .color(.brightBlack))
    }

    static func backgroundBrightBlack(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.brightBlack))
    }

    static func backgroundBrightRed(_ message: String) -> Self {
        Crayon(message: message, background: .color(.brightRed))
    }

    static func backgroundBrightRed(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.brightRed))
    }

    static func backgroundBrightGreen(_ message: String) -> Self {
        Crayon(message: message, background: .color(.brightGreen))
    }

    static func backgroundBrightGreen(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.brightGreen))
    }

    static func backgroundBrightYellow(_ message: String) -> Self {
        Crayon(message: message, background: .color(.brightYellow))
    }

    static func backgroundBrightYellow(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.brightYellow))
    }

    static func backgroundBrightBlue(_ message: String) -> Self {
        Crayon(message: message, background: .color(.brightBlue))
    }

    static func backgroundBrightBlue(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.brightBlue))
    }

    static func backgroundBrightMagenta(_ message: String) -> Self {
        Crayon(message: message, background: .color(.brightMagenta))
    }

    static func backgroundBrightMagenta(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.brightMagenta))
    }

    static func backgroundBrightCyan(_ message: String) -> Self {
        Crayon(message: message, background: .color(.brightCyan))
    }

    static func backgroundBrightCyan(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.brightCyan))
    }

    static func backgroundBrightWhite(_ message: String) -> Self {
        Crayon(message: message, background: .color(.brightWhite))
    }

    static func backgroundBrightWhite(_ crayon: Crayon) -> Self {
        Crayon(message: crayon.string, background: .color(.brightWhite))
    }

    static func background(_ message: String, color: ANSIColor) -> Self {
        Crayon(message: message, background: .color(color))
    }

    static func background(_ message: String, color: UInt8) -> Self {
        Crayon(message: message, background: .color256(color))
    }

    static func background(_ message: String, red: UInt8, green: UInt8, blue: UInt8) -> Self {
        Crayon(message: message, background: .trueColor(red: red, green: green, blue: blue))
    }

    static func background(_ message: String, color: String) -> Self {
        Crayon(message: message, background: Utils.makeColor(from: color))
    }
}

public extension Crayon {
    func backgroundDefault() -> Self {
        update(background: .color(.default))
    }

    func backgroundBlack() -> Self {
        update(background: .color(.black))
    }

    func backgroundRed() -> Self {
        update(background: .color(.red))
    }

    func backgroundGreen() -> Self {
        update(background: .color(.green))
    }

    func backgroundYellow() -> Self {
        update(background: .color(.yellow))
    }

    func backgroundBlue() -> Self {
        update(background: .color(.blue))
    }

    func backgroundMagenta() -> Self {
        update(background: .color(.magenta))
    }

    func backgroundCyan() -> Self {
        update(background: .color(.cyan))
    }

    func backgroundWhite() -> Self {
        update(background: .color(.white))
    }

    func backgroundBrightBlack() -> Self {
        update(background: .color(.brightBlack))
    }

    func backgroundBrightRed() -> Self {
        update(background: .color(.brightRed))
    }

    func backgroundBrightGreen() -> Self {
        update(background: .color(.brightGreen))
    }

    func backgroundBrightYellow() -> Self {
        update(background: .color(.brightYellow))
    }

    func backgroundBrightBlue() -> Self {
        update(background: .color(.brightBlue))
    }

    func backgroundBrightMagenta() -> Self {
        update(background: .color(.brightMagenta))
    }

    func backgroundBrightCyan() -> Self {
        update(background: .color(.brightCyan))
    }

    func backgroundBrightWhite() -> Self {
        update(background: .color(.brightWhite))
    }

    func background(_ color: ANSIColor) -> Self {
        update(background: .color(color))
    }

    func background(_ color: UInt8) -> Self {
        update(background: .color256(color))
    }

    func background(red: UInt8, green: UInt8, blue: UInt8) -> Self {
        update(background: .trueColor(red: red, green: green, blue: blue))
    }

    func background(_ hex: String) -> Self {
        update(background: Utils.makeColor(from: hex))
    }
}
