//
//  EmptyCodableModule_tests.swift
//  
//
//  Created by Jeremy Bannister on 4/26/22.
//

///
import XCTest
import EmptyCodableModule

///
final class EmptyCodable_tests: XCTestCase {
    
    ///
    func test_init () {
        _ = EmptyCodable()
    }
    
    ///
    func test_encoding () throws {
        if try JSONEncoder().encode(EmptyCodable()) != "{}".data(using: .utf8)! {
            XCTFail()
        }
    }
    
    ///
    func test_decoding () throws {
        _ = try JSONDecoder().decode(EmptyCodable.self, from: "{}".data(using: .utf8)!)
    }
}

