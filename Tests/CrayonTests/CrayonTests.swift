//
//  CrayonTests.swift
//  
//
//  Created by Kazuki Yamamoto on 2022/11/27.
//

import Foundation
import XCTest
@testable import Crayon

final class CrayonTests: XCTestCase {
    func testCrayon() {
        XCTAssertEqual(Crayon.blue("foo").description, "\u{001B}[34mfoo\u{001B}[m")
    }

    func testSupportLevel() {
        Crayon.supportLevel = .ansiColor
        XCTAssertEqual(Crayon.blue("foo").description, "\u{001B}[34mfoo\u{001B}[m")
        XCTAssertEqual(Crayon.foreground("foo", color: 0x12).description, "foo")
        XCTAssertEqual(Crayon.foreground("foo", red: 22, green: 00, blue: 11).bold().description, "\u{001B}[1mfoo\u{001B}[m")

        Crayon.supportLevel = .none
        XCTAssertEqual(Crayon.blue("foo").description, "foo")
        XCTAssertEqual(Crayon.bold("foo").description, "foo")
        XCTAssertEqual(Crayon.backgroundBlue("foo").description, "foo")
    }
}
