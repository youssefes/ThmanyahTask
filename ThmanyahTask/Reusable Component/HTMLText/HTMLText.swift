//
//  HTMLText.swift
//  ThmanyahTask
//
//  Created by youssef on 23/08/2025.
//
import SwiftUI
import UIKit

struct HTMLText: View {
    let html: String

    var body: some View {
        if let attr = attributedString(from: html) {
            Text(attr) // renders links, bold/italic, lists, etc.
        } else {
            Text(html) // fallback
        }
    }
}

fileprivate func attributedString(from html: String) -> AttributedString? {
    guard let data = html.data(using: .utf8) else { return nil }
    do {
        let ns = try NSMutableAttributedString(
            data: data,
            options: [
                .documentType: NSAttributedString.DocumentType.html,
                .characterEncoding: String.Encoding.utf8.rawValue
            ],
            documentAttributes: nil
        )
        
        // Remove inline colors
        ns.enumerateAttribute(.foregroundColor, in: NSRange(location: 0, length: ns.length)) { _, range, _ in
            ns.removeAttribute(.foregroundColor, range: range)
        }
        
        return AttributedString(ns)
    } catch {
        print("HTML parse error:", error)
        return nil
    }
}
