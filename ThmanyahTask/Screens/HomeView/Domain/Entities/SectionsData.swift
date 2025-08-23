//
//  SectionsData.swift
//  ThmanyahTask
//
//  Created by youssef on 22/08/2025.
//
import Foundation

struct SectionsData : Identifiable{
    let id : String = UUID().uuidString
	let name : String
	let type : SectionsType
	let contentType : ContentType
	let order : Int
	let content : [ContentData]
}

enum ContentType: String, Codable {
    case podcast
    case episode
    case audioBook = "audio_book"
    case audioArticle = "audio_article"
}
