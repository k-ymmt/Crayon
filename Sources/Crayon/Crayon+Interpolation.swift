
import Foundation

public extension String.StringInterpolation {
    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: Crayon.ANSIColor, background: Crayon.ANSIColor) {
        appendLiteral(Crayon(message: message, style: style, foreground: .color(foreground), background: .color(background)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: Crayon.ANSIColor, background: Crayon.ANSIColor) {
        appendLiteral(Crayon(message: message, foreground: .color(foreground), background: .color(background)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: Crayon.ANSIColor) {
        appendLiteral(Crayon(message: message, style: style, foreground: .color(foreground)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, background: Crayon.ANSIColor) {
        appendLiteral(Crayon(message: message, style: style, foreground: .color(background)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: Crayon.ANSIColor) {
        appendLiteral(Crayon(message: message, foreground: .color(foreground)).string)
    }

    mutating func appendInterpolation(_ message: String, background: Crayon.ANSIColor) {
        appendLiteral(Crayon(message: message, foreground: .color(background)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: Crayon.ANSIColor, background: UInt8) {
        appendLiteral(Crayon(message: message, style: style, foreground: .color(foreground), background: .color256(background)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: Crayon.ANSIColor, background: UInt8) {
        appendLiteral(Crayon(message: message, foreground: .color(foreground), background: .color256(background)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: Crayon.ANSIColor, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(Crayon(message: message, style: style, foreground: .color(foreground), background: .trueColor(red: background.red, green: background.green, blue: background.blue)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: Crayon.ANSIColor, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(Crayon(message: message, foreground: .color(foreground), background: .trueColor(red: background.red, green: background.green, blue: background.blue)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: Crayon.ANSIColor, background: String) {
        appendLiteral(Crayon(message: message, style: style, foreground: .color(foreground), background: Utils.makeColor(from: background)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: Crayon.ANSIColor, background: String) {
        appendLiteral(Crayon(message: message, foreground: .color(foreground), background: Utils.makeColor(from: background)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: UInt8, background: Crayon.ANSIColor) {
        appendLiteral(Crayon(message: message, style: style, foreground: .color256(foreground), background: .color(background)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: UInt8, background: Crayon.ANSIColor) {
        appendLiteral(Crayon(message: message, foreground: .color256(foreground), background: .color(background)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: UInt8, background: UInt8) {
        appendLiteral(Crayon(message: message, style: style, foreground: .color256(foreground), background: .color256(background)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: UInt8, background: UInt8) {
        appendLiteral(Crayon(message: message, foreground: .color256(foreground), background: .color256(background)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: UInt8) {
        appendLiteral(Crayon(message: message, style: style, foreground: .color256(foreground)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, background: UInt8) {
        appendLiteral(Crayon(message: message, style: style, foreground: .color256(background)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: UInt8) {
        appendLiteral(Crayon(message: message, foreground: .color256(foreground)).string)
    }

    mutating func appendInterpolation(_ message: String, background: UInt8) {
        appendLiteral(Crayon(message: message, foreground: .color256(background)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: UInt8, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(Crayon(message: message, style: style, foreground: .color256(foreground), background: .trueColor(red: background.red, green: background.green, blue: background.blue)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: UInt8, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(Crayon(message: message, foreground: .color256(foreground), background: .trueColor(red: background.red, green: background.green, blue: background.blue)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: UInt8, background: String) {
        appendLiteral(Crayon(message: message, style: style, foreground: .color256(foreground), background: Utils.makeColor(from: background)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: UInt8, background: String) {
        appendLiteral(Crayon(message: message, foreground: .color256(foreground), background: Utils.makeColor(from: background)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: Crayon.ANSIColor) {
        appendLiteral(Crayon(message: message, style: style, foreground: .trueColor(red: foreground.red, green: foreground.green, blue: foreground.blue), background: .color(background)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: Crayon.ANSIColor) {
        appendLiteral(Crayon(message: message, foreground: .trueColor(red: foreground.red, green: foreground.green, blue: foreground.blue), background: .color(background)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: UInt8) {
        appendLiteral(Crayon(message: message, style: style, foreground: .trueColor(red: foreground.red, green: foreground.green, blue: foreground.blue), background: .color256(background)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: UInt8) {
        appendLiteral(Crayon(message: message, foreground: .trueColor(red: foreground.red, green: foreground.green, blue: foreground.blue), background: .color256(background)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(Crayon(message: message, style: style, foreground: .trueColor(red: foreground.red, green: foreground.green, blue: foreground.blue), background: .trueColor(red: background.red, green: background.green, blue: background.blue)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(Crayon(message: message, foreground: .trueColor(red: foreground.red, green: foreground.green, blue: foreground.blue), background: .trueColor(red: background.red, green: background.green, blue: background.blue)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(Crayon(message: message, style: style, foreground: .trueColor(red: foreground.red, green: foreground.green, blue: foreground.blue)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(Crayon(message: message, style: style, foreground: .trueColor(red: background.red, green: background.green, blue: background.blue)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(Crayon(message: message, foreground: .trueColor(red: foreground.red, green: foreground.green, blue: foreground.blue)).string)
    }

    mutating func appendInterpolation(_ message: String, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(Crayon(message: message, foreground: .trueColor(red: background.red, green: background.green, blue: background.blue)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: String) {
        appendLiteral(Crayon(message: message, style: style, foreground: .trueColor(red: foreground.red, green: foreground.green, blue: foreground.blue), background: Utils.makeColor(from: background)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: String) {
        appendLiteral(Crayon(message: message, foreground: .trueColor(red: foreground.red, green: foreground.green, blue: foreground.blue), background: Utils.makeColor(from: background)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: String, background: Crayon.ANSIColor) {
        appendLiteral(Crayon(message: message, style: style, foreground: Utils.makeColor(from: foreground), background: .color(background)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: String, background: Crayon.ANSIColor) {
        appendLiteral(Crayon(message: message, foreground: Utils.makeColor(from: foreground), background: .color(background)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: String, background: UInt8) {
        appendLiteral(Crayon(message: message, style: style, foreground: Utils.makeColor(from: foreground), background: .color256(background)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: String, background: UInt8) {
        appendLiteral(Crayon(message: message, foreground: Utils.makeColor(from: foreground), background: .color256(background)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: String, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(Crayon(message: message, style: style, foreground: Utils.makeColor(from: foreground), background: .trueColor(red: background.red, green: background.green, blue: background.blue)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: String, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(Crayon(message: message, foreground: Utils.makeColor(from: foreground), background: .trueColor(red: background.red, green: background.green, blue: background.blue)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: String, background: String) {
        appendLiteral(Crayon(message: message, style: style, foreground: Utils.makeColor(from: foreground), background: Utils.makeColor(from: background)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: String, background: String) {
        appendLiteral(Crayon(message: message, foreground: Utils.makeColor(from: foreground), background: Utils.makeColor(from: background)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: String) {
        appendLiteral(Crayon(message: message, style: style, foreground: Utils.makeColor(from: foreground)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, background: String) {
        appendLiteral(Crayon(message: message, style: style, foreground: Utils.makeColor(from: background)).string)
    }

    mutating func appendInterpolation(_ message: String, foreground: String) {
        appendLiteral(Crayon(message: message, foreground: Utils.makeColor(from: foreground)).string)
    }

    mutating func appendInterpolation(_ message: String, background: String) {
        appendLiteral(Crayon(message: message, foreground: Utils.makeColor(from: background)).string)
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style) {
        appendLiteral(Crayon(message: message, style: style).string)
    }
}
