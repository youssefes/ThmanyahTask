//
//  ContentView.swift
//  ThmanyahTask
//
//  Created by Mader's Macbook Pro on 21/08/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(DesignSystem.Typography.Bold.h1)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
