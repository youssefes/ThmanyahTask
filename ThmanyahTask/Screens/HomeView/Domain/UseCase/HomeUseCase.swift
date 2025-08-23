//
//  HomeUseCase.swift
//  ThmanyahTask
//
//  Created by youssef on 22/08/2025.
//
protocol HomeUseCaseProtocol {
    func fetchSections() async throws -> [SectionsData]
}

class HomeUseCase: HomeUseCaseProtocol {
   
    private let repository: HomeRepositoryProtocol
    private var totalPage = 1
    private var currentPage = 1
    private var hasMorePages = true
    init(repository: HomeRepositoryProtocol = HomeRepository()) {
        self.repository = repository
    }
    
    func fetchSections() async throws -> [SectionsData] {
        guard hasMorePages else { return [] }
        let respond = try await repository.fetchSections(page: currentPage)
        if (respond.pagination?.totalPages ?? 0) < totalPage {
            hasMorePages = false
        }
        currentPage += 1
        return mapSectionData(sectionData: respond.sections ?? [])
    }
    
    private func mapSectionData(sectionData: [SectionsDataDTO]) -> [SectionsData] {
        sectionData.map({SectionsData(name: $0.name ?? "", type: $0.type ?? .unknown(""), contentType: $0.contentType ?? "", order: $0.order ?? 0, content: mapContentData(contentData: $0.content ?? []))})
    }
    
    private func mapContentData(contentData: [ContentDataDTO]) -> [ContentData] {
        return contentData.map { item in
            ContentData(episodeId: item.episodeId ?? "", podcastId: item.podcastId ?? "", name: item.name ?? "", description: item.description ?? "", avatarUrl: item.avatarUrl ?? "", episodeCount: item.episodeCount ?? 0, duration: item.duration ?? 0, language: item.language ?? "", priority: item.priority ?? 0, popularityScore: item.popularityScore ?? 0, score: item.score ?? 0.0, authorName: item.authorName ?? "", releaseDate: item.releaseDate ?? "")
        }
    }
}
