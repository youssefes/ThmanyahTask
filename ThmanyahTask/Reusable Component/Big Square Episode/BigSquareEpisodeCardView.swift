//
//  BigSquareEpisodeCardView.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//

import SwiftUI

struct BigSquareEpisodeCardView: View {
    var content: ContentData
    var body: some View {
        HStack(alignment: .top, spacing: 8) {
            AsyncImageView(url: URL(string: content.avatarUrl))
                .frame(width: 30, height: 30)
                .cornerRadius(15)
            VStack(alignment: .leading,spacing: 10){
                HStack {
                    Text(content.authorName)
                        .foregroundColor(.white)
                        .font(DesignSystem.Typography.Regular.title)
                    
                    Spacer()
                    
                    Text(content.releaseDate.toDate(format: .yearMonthMinutesWithZ)?.timeAgo() ?? "")
                        .font(DesignSystem.Typography.Regular.body)
                        .foregroundColor(.gray)
                    
                }
                
                HTMLText(html: content.description)
                    .lineLimit(5)
                    .foregroundColor(.white)
                    .font(DesignSystem.Typography.Regular.title)
                
                HStack(spacing: 10) {
                    AsyncImageView(url: URL(string: content.avatarUrl))
                        .frame(width: 36, height: 36)
                        .cornerRadius(8)
                    VStack(alignment: .leading){
                        Text(content.name)
                            .lineLimit(1)
                            .foregroundColor(.white)
                            .font(DesignSystem.Typography.Regular.body)
                        HStack {
                            Text("5h")
                                .foregroundColor(.white)
                                .font(DesignSystem.Typography.Light.subtitle)
                            Text("\(content.duration / 60) min")
                                .foregroundColor(.white)
                                .font(DesignSystem.Typography.Light.subtitle)
                            Spacer()
                        }
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "list.and.film")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .foregroundColor(.white)
                    }
                }
                .padding(8)
                .background(DesignSystem.Colors.subitemBackground)
                .cornerRadius(8)
            }
            Spacer()
        }
        .frame(width: ((UIScreen.screenWidth) - 100))
        .padding(10)
        .background(DesignSystem.Colors.itemBackground)
        .cornerRadius(20)
        
    }
}

#Preview {
    BigSquareEpisodeCardView(content: ContentData(articleId: "", episodeId: "", podcastId: "33223131", name: "NPR News Now", description: "The latest news in five minutes. Updated hourly.", avatarUrl: "https://media.npr.org/assets/img/2023/03/01/npr-news-now_square.png?s=1400&c=66", episodeCount: 2, duration: 600, language: "en", priority: 1, popularityScore: 11, score: 240.0845,authorName: "youseef", releaseDate: "2024-07-23T08:00:00.000Z"))
}
