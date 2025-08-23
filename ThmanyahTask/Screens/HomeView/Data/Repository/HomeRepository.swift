//
//  HomeRepository.swift
//  ThmanyahTask
//
//  Created by youssef on 22/08/2025.
//

import Foundation

class HomeRepository: HomeRepositoryProtocol {
    let service: NetworkService
    
    init(service: NetworkService =  NetworkServiceImplementation()) {
        self.service = service
    }
    
    func fetchSections(page: Int) async throws -> SectionsModel {
        let fetchSectionsEndpoint = Endpoint(path: APIUrls.homeSections, method: .GET,queryItems: [URLQueryItem(name: "page", value: String(page))])
        do {
            let resulte = try await service.request(fetchSectionsEndpoint, responseType: SectionsModel.self)
            return resulte
        } catch {
            throw error
        }
    }
    
}
