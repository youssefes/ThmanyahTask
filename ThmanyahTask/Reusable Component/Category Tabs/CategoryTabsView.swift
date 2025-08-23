//
//  CategoryTabsView.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//
import SwiftUI

struct CategoryTabsView: View {
    @Binding var categories: [CategoryTabModel]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 12) {
                LazyHStack {
                    ForEach($categories, id: \.title) { category in
                        CategoryTab(categoryTabModel: category)
                            .onTapGesture {
                                if let selctedindex = categories.firstIndex(where: {$0.title == category.wrappedValue.title}) {
                                    if let unselctedindex  = categories.firstIndex(where: {$0.isSelected}) {
                                        categories[unselctedindex].isSelected = false
                                    }
                                    categories[selctedindex].isSelected = true
                                }
                                
                            }
                    }
                }
            }
        }
    }
    
}
