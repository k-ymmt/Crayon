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
}
