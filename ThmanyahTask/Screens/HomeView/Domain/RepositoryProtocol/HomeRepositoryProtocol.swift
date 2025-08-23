//
//  HomeRepositoryProtocol.swift
//  ThmanyahTask
//
//  Created by youssef on 22/08/2025.
//

import Foundation

protocol HomeRepositoryProtocol {
    func fetchSections(page: Int) async throws -> SectionsModel
}
