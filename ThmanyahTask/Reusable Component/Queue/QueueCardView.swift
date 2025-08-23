//
//  QueueCardView.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//
import SwiftUI

struct QueueCardView: View {
    var contant: ContentData
    var body: some View {
        HStack(spacing: 8) {
            AsyncImageView(url: URL(string: contant.avatarUrl))
                .frame(width: 140, height: 100)
                .cornerRadius(12)
            VStack(alignment: .leading,spacing: 8) {
                Text(contant.name)
                    .foregroundColor(.white)
                    .font(DesignSystem.Typography.Regular.title)
                HStack {
                    Text("5h ago")
                        .foregroundColor(.gray)
                        .font(DesignSystem.Typography.Regular.subtitle)
                    Text("\(contant.duration / 60) min")
                        .foregroundColor(.red)
                        .font(DesignSystem.Typography.Regular.subtitle)
                }
              
                HStack {
                    Spacer()
                    Image(systemName: "play.circle.fill")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                }
            }
            Spacer()
        }
        .frame(width: ((UIScreen.screenWidth) - 50))
        .padding(8)
        .background(DesignSystem.Colors.itemBackground)
        .cornerRadius(16)
    }
}

#Preview {
    QueueCardView(contant: ContentData(articleId: "", episodeId: "", podcastId: "33223131", name: "NPR News Now", description: "The latest news in five minutes. Updated hourly.", avatarUrl: "https://media.npr.org/assets/img/2023/03/01/npr-news-now_square.png?s=1400&c=66", episodeCount: 2, duration: 600, language: "en", priority: 1, popularityScore: 11, score: 240.0845,authorName: "youseef", releaseDate: "2024-07-23T08:00:00.000Z"))
}
