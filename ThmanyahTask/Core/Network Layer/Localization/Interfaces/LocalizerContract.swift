//
//  LocalizerContract.swift
//

import Foundation
import SwiftUI


public protocol LocalizerContract {
    var locale: String { get set }
    var layoutDirection: LayoutDirection { get set }
    
    var arabic: String { get }
    var english: String { get }
    var terminatedAppLanguage: String { get }
    var isRTL: Bool { get }
    var deviceLanguage: String { get }
    var savedLanguage: String? { get }
    
    func setLanguage(_ code: Localizer.LanguageCode)
    func localeChanged()
    func currentAppleLanguage() -> String
    func getISOCode(for fullCountryName: String) -> String
    func changeLanguag()
}
