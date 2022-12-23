
import Foundation

public extension Crayon {
    enum Style: Int {
        case `default`
        case bold
        case thin
        case italic
        case underline
        case blink
        case rapidBlink
    }

    static func styleDefault(_ message: String) -> Self {
        Crayon(message: message, style: .default)
    }

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

    static func style(_ message: String, style: Style) -> Self {
        Crayon(message: message, style: style)
    }

    func styleDefault() -> Self {
        update(style: .default)
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

    func style(_ style: Style) -> Self {
        update(style: style)
    }
}
