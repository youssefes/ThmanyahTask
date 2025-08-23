//
//  TowLinesGridView.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//

import SwiftUI

struct TowLinesGridView: View {
    var content: ContentData
    var body: some View {
        HStack(spacing: 16) {
            AsyncImageView(url: URL(string: content.avatarUrl))
                .frame(width: 75)
                .cornerRadius(4)
            
            VStack(alignment: .leading,spacing: 8) {
                Text(content.releaseDate.toDate(format: .yearMonthMinutesWithZ)?.timeAgo() ?? "")
                    .font(DesignSystem.Typography.Light.body)
                    .foregroundColor(.white)
                
                Text(content.name)
                    .font(DesignSystem.Typography.Medium.title)
                    .foregroundColor(.white)
                    .lineLimit(2)
                HStack {
                    Button(action: {
                        
                    }, label: {
                        HStack(spacing: 4) {
                            Image(systemName: "play.fill")
                                .foregroundColor(.white)
                                .font(DesignSystem.Typography.Regular.caption3)
                            Text("22 h")
                                .foregroundColor(.white)
                                .font(DesignSystem.Typography.Regular.caption3)
                            Text("30 m")
                                .foregroundColor(.white)
                                .font(DesignSystem.Typography.Regular.caption3)
                        }
                        .padding(6)
                        .background(DesignSystem.Colors.itemBackground)
                        .cornerRadius(20)
                    })
                    
                    Spacer()
                    
                    HStack(spacing: 16) {
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "ellipsis")
                        })
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "list.star")
                        })
                    }
                    .foregroundColor(.white)
                    .font(.title3)
                }
            }
            .padding(.vertical)
        }
        .frame(height: 90)
    }
}

#Preview {
    TowLinesGridView(content: ContentData(episodeId: "", podcastId: "33223131", name: "NPR News Now", description: "The latest news in five minutes. Updated hourly.", avatarUrl: "https://media.npr.org/assets/img/2023/03/01/npr-news-now_square.png?s=1400&c=66", episodeCount: 2, duration: 600, language: "en", priority: 1, popularityScore: 11, score: 240.0845,authorName: "youseef", releaseDate: "2024-07-23T08:00:00.000Z"))
}
