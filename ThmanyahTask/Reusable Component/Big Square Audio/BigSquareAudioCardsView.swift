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
            HStack(spacing: 16) {
                ForEach(audiobooks, id: \.self) { item in
                    BigSquareAudioCardView(content: item)
                }
            }
        }
    }
}

#Preview {
    BigSquareAudioCardsView(audiobooks: [])
}
