//
//  AsyncImageView.swift
//  Copyright © 2025 youssef. All rights reserved.

import SwiftUI
import Kingfisher

public struct AsyncImageView: View {
    let url: URL?
    let placeholder: Image?
    let contentMode: SwiftUI.ContentMode

    public init(
        url: URL?,
        placeholder: Image? = nil,
        contentMode: SwiftUI.ContentMode = .fill
    ) {
        self.url = url
        self.placeholder = placeholder
        self.contentMode = contentMode
    }
    
    public var body: some View {
        ZStack(alignment: .center) {
            kingFisherImageView
        }
    }
    
    @MainActor var kingFisherImageView: some View {
        KFImage.url(url)
            .placeholder {
                ZStack(alignment: .center) {
                    if let placeholder = self.placeholder {
                        placeholder.resizable()
                    }
                }
            }
            .cacheOriginalImage()
            .fromMemoryCacheOrRefresh()
            .loadDiskFileSynchronously()
            .fade(duration: 0.2)
            .resizable()
            .onProgress { _, _ in
                // Intentionally unimplemented...
            }
            .onFailure { _ in
                if let placeholder = self.placeholder {
                    _ = placeholder.resizable()
                }
            }
            .aspectRatio(contentMode: contentMode)
    }
}
