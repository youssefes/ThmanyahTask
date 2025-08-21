//  ShowProgressView.swift
//  Copyright © 2025 youssef. All rights reserved.

import SwiftUI

struct ShowProgressView: View {
    var body: some View {
        ZStack {
            Color.black
                .opacity(0.75)
                .ignoresSafeArea()
        }
        VStack{
            Spacer()
            ProgressView()
                .progressViewStyle(.circular)
                .tint(.white)
                .scaleEffect(1)
            Spacer()
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
