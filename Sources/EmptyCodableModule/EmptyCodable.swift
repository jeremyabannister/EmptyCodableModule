//
//  EmptyCodable.swift
//
//
//  Created by Jeremy Bannister on 4/26/22.
//

///
@_exported import Foundation

///
public struct EmptyCodable:
    Codable,
    Hashable {
    
    ///
    public init () { }
    
    ///
    public init (from decoder: Decoder) throws {
        
        ///
        let container = try decoder.container(keyedBy: AnyCodingKey.self)
        
        ///
        guard container.allKeys.isEmpty else {
            throw DecodingError.dataCorrupted(
                DecodingError.Context(
                    codingPath: decoder.codingPath,
                    debugDescription: "Expected empty object, but received object with keys: \(container.allKeys)"
                )
            )
        }
    }
    
    ///
    public func encode (to encoder: Encoder) throws {
        
        ///
        struct EmptyEncodable: Encodable { }
        
        ///
        try EmptyEncodable()
            .encode(to: encoder)
    }
    
    ///
    private struct AnyCodingKey: CodingKey {
        
        ///
        var intValue: Int? { nil }
        var stringValue: String { "" }
        
        ///
        init? (intValue: Int) { }
        init? (stringValue: String) { }
    }
}

///
extension EmptyCodable {
    
    ///
    public static let jsonData: Data = "{}".data(using: .utf8)!
}
