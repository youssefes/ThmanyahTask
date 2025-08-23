//
//  SectionHeader.swift
//  ThmanyahTask
//
//  Created by youssef on 22/08/2025.
//

import SwiftUI

struct SectionHeader: View {
    let title: String
    var seeMoreAction: (()->Void)
    var actionTitle: String = ""
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.white)
                .font(DesignSystem.Typography.Bold.title)
            Spacer()
            Button {
                seeMoreAction()
            } label: {
                HStack(spacing: 6){
                    Text(actionTitle)
                        .font(DesignSystem.Typography.Regular.body)
                        .foregroundStyle(.white)
                    if actionTitle.isEmpty {
                        Image("chevron.forward")
                            .foregroundStyle(.white)
                            .font(DesignSystem.Typography.Bold.body)
                    }
                }
            }
        }
    }
}
