//
//  MockHomeRepository.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//


import XCTest
@testable import ThmanyahTask

class MockHomeRepository: HomeRepositoryProtocol {

    var resultToReturn: Result<SectionsModel, Error>
    
    init(resultToReturn: Result<SectionsModel, Error> ) {
        self.resultToReturn = resultToReturn
    }

    func fetchSections(page: Int) async throws -> SectionsModel {
        switch resultToReturn {
        case .success(let model): return model
        case .failure(let error): throw error
        }
    }
}
