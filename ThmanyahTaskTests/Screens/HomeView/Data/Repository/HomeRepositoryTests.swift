//
//  HomeRepositoryTests.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//


import XCTest
@testable import ThmanyahTask

// MARK: - Tests
final class HomeRepositoryTests: XCTestCase {
    
    private var sut: HomeRepository!
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    
    func testFetchHome_Returns_HomeSections() async throws {
        // Arrange
        let homwSections = SectionsDataDTO(name: "", type: .bigSquareAudio, contentType: .audioBook, order: 1, content: mockContentsDataDTO)
        
        let expectedValue = SectionsModel(sections: [homwSections], pagination: nil)
        
        let mockService = MockGetHomeSectionsNetworkService(shouldSucceed: true, returnedValue: expectedValue, thrownError: nil)
        
        let repository = HomeRepository(service: mockService)
        
        // Act
        let result = try await repository.fetchSections(page: 1)
        
        // Assert
        XCTAssertEqual(result.sections?.count, 1)
        XCTAssertEqual(result.sections?.first?.content?.count, homwSections.content?.count)
    }
    
    func testFetchOrdersRemote_ThrowsOnNetworkError() async {
        // Arrange
        let expectedValue = SectionsModel(sections: nil, pagination: nil)
        
        let mockService = MockGetHomeSectionsNetworkService(shouldSucceed: false, returnedValue: expectedValue, thrownError: NetworkError.invalidURL)
        
        let repository = HomeRepository(service: mockService)
        
        // Act + Assert
        do {
            _ = try await repository.fetchSections(page: 1)
            XCTFail("Expected error to be thrown")
        } catch {
            XCTAssertTrue(error is NetworkError)
        }
    }
}
