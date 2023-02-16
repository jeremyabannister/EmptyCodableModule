//
//  EmptyCodable.swift
//
//
//  Created by Jeremy Bannister on 4/26/22.
//

///
@_exported import Foundation

///
public struct EmptyCodable: Codable,
                            Hashable {
    
    ///
    public init () { }
}

///
extension EmptyCodable {
    
    ///
    public static let jsonData: Data = "{}".data(using: .utf8)!
}
