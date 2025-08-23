//
//  SquareCardsView.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//

import SwiftUI

struct SquareCardsView: View {
    var content: [ContentData]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16) {
                ForEach(content, id: \.podcastId) { item in
                    SquareCardView(content: item)
                }
            }
        }
    }
}

#Preview {
    SquareCardsView(content: [])
}
