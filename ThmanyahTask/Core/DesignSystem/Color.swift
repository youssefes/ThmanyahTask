//
//  Coler.swift
//  Copyright © 2025 youssef. All rights reserved.

import Foundation
import SwiftUI

extension DesignSystem {
    enum Colors {
        static let itemBackground = Color(hex: "#16171F")
        static let subitemBackground = Color(hex: "#101117")
    }
}

// MARK: - Hex Initializer
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)

        let a, r, g, b: UInt64
        switch hex.count {
        case 8: // ARGB
            (a, r, g, b) = ((int & 0xFF000000) >> 24,
                             (int & 0x00FF0000) >> 16,
                             (int & 0x0000FF00) >> 8,
                             (int & 0x000000FF))
        case 6: // RGB
            (a, r, g, b) = (255,
                             (int & 0xFF0000) >> 16,
                             (int & 0x00FF00) >> 8,
                             (int & 0x0000FF))
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }

        self.init(.sRGB,
                  red: Double(r) / 255,
                  green: Double(g) / 255,
                  blue: Double(b) / 255,
                  opacity: Double(a) / 255)
    }
}
