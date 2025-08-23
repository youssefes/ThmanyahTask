//
//  BigSquareAudioCardView.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//

import SwiftUI

struct BigSquareAudioCardView: View {
    private let imageWidth = ((UIScreen.screenWidth / 2.5) - 16)
    var content: ContentData
    var body: some View {
        VStack(alignment: .leading) {
            AsyncImageView(url: URL(string: content.avatarUrl))
                .frame(width: imageWidth, height: imageWidth)
            Text(content.name)
                .foregroundColor(.white)
                .font(DesignSystem.Typography.Medium.caption1)
            HStack {
                Button(action: {
                    
                }, label: {
                    HStack(spacing: 4) {
                        Image(systemName: "play.fill")
                            .foregroundColor(.white)
                        Text("22 h")
                            .foregroundColor(.white)
                            .font(DesignSystem.Typography.Medium.caption2)
                        Text("30 m")
                            .foregroundColor(.white)
                            .font(DesignSystem.Typography.Medium.caption2)
                    }
                    .padding(8)
                    .background(DesignSystem.Colors.itemBackground)
                    .cornerRadius(20)
                })
                
                Text("امس")
                    .foregroundColor(.gray)
            }
        }
        .cornerRadius(12)
    }
}

#Preview {
    BigSquareAudioCardView(content: ContentData(articleId: "", episodeId: "", podcastId: "33223131", name: "NPR News Now", description: "The latest news in five minutes. Updated hourly.", avatarUrl: "https://media.npr.org/assets/img/2023/03/01/npr-news-now_square.png?s=1400&c=66", episodeCount: 2, duration: 600, language: "en", priority: 1, popularityScore: 11, score: 240.0845,authorName: "youseef", releaseDate: "2024-07-23T08:00:00.000Z"))
}
