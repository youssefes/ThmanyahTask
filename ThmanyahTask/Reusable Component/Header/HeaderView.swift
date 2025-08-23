//
//  HeaderView.swift
//  ThmanyahTask
//
//  Created by youssef on 22/08/2025.

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .symbolRenderingMode(.multicolor)
                .foregroundStyle(.green)
            
            Text("Good Evening, Abdelrahman")
                .foregroundColor(.white)
                .font(DesignSystem.Typography.Medium.title)
            
            Spacer()
            
            ZStack(alignment: .center) {
                Image(systemName: "bell")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 20, height: 24)
                
                Text("4")
                    .padding(.horizontal, 4)
                    .background(.red)
                    .cornerRadius(16)
                    .foregroundColor(.white)
                    .padding(.bottom)
                    .padding(.trailing)
                    .font(DesignSystem.Typography.Light.caption3)
            }
            
           
        }
    }
}

#Preview(body: {
    HeaderView()
})
