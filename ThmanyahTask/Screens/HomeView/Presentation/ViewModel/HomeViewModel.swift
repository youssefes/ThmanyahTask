//
//  HomeViewModel.swift
//  ThmanyahTask
//
//  Created by youssef on 22/08/2025.
//

import Foundation

class HomeViewModel: BaseViewModel, ObservableObject {
    
    @Published var sections: [SectionsData] = []
    @Published var categories: [CategoryTabModel] = []
    var homeUseCase: HomeUseCaseProtocol
    
    init(homeUseCase: HomeUseCaseProtocol = HomeUseCase()) {
        self.homeUseCase = homeUseCase
        super.init()
        state = .loading
    }

    // MARK: - get Sections
    func fetchSections() async {
        do {
            let newsections = try await homeUseCase.fetchSections()
            await MainActor.run {
                sections.append(contentsOf: newsections)
                sections = sections.sorted { $0.order < $1.order }
                categories = sections.map({ sectionsData in
                    return CategoryTabModel(title: sectionsData.contentType.rawValue)
                })
                
                categories = Array(Set(categories))
                categories.insert(CategoryTabModel(title: "For You", isSelected: true), at: 0)
                state = .successful
            }
        } catch {
            if let networkError = error as? NetworkError {
                await MainActor.run {
                    state = .failed(networkError)
                }
            } else {
                await MainActor.run {
                    state = .failed(NetworkError.requestFailed(error))
                }
            }
        }
        
    }
}
