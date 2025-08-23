//
//  Extensions+String.swift
//  ThmanyahTask
//
//  Created by youssef on 21/08/2025.
//
import Foundation
import SwiftUICore

enum DateFormate: String {
    case yearMonthDay = "yyyy-MM-dd HH:mm:ss"
    case yearMonthMinutes = "yyyy-MM-dd'T'HH:mm:ss.SSS"
    case dayMonthYear = "dd MMMM yyyy"
    case dayMonthYearWihoutHour = "dd-MM-yyyy"
    case dayMonth = "dd MMM"
    case hourMinute = "hh:mm a"
    case nameDayMonthYear = "E, dd MMMM yyyy"
    case yearMonthDayWithoutHour = "yyyy-MM-dd"
    case day = "E"
    case year = "yyyy"
    case month = "MMMM"
    case yearMonthMinutesWithZ = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
    case dayMonthMinutesWithZ = "E MMM dd HH:mm:ss zzz yyyy"
    case dayMonYear =  "dd MMM,yyyy"
    case yearMonthDayHourMinuteZ = "yyyy-MM-dd HH:mmX" // "X" handles the "Z" (UTC)
//    case YearMonday = "yyyy MMM dd"
}

// MARK: - Localization
extension String {
    /**
     Localized version of the string.
     
     - Returns: A localized string.
     */
    var localized: String {
        NSLocalizedString(self, comment: "")
    }
    
    /**
     Converts the string to a `Text` object with localization applied.
     
     - Returns: A `Text` object that represents the localized string.
     */
    var text: Text {
        return Text(self.localized)
    }
    
    /**
     Formats the string with localization and a single argument.
     
     - Parameters:
        - argument: A `CVarArg` to be inserted into the formatted string.
     - Returns: A formatted localized string.
     */
    func localizedFormat(using argument: CVarArg) -> String {
        String(format: self.localized, argument)
    }
    
    /**
     Formats the string with localization and multiple arguments.
     
     - Parameters:
        - arguments: An array of `CVarArg` to be inserted into the formatted string.
     - Returns: A formatted localized string.
     */
    func localizedFormat(using arguments: [CVarArg]) -> String {
        String(format: self.localized, arguments: arguments)
    }
    
    func toDate(format: DateFormate) -> Date? {
        let dateFormatter = DateFormatter()
       // dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        dateFormatter.dateFormat = format.rawValue
        dateFormatter.locale = Locale.init(identifier: "en_US")
        let date = dateFormatter.date(from: self)
        return date
    }
}

