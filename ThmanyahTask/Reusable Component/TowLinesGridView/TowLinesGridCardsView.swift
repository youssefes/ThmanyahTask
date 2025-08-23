//
//  TowLinesGridCardsView.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//

import SwiftUI

struct TowLinesGridCardsView: View {
    var content: [ContentData]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.flexible(),spacing: 16),GridItem(.flexible(), spacing: 16)]) {
                ForEach(content, id: \.episodeId) { item in
                    TowLinesGridView(content: item)
                        .frame(width: UIScreen.screenWidth * 0.80)
                }
            }
            .frame(height: 200)
        }
    }
}

#Preview {
    TowLinesGridCardsView(content: [])
}
