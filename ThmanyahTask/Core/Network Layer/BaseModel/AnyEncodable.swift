//
//  AnyEncodable.swift
//  Copyright © 2025 youssef. All rights reserved.

import Foundation

// MARK: - Helper to Encode Any Encodable
struct AnyEncodable: Encodable {
    private let encodeClosure: (Encoder) throws -> Void

    init<T: Encodable>(_ value: T) {
        self.encodeClosure = value.encode(to:)
    }

    func encode(to encoder: Encoder) throws {
        try encodeClosure(encoder)
    }
}
