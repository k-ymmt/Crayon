//
//  File.swift
//  
//
//  Created by Kazuki Yamamoto on 2022/11/28.
//

import Foundation

enum Utils {
    static func makeColor(from hex: String) -> Crayon.Color {
        var hexString = hex
        if hex.hasPrefix("#") {
            hexString = String(hex.dropFirst())
        }

        guard let number = Int("000000" + hexString, radix: 16) else {
            fatalError("Invalid color code: \(hex)")
        }

        let red = UInt8((number & 0xFF0000) >> 16)
        let green = UInt8((number & 0x00FF00) >> 8)
        let blue = UInt8(number & 0x0000FF)

        return .trueColor(red: red, green: green, blue: blue)
    }
}
