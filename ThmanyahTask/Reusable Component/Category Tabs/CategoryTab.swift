//
//  CategoryTab.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//

import SwiftUI

struct CategoryTabModel: Hashable {
    let title: String
    var isSelected: Bool = false
}

// MARK: - CapsuleTab
struct CategoryTab: View {
    @Binding var categoryTabModel: CategoryTabModel
    var body: some View {
        Text(categoryTabModel.title)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            .background(categoryTabModel.isSelected ? Color.red : Color.gray.opacity(0.3))
            .foregroundColor(categoryTabModel.isSelected ? .white : .white)
            .cornerRadius(20)
    }
}
