//
//  MockGetHomeSectionsNetworkService.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//


import XCTest
@testable import ThmanyahTask

// MARK: - Mock NetworkService 
class MockGetHomeSectionsNetworkService: NetworkService {
    var shouldSucceed: Bool
    var returnedValue: SectionsModel
    var thrownError: Error?

    init(shouldSucceed: Bool, returnedValue: SectionsModel, thrownError: Error?) {
        self.shouldSucceed = shouldSucceed
        self.returnedValue = returnedValue
        self.thrownError = thrownError
    }

    func request<T>(_ endpoint: Endpoint, responseType: T.Type) async throws -> T where T: Decodable {
        if shouldSucceed {
            if let result = returnedValue as? T {
                return result
            } else {
                throw NetworkError.invalidResponse  // 🛑 this is your actual error
            }
        } else if let error = thrownError {
            throw error
        } else {
            throw NetworkError.invalidURL
        }
    }
}
