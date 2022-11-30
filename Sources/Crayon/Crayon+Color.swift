//
//  File.swift
//  
//
//  Created by Kazuki Yamamoto on 2022/11/27.
//

import Foundation

public extension Crayon {
    enum ANSIColor {
        case `default`
        case black
        case red
        case green
        case yellow
        case blue
        case magenta
        case cyan
        case white

        case brightBlack
        case brightRed
        case brightGreen
        case brightYellow
        case brightBlue
        case brightMagenta
        case brightCyan
        case brightWhite

        public var foreground: Int {
            switch self {
            case .default:
                return 39
            case .black:
                return 30
            case .red:
                return 31
            case .green:
                return 32
            case .yellow:
                return 33
            case .blue:
                return 34
            case .magenta:
                return 35
            case .cyan:
                return 36
            case .white:
                return 37

            case .brightBlack:
                return 90
            case .brightRed:
                return 91
            case .brightGreen:
                return 92
            case .brightYellow:
                return 93
            case .brightBlue:
                return 94
            case .brightMagenta:
                return 95
            case .brightCyan:
                return 96
            case .brightWhite:
                return 97
            }
        }

        public var background: Int {
            switch self {
            case .default:
                return 49
            case .black:
                return 40
            case .red:
                return 41
            case .green:
                return 42
            case .yellow:
                return 43
            case .blue:
                return 44
            case .magenta:
                return 45
            case .cyan:
                return 46
            case .white:
                return 47

            case .brightBlack:
                return 100
            case .brightRed:
                return 101
            case .brightGreen:
                return 102
            case .brightYellow:
                return 103
            case .brightBlue:
                return 104
            case .brightMagenta:
                return 105
            case .brightCyan:
                return 106
            case .brightWhite:
                return 107
            }
        }
    }

    enum Color {
        case color(ANSIColor)
        case color256(UInt8)
        case trueColor(red: UInt8, green: UInt8, blue: UInt8)

        static var `default`: Color = .color(.default)

        func rawValue(isBackground: Bool) -> String {
            switch self {
            case .color(let color):
                return String(isBackground ? color.background : color.foreground)
            case .color256(let color):
                return "\(isBackground ? 48 : 38);5;\(color)"
            case let .trueColor(red, green, blue):
                return "\(isBackground ? 48 : 38);2;\(red);\(green);\(blue)"
            }
        }
    }
}
