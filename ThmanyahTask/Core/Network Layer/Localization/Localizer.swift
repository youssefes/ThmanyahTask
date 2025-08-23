//
//  Localizer.swift

import SwiftUI

public final class Localizer: ObservableObject, LocalizerContract {
    // MARK: - SINGLETON
    public static let shared = Localizer()
    // MARK: - PUBLISHERS
    @Published public var locale: String
    @Published public var layoutDirection: LayoutDirection

    // MARK: - COMPUTED PROPERTIES
    public var arabic: String {
        LanguageCode.arabic.rawValue
    }

    public var english: String {
        LanguageCode.english.rawValue
    }

    public var terminatedAppLanguage: String {
        UserDefaults.standard.string(forKey: Constants.UserDefault.terminationLanguages) ?? ""
    }

    public var isRTL: Bool {
        locale == arabic
    }

    public var deviceLanguage: String {
        guard let languageCode = Locale.preferredLanguages.first?.prefix(2) else {
            return english
        }
        return String(languageCode) == arabic ? arabic : english
    }

    public var savedLanguage: String? {
        UserDefaults.standard.string(forKey: Constants.UserDefault.chosenLanguageKey)
    }

    // MARK: - LANGUAGE ENUM
    public enum LanguageCode: String {
        case english = "en"
        case arabic = "ar"
    }

    private init() {
        if let languageCode = Locale.preferredLanguages.first?.prefix(2) {
            self.locale = String(languageCode)
            self.layoutDirection = (String(languageCode) == LanguageCode.arabic.rawValue) ? .rightToLeft : .leftToRight
            updateCachedLanguage(code: self.locale)
        } else {
            self.locale = LanguageCode.english.rawValue
            self.layoutDirection = .leftToRight
        }
        loadCurrentLanguage()
    }

    // MARK: - METHODS
    public func setLanguage(_ code: LanguageCode) {
        // Changing Locale value
        locale = code.rawValue
        // Saving language code to UserDefaults
        updateCachedLanguage(code: locale)
        // Updating LayoutDirection
        updateDirection()
    }

    // MARK: - PRIVATE METHODS
    public func loadCurrentLanguage() {
        locale = savedLanguage ?? deviceLanguage
        updateDirection()
    }

    private func updateDirection() {
        layoutDirection = isRTL ? .rightToLeft : .leftToRight
    }

    public func currentAppleLanguage() -> String {
        let userDefaultault = UserDefaults.standard
        let languageArray = userDefaultault.object(forKey: Constants.UserDefault.appleLanguages) as? NSArray
        let current = languageArray?.firstObject as? String
        return current?.contains("en") ?? false ? "en" : "ar"
    }

    public func localeChanged() {
        if !terminatedAppLanguage.isEmpty,
           terminatedAppLanguage != currentAppleLanguage() {
            locale = currentAppleLanguage()
            // Saving language code to UserDefaults
            updateCachedLanguage(code: locale)
            // Updating LayoutDirection
            updateDirection()
        }
    }

    public func updateCachedLanguage(code: String) {
        UserDefaults.standard.set(code, forKey: Constants.UserDefault.chosenLanguageKey)
        UserDefaults.standard.set([code], forKey: Constants.UserDefault.appleLanguages)
        UserDefaults.standard.synchronize()
    }

    public func getISOCode(for fullCountryName: String) -> String {
        let locales: String = ""
        for localeCode in NSLocale.isoCountryCodes {
            let identifier = NSLocale(localeIdentifier: localeCode)
            let countryName = identifier.displayName(forKey: NSLocale.Key.countryCode, value: localeCode)
            if fullCountryName.lowercased() == countryName?.lowercased() {
                return localeCode
            }
        }
        return locales
    }

    public func changeLanguag() {
        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else {
            return
        }
        if UIApplication.shared.canOpenURL(settingsUrl) {
            UIApplication.shared.open(settingsUrl, completionHandler: { _ in
                ///
            })
        }
    }
}
