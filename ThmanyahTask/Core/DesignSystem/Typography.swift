//
//  typography.swift
//  Copyright © 2025 youssef. All rights reserved.

import SwiftUI

extension DesignSystem {
    enum Typography {
        enum Bold {
            static var caption1 = make(.bold, .caption1)
            static var caption2 = make(.bold, .caption2)
            static var caption3 = make(.bold, .caption3)
            static var body = make(.bold, .body)
            static var subtitle = make(.bold, .subtitle)
            static var title = make(.bold, .title)
            static var h3 =  make(.bold, .h3)
            static var h2 =  make(.bold, .h2)
            static var h1 =  make(.bold, .h1)
        }
        
        enum SemiBold {
            static var caption1 = make(.semiBold, .caption1)
            static var caption2 = make(.semiBold, .caption2)
            static var caption3 = make(.semiBold, .caption3)
            static var body = make(.semiBold, .body)
            static var subtitle = make(.semiBold, .subtitle)
            static var title = make(.semiBold, .title)
            static var h3 =  make(.semiBold, .h3)
            static var h2 =  make(.semiBold, .h2)
            static var h1 =  make(.semiBold, .h1)
        }
        
        enum Regular {
            static var caption1 = make(.regular, .caption1)
            static var caption2 = make(.regular, .caption2)
            static var caption3 = make(.regular, .caption3)
            static var body = make(.regular, .body)
            static var subtitle = make(.regular, .subtitle)
            static var title = make(.regular, .title)
            static var h3 =  make(.regular, .h3)
            static var h2 =  make(.regular, .h2)
            static var h1 =  make(.regular, .h1)
        }
        
        enum Medium {
            static var caption3 = make(.medium, .caption3)
            static var caption1 = make(.medium, .caption1)
            static var caption2 = make(.medium, .caption2)
            static var body = make(.medium, .body)
            static var subtitle = make(.medium, .subtitle)
            static var title = make(.medium, .title)
            static var h3 =  make(.medium, .h3)
            static var h2 =  make(.medium, .h2)
            static var h1 =  make(.medium, .h1)
        }
        
        enum ExtraLight {
            static var caption3 = make(.extraLight, .caption3)
            static var caption1 = make(.extraLight, .caption1)
            static var caption2 = make(.extraLight, .caption2)
            static var body = make(.extraLight, .body)
            static var subtitle = make(.extraLight, .subtitle)
            static var title = make(.extraLight, .title)
            static var h3 =  make(.extraLight, .h3)
            static var h2 =  make(.extraLight, .h2)
            static var h1 =  make(.extraLight, .h1)
        }
        
        enum Light {
            static var caption3 = make(.light, .caption3)
            static var caption1 = make(.light, .caption1)
            static var caption2 = make(.light, .caption2)
            static var body = make(.light, .body)
            static var subtitle = make(.light, .subtitle)
            static var title = make(.light, .title)
            static var h3 =  make(.light, .h3)
            static var h2 =  make(.light, .h2)
            static var h1 =  make(.light, .h1)
        }
        
        // Shared factory
        fileprivate static func make(_ weight: FontWeight, _ size: FontSize) -> Font{
            return .custom("IBMPlexSansArabic-\(weight.rawValue)", size: size.value)
        }
    }
}

fileprivate enum FontWeight: String {
    case bold, semiBold, regular , extraLight, medium, light
}

fileprivate enum FontSize {
    case h1, h2, h3, title, subtitle, body, caption1, caption2, caption3
    
    var value: CGFloat {
        switch self {
        case .caption3: return 10
        case .caption2: return 12
        case .caption1: return 13
        case .body: return 14
        case .subtitle: return 16
        case .title: return 18
        case .h3: return 20
        case .h2: return 24
        case .h1: return 30
        }
    }
}
