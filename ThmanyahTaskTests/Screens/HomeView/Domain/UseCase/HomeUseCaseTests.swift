//
//  HomeUseCaseTests.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//


import XCTest
@testable import ThmanyahTask

final class HomeUseCaseTests: XCTestCase {
    
    private var sut: HomeUseCase!

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testGetOrders_Success() async throws {
        // Arrange
        let homwSections = SectionsDataDTO(name: "", type: .bigSquareAudio, contentType: .audioBook, order: 1, content: mockContentsDataDTO)
        let expectedValue = SectionsModel(sections: [homwSections], pagination: nil)
        let mockRepo = MockHomeRepository(resultToReturn: .success(expectedValue))
        sut = HomeUseCase(repository: mockRepo)

        // Act
        let result = try await sut.fetchSections()

        // Assert
        XCTAssertEqual(result.count, expectedValue.sections?.count)
    }

    func testGetOrders_Failure() async {
        // Arrange
        let mockRepo = MockHomeRepository(resultToReturn: .failure(NetworkError.invalidResponse))
        sut = HomeUseCase(repository: mockRepo)

        // Act & Assert
        do {
            _ = try await sut.fetchSections()
            XCTFail("Expected error to be thrown")
        } catch {
            XCTAssertTrue(error is NetworkError)
        }
    }
}
