//
//  BigSquareAudioCardsView.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//

import SwiftUI

struct BigSquareAudioCardsView: View {
    var audiobooks: [ContentData]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16) {
                ForEach(audiobooks, id: \.podcastId) { item in
                    BigSquareAudioCardView(content: item)
                }
            }
        }
    }
}

#Preview {
    BigSquareAudioCardsView(audiobooks: [])
}
