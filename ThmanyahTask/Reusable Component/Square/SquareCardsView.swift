//
//  SquareCardsView.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//

import SwiftUI

struct SquareCardsView: View {
    var content: [ContentData]
    var contentType: ContentType
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(content, id: \.self) { item in
                    SquareCardView(content: item,contentType: contentType)
                }
            }
        }
    }
}

#Preview {
    SquareCardsView(content: [], contentType: .audioArticle)
}
