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
	let contentType : String
	let order : Int
	let content : [ContentData]
}
