//
//  HomeView.swift
//  ThmanyahTask
//
//  Created by youssef on 22/08/2025.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    var body: some View {
        BaseView(state: $viewModel.state) {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: Header
                    HeaderView()
                        .padding(.bottom, 20)
                    
                    // MARK: Tabs
                    CategoryTabsView(categories: $viewModel.categories)
                    // MARK: Sections
                    ForEach(viewModel.sections, id: \.id ) { section  in
                        VStack(alignment: .leading, spacing: 24) {
                            sections(section: section)
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.top, 16)
            }
            .task {
                await viewModel.fetchSections()
            }
        }
        
    }
    
    @ViewBuilder
    func sections(section: SectionsData) -> some View {
        switch section.type {
        case .bigSquareAudio:
            // MARK: bigS quare Audio
            SectionHeader(title: section.name, seeMoreAction: {
                print("big Square Audio See More")
            })
            BigSquareAudioCardsView(audiobooks: section.content)
        case .bigSquare:
            // MARK: Section: big Square
            SectionHeader(title: section.name, seeMoreAction: {
                print("big Square See More")
            })
            BigSquareEpisodeCardsView(episodes: section.content)
        case .twolinesGrid:
            // MARK: Section: two lines Grid
            SectionHeader(title: section.name, seeMoreAction: {
                print("two lines Grid See More")
            })
            TowLinesGridCardsView(content: section.content)
        case .square:
            // MARK: Section: square
            SectionHeader(title: section.name, seeMoreAction: {
                print("square See More")
            })
            SquareCardsView(content: section.content, contentType: section.contentType)
        case .queue:
            // MARK: Section: Queue
            SectionHeader(title: section.name, seeMoreAction: {
                print("Queue See More")
            })
            QueueView(content: section.content)
        case .unknown:
            Spacer()
        }
    }
}

#Preview {
    HomeView()
}
