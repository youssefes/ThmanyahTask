//
//  SquareCardView.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//

import SwiftUI

struct SquareCardView: View {
    var content: ContentData
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            AsyncImageView(url: URL(string: content.avatarUrl))
                .frame(height: 140)
                .cornerRadius(12)
                .overlay {
                    LinearGradient(
                        stops: [
                            Gradient.Stop(color: .black, location: 0.00),
                            Gradient.Stop(color: .black.opacity(0), location: 0.8),
                        ],
                        startPoint: UnitPoint(x: 0.63, y: 1.08),
                        endPoint: UnitPoint(x: 0.65, y: 0.14)
                    )
                }
            VStack(alignment: .leading, spacing: .zero) {
                Text(content.name)
                    .font(DesignSystem.Typography.Medium.title)
                    .foregroundColor(.white)
                    .lineLimit(2)
                Text("\(content.episodeCount) episodes")
                    .font(DesignSystem.Typography.Light.subtitle)
                    .foregroundColor(.white)
            }
            .padding(10)
        }
        .frame(width: ((UIScreen.screenWidth / 1.5) - 32), height: 140)
        .cornerRadius(12)
    }
}

#Preview {
    SquareCardView(content: ContentData(episodeId: "", podcastId: "33223131", name: "NPR News Now", description: "The latest news in five minutes. Updated hourly.", avatarUrl: "https://media.npr.org/assets/img/2023/03/01/npr-news-now_square.png?s=1400&c=66", episodeCount: 2, duration: 600, language: "en", priority: 1, popularityScore: 11, score: 240.0845,authorName: "youseef", releaseDate: "2024-07-23T08:00:00.000Z"))
}
