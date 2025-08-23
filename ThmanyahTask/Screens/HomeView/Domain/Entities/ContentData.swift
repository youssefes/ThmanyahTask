//
//  ContentData.swift
//  ThmanyahTask
//
//  Created by youssef on 22/08/2025.

struct ContentData : Codable {
    let episodeId: String
    let podcastId : String
    let name : String
    let description : String
    let avatarUrl : String
    let episodeCount : Int
    let duration : Int
    let language : String
    let priority : Int
    let popularityScore : Int
    let score : Double
    let authorName: String
    let releaseDate: String
}
