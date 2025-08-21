//
//  CoordinatorDestination.swift
//  Copyright © 2025 youssef. All rights reserved.

import Foundation
import SwiftUI

extension View {
    func CoordinatorDestination() -> some View {
        self.navigationDestination(for: AppScreens.self) { Screen in
            switch Screen {
            case .home:
                Text("Home")
            }
        }
    }
}
