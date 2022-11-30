//
//  File.swift
//  
//
//  Created by Kazuki Yamamoto on 2022/11/27.
//

import Foundation

public extension String.StringInterpolation {

    // MARK: - 3bit Color

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: Crayon.ANSIColor, background: Crayon.ANSIColor) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: Crayon.ANSIColor) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground))
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, background: Crayon.ANSIColor) {
        appendLiteral(makeCrayonString(message, style: style, background: background))
    }

    mutating func appendInterpolation(_ message: String, foreground: Crayon.ANSIColor, background: Crayon.ANSIColor) {
        appendLiteral(makeCrayonString(message, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style) {
        appendLiteral(makeCrayonString(message, style: style))
    }

    mutating func appendInterpolation(_ message: String, foreground: Crayon.ANSIColor) {
        appendLiteral(makeCrayonString(message, foreground: foreground))
    }

    mutating func appendInterpolation(_ message: String, background: Crayon.ANSIColor) {
        appendLiteral(makeCrayonString(message, background: background))
    }

    // MARK: - 8bit Color Foreground & 3bit Color Background

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: UInt8, background: Crayon.ANSIColor) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: UInt8) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground))
    }

    mutating func appendInterpolation(_ message: String, foreground: UInt8, background: Crayon.ANSIColor) {
        appendLiteral(makeCrayonString(message, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, foreground: UInt8) {
        appendLiteral(makeCrayonString(message, foreground: foreground))
    }

    // MARK: 3bit Color Foreground & 8bit Color Background

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: Crayon.ANSIColor, background: UInt8) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, background: UInt8) {
        appendLiteral(makeCrayonString(message, style: style, background: background))
    }

    mutating func appendInterpolation(_ message: String, foreground: Crayon.ANSIColor, background: UInt8) {
        appendLiteral(makeCrayonString(message, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, background: UInt8) {
        appendLiteral(makeCrayonString(message, background: background))
    }

    // MARK: - 24bit Color Foreground & 3bit Color Background

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: Crayon.ANSIColor) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground))
    }

    mutating func appendInterpolation(_ message: String, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: Crayon.ANSIColor) {
        appendLiteral(makeCrayonString(message, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, foreground: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(makeCrayonString(message, foreground: foreground))
    }

    // MARK: - 3bit Color Foreground & 24bit Color Background

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: Crayon.ANSIColor, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(makeCrayonString(message, style: style, background: background))
    }

    mutating func appendInterpolation(_ message: String, foreground: Crayon.ANSIColor, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(makeCrayonString(message, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(makeCrayonString(message, background: background))
    }

    // MARK: - 24bit Color Foreground & 8bit Color Background

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: UInt8) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: UInt8) {
        appendLiteral(makeCrayonString(message, foreground: foreground, background: background))
    }

    // MARK: - 8bit Color Foreground & 24bit Color Background

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: UInt8, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, foreground: UInt8, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(makeCrayonString(message, foreground: foreground, background: background))
    }

    // MARK: - 24bit Color Foreground & 24bit Color Background

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(makeCrayonString(message, foreground: foreground, background: background))
    }

    // MARK: - Hex Color Foreground & 3bit Color Background

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: String, background: Crayon.ANSIColor) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, foreground: String, background: Crayon.ANSIColor) {
        appendLiteral(makeCrayonString(message, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: String) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground))
    }

    mutating func appendInterpolation(_ message: String, foreground: String) {
        appendLiteral(makeCrayonString(message, foreground: foreground))
    }

    // MARK: - Hex Color Foreground & 8bit Color Background

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: String, background: UInt8) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, foreground: String, background: UInt8) {
        appendLiteral(makeCrayonString(message, foreground: foreground, background: background))
    }

    // MARK: - Hex Color Foreground & 24bit Color Background

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: String, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, foreground: String, background: (red: UInt8, green: UInt8, blue: UInt8)) {
        appendLiteral(makeCrayonString(message, foreground: foreground, background: background))
    }

    // MARK: - 3bit Color Foreground & Hex Color Background

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: Crayon.ANSIColor, background: String) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, foreground: Crayon.ANSIColor, background: String) {
        appendLiteral(makeCrayonString(message, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, background: String) {
        appendLiteral(makeCrayonString(message, style: style, background: background))
    }

    mutating func appendInterpolation(_ message: String, background: String) {
        appendLiteral(makeCrayonString(message, background: background))
    }

    // MARK: - 8bit Color Foreground & Hex Color Background

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: UInt8, background: String) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, foreground: UInt8, background: String) {
        appendLiteral(makeCrayonString(message, foreground: foreground, background: background))
    }

    // MARK: - 24bit Color Foreground & Hex Color Background

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: String) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: String) {
        appendLiteral(makeCrayonString(message, foreground: foreground, background: background))
    }

    // MARK: - Hex Color Foreground & Hex Color Background

    mutating func appendInterpolation(_ message: String, style: Crayon.Style, foreground: String, background: String) {
        appendLiteral(makeCrayonString(message, style: style, foreground: foreground, background: background))
    }

    mutating func appendInterpolation(_ message: String, foreground: String, background: String) {
        appendLiteral(makeCrayonString(message, foreground: foreground, background: background))
    }
}

private func makeCrayonString(_ message: String, style: Crayon.Style? = nil, foreground: Crayon.ANSIColor? = nil, background: Crayon.ANSIColor? = nil) -> String {
    Crayon(message: message, style: style, foreground: foreground.map { .color($0) }, background: background.map { .color($0) }).description
}

private func makeCrayonString(_ message: String, style: Crayon.Style? = nil, foreground: UInt8, background: Crayon.ANSIColor? = nil) -> String {
    Crayon(message: message, style: style, foreground: .color256(foreground), background: background.map { .color($0) }).description
}

private func makeCrayonString(_ message: String, style: Crayon.Style? = nil, foreground: Crayon.ANSIColor? = nil, background: UInt8) -> String {
    Crayon(message: message, style: style, foreground: foreground.map { .color($0) }, background: .color256(background)).description
}

private func makeCrayonString(_ message: String, style: Crayon.Style? = nil, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: Crayon.ANSIColor? = nil) -> String {
    Crayon(message: message, style: style, foreground: .trueColor(red: foreground.red, green: foreground.green, blue: foreground.blue), background: background.map { .color($0) }).description
}

private func makeCrayonString(_ message: String, style: Crayon.Style? = nil, foreground: Crayon.ANSIColor? = nil, background: (red: UInt8, green: UInt8, blue: UInt8)) -> String {
    Crayon(message: message, style: style, foreground: foreground.map { .color($0) }, background: .trueColor(red: background.red, green: background.green, blue: background.blue)).description
}

private func makeCrayonString(_ message: String, style: Crayon.Style? = nil, foreground: UInt8, background: (red: UInt8, green: UInt8, blue: UInt8)) -> String {
    Crayon(message: message, style: style, foreground: .color256(foreground), background: .trueColor(red: background.red, green: background.green, blue: background.blue)).description
}

private func makeCrayonString(_ message: String, style: Crayon.Style? = nil, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: UInt8) -> String {
    Crayon(message: message, style: style, foreground: .trueColor(red: foreground.red, green: foreground.green, blue: foreground.blue), background: .color256(background)).description
}

private func makeCrayonString(_ message: String, style: Crayon.Style? = nil, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: (red: UInt8, green: UInt8, blue: UInt8)) -> String {
    Crayon(message: message, style: style, foreground: .trueColor(red: foreground.red, green: foreground.green, blue: foreground.blue), background: .trueColor(red: foreground.red, green: foreground.green, blue: foreground.blue)).description
}

private func makeCrayonString(_ message: String, style: Crayon.Style? = nil, foreground: String, background: Crayon.ANSIColor? = nil) -> String {
    Crayon(message: message, style: style, foreground: Utils.makeColor(from: foreground), background: background.map { .color($0) }).description
}

private func makeCrayonString(_ message: String, style: Crayon.Style? = nil, foreground: String, background: UInt8) -> String {
    Crayon(message: message, style: style, foreground: Utils.makeColor(from: foreground), background: .color256(background)).description
}

private func makeCrayonString(_ message: String, style: Crayon.Style? = nil, foreground: String, background: (red: UInt8, green: UInt8, blue: UInt8)) -> String {
    Crayon(message: message, style: style, foreground: Utils.makeColor(from: foreground), background: .trueColor(red: background.red, green: background.green, blue: background.blue)).description
}

private func makeCrayonString(_ message: String, style: Crayon.Style? = nil, foreground: Crayon.ANSIColor? = nil, background: String) -> String {
    Crayon(message: message, style: style, foreground: foreground.map { .color($0) }, background: Utils.makeColor(from: background)).description
}

private func makeCrayonString(_ message: String, style: Crayon.Style? = nil, foreground: UInt8, background: String) -> String {
    Crayon(message: message, style: style, foreground: .color256(foreground), background: Utils.makeColor(from: background)).description
}

private func makeCrayonString(_ message: String, style: Crayon.Style? = nil, foreground: (red: UInt8, green: UInt8, blue: UInt8), background: String) -> String {
    Crayon(message: message, style: style, foreground: .trueColor(red: foreground.red, green: foreground.green, blue: foreground.blue), background: Utils.makeColor(from: background)).description
}

private func makeCrayonString(_ message: String, style: Crayon.Style? = nil, foreground: String, background: String) -> String {
    Crayon(message: message, style: style, foreground: Utils.makeColor(from: foreground), background: Utils.makeColor(from: background)).description
}
