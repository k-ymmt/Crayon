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
        XCTAssertEqual(Crayon.blue("foo").string, "\u{001B}[34mfoo\u{001B}[m")
    }

    func testSupportLevel() {
        Crayon.supportLevel = .ansiColor
        XCTAssertEqual(Crayon.blue("foo").string, "\u{001B}[34mfoo\u{001B}[m")
        XCTAssertEqual(Crayon.foreground("foo", color: 0x12).string, "foo")
        XCTAssertEqual(Crayon.foreground("foo", red: 22, green: 00, blue: 11).bold().string, "\u{001B}[1mfoo\u{001B}[m")

        Crayon.supportLevel = .none
        XCTAssertEqual(Crayon.blue("foo").string, "foo")
        XCTAssertEqual(Crayon.bold("foo").string, "foo")
        XCTAssertEqual(Crayon.backgroundBlue("foo").string, "foo")
    }

    func testPlus() {
        XCTAssertEqual(String(describing: Crayon.blue("foo") + "bar"), "\u{001B}[34mfoo\u{001B}[mbar")
        XCTAssertEqual(String(describing: "foo" + Crayon.blue("bar")), "foo\u{001B}[34mbar\u{001B}[m")
        XCTAssertEqual(String(describing: Crayon.blue("foo") + Crayon.blue("bar")), "\u{001B}[34mfoo\u{001B}[m\u{001B}[34mbar\u{001B}[m")
    }
}
