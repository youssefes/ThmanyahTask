//
//  NetworkService.swift
//  Copyright © 2025 youssef. All rights reserved.

// MARK: - Network Service Protocol

protocol NetworkService {
    func request<T: Decodable>(_ endpoint: Endpoint, responseType: T.Type) async throws -> T
}
