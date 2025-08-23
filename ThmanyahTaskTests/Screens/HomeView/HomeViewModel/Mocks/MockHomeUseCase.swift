//
//  MockHomeUseCase.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//

import XCTest
@testable import ThmanyahTask

class MockHomeUseCase: HomeUseCaseProtocol {

    var result: Result<SectionsModel, Error>
    
    init(result: Result<SectionsModel, Error>) {
        self.result = result
    }
    
    func fetchSections() async throws -> [SectionsData] {
        switch result {
        case .success(let model): return mapSectionData(sectionData: model.sections ?? [])
        case .failure(let error): throw error
        }
    }
    
    private func mapSectionData(sectionData: [SectionsDataDTO]) -> [SectionsData] {
        sectionData.map({SectionsData(name: $0.name ?? "", type: $0.type ?? .unknown(""), contentType: $0.contentType, order: $0.order ?? 0, content: mapContentData(contentData: $0.content ?? []))})
    }
    
    private func mapContentData(contentData: [ContentDataDTO]) -> [ContentData] {
        return contentData.map { item in
            ContentData(articleId: item.article_id ?? "", episodeId: item.episodeId ?? "", podcastId: item.podcastId ?? "", name: item.name ?? "", description: item.description ?? "", avatarUrl: item.avatarUrl ?? "", episodeCount: item.episodeCount ?? 0, duration: item.duration ?? 0, language: item.language ?? "", priority: item.priority ?? 0, popularityScore: item.popularityScore ?? 0, score: item.score ?? 0.0, authorName: item.authorName ?? "", releaseDate: item.releaseDate ?? "")
        }
    }
}
