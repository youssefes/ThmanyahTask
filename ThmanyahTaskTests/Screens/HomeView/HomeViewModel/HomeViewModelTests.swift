//
//  HomeViewModelTests.swift
//
import XCTest
@testable import ThmanyahTask

final class HomeViewModelTests: XCTestCase {
    
    private var sut: HomeViewModel!
    private var initialModel: SectionsModel!
    override func setUp() {
        let homwSections = SectionsDataDTO(name: "", type: .bigSquareAudio, contentType: .audioBook, order: 1, content: mockContentsDataDTO)
        initialModel = SectionsModel(sections: [homwSections], pagination: nil)
        super.setUp()
    }

    override func tearDown() {
        sut = nil
        initialModel = nil
        super.tearDown()
    }
    
    func test_GetSections_Success() async {
        // Arrange
        let mockHomeUseCase = MockHomeUseCase(result: .success(initialModel))
        
        sut = HomeViewModel(homeUseCase: mockHomeUseCase)
        
        // Act
        await sut.fetchSections()
        
        // Assert
        XCTAssertEqual(sut.sections.count, initialModel.sections?.count)
    }

    func test_GetSections_Failure() async {
        // Arrange
        let mockHomeUseCase = MockHomeUseCase(result: .failure(NetworkError.invalidResponse))
        
        sut = HomeViewModel(homeUseCase: mockHomeUseCase)
        // Act + Assert
        await sut.fetchSections()
        XCTAssertEqual(sut.state, .failed(NetworkError.invalidResponse))
    }
}
