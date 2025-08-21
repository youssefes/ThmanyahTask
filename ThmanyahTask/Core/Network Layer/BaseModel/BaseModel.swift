//
//  BaseModel.swift
//  Copyright © 2025 youssef. All rights reserved.

import Foundation

// MARK: - BaseModel

struct BaseModel<T: Codable>: Codable {
    let success: Bool?
    let data: T?
}
