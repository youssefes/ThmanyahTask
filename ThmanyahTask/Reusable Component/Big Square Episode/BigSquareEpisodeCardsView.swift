//
//  BigSquareEpisodeCardsView.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//

import SwiftUI

struct BigSquareEpisodeCardsView: View {
    var episodes: [ContentData]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16) {
                ForEach(episodes, id: \.self) { item in
                    BigSquareEpisodeCardView(content: item)
                }
            }
        }
    }
}

#Preview {
    BigSquareEpisodeCardsView(episodes: [])
}
