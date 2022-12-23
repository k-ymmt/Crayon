import Foundation
import Stencil
import PathKit

@main
public struct Main {
    static let colors = [
        "default",
        "black",
        "red",
        "green",
        "yellow",
        "blue",
        "magenta",
        "cyan",
        "white",
        "brightBlack",
        "brightRed",
        "brightGreen",
        "brightYellow",
        "brightBlue",
        "brightMagenta",
        "brightCyan",
        "brightWhite"
    ]

    static let styles = [
        "default",
        "bold",
        "thin",
        "italic",
        "underline",
        "blink",
        "rapidBlink"
    ]

    enum ColorType: String {
        case ansi = "Crayon.ANSIColor"
        case color256 = "UInt8"
        case trueColor = "(red: UInt8, green: UInt8, blue: UInt8)"
        case string = "String"
    }

    static let colorPairs: [(ColorType, ColorType)] = [
        (.ansi, .ansi),
        (.ansi, .color256),
        (.ansi, .trueColor),
        (.ansi, .string),
        (.color256, .ansi),
        (.color256, .color256),
        (.color256, .trueColor),
        (.color256, .string),
        (.trueColor, .ansi),
        (.trueColor, .color256),
        (.trueColor, .trueColor),
        (.trueColor, .string),
        (.string, .ansi),
        (.string, .color256),
        (.string, .trueColor),
        (.string, .string),
    ]

    public static func main() throws {
        let currentDir = Path.current
        let templateDir = currentDir + "Templates"
        let outputDir = currentDir + "../Sources/Crayon"

        guard templateDir.exists else {
            fatalError("Templates dir is not exists")
        }

        guard outputDir.exists else {
            fatalError("Output dir is not exists")
        }

        let context: [String: Any] = [
            "colors": colors,
            "styles": styles,
            "colorPairs": colorPairs.map { (f, b) in (f.rawValue, b.rawValue) }
        ]

        func makeExtension() -> Extension {
            let ext = Extension()
            ext.registerFilter("upperFirstLetter") { value in
                guard
                    let string = value as? String,
                    let first = string.unicodeScalars.first
                else {
                    return value
                }

                return String(first).uppercased() + String(string.unicodeScalars.dropFirst())
            }
            ext.registerFilter("escape") { value in
                guard
                    let string = value as? String,
                    string == "default"
                else {
                    return value
                }
                return "`\(string)`"
            }
            ext.registerFilter("removeMultipleNewlines") { value in
                guard let string = value as? String else {
                    return value
                }
                var replacing = string.replacingOccurrences(of: "\n\n", with: "\n")
                if replacing.hasPrefix("\n") {
                    replacing = String(replacing.dropFirst())
                }
                if replacing.hasSuffix("\n") {
                    replacing = String(replacing.dropLast())
                }
                return replacing
            }
            ext.registerFilter("removeFirstNewline") { value in
                guard
                    let string = value as? String,
                    string.hasPrefix("\n")
                else {
                    return value
                }
                return String(string.dropFirst())
            }
            ext.registerFilter("colorTypeToEnumValue") { value, args in
                guard
                    let string = value as? String,
                    let type = ColorType(rawValue: string),
                    let argument = args[0] as? String
                else {
                    return value
                }
                switch type {
                case .ansi:
                    return ".color(\(argument))"
                case .color256:
                    return ".color256(\(argument))"
                case .trueColor:
                    return ".trueColor(red: \(argument).red, green: \(argument).green, blue: \(argument).blue)"
                case .string:
                    return "Utils.makeColor(from: \(argument))"
                }
            }
            return ext
        }

        let environment = Environment(
            loader: FileSystemLoader(paths: [templateDir]),
            extensions: [makeExtension()]
        )

        func generate(name: String) throws {
            let rendered = try environment.renderTemplate(name: "\(name).stencil", context: context)
            let output = outputDir + "\(name).swift"
            try output.write(rendered)
        }

        let names = [
            "Crayon+Foreground",
            "Crayon+Background",
            "Crayon+Style",
            "Crayon+Interpolation"
        ]

        for name in names {
            try generate(name: name)
        }
    }
}
