//
//  Data+Extensions.swift

import Foundation
extension Date {
    func equal(to date: Date) -> Bool {
        Calendar.current.compare(self, to: date, toGranularity: .day) == ComparisonResult.orderedSame && Calendar.current.compare(self, to: date, toGranularity: .month) == ComparisonResult.orderedSame && Calendar.current.compare(self, to: date, toGranularity: .year) == ComparisonResult.orderedSame
    }
    
    func toString(format: DateFormate) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.medium
        dateFormatter.dateFormat = format.rawValue
        dateFormatter.timeZone = .current
        dateFormatter.locale = .init(identifier: Localizer.shared.deviceLanguage)
        return dateFormatter.string(from: self)
    }
    
    func toEnglishString(format: DateFormate) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = DateFormatter.Style.medium
        dateFormatter.dateFormat = format.rawValue
        dateFormatter.timeZone = .current
        dateFormatter.locale = .init(identifier: "en_US_POSIX")
        return dateFormatter.string(from: self)
    }

    func timeAgo() -> String {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .full
        formatter.allowedUnits = [.year, .month, .day, .hour, .minute, .second]
        formatter.zeroFormattingBehavior = .dropAll
        formatter.maximumUnitCount = 1
        let locale = Locale.init(identifier: Localizer.shared.deviceLanguage)
        return String(format: formatter.string(from: self, to: Date()) ?? "", locale: locale)
    }
    func getNextDay(date : Date) -> Date?{
        return Calendar.current.date(byAdding: .day, value: 1, to: date)
    }
    
    func getPreviousDay(date : Date) -> Date?{
        return Calendar.current.date(byAdding: .day, value: -1, to: date)
    }

    func timeRemaining() -> (days: Int, hours: Int, minutes: Int, seconds: Int)? {
        let now = Date()
        guard self < now else { return nil } // Target date already passed
        
        let components = Calendar.current.dateComponents([.day, .hour, .minute, .second], from: now, to: self)
        
        return (
            days: components.day ?? 0,
            hours: components.hour ?? 0,
            minutes: components.minute ?? 0,
            seconds: components.second ?? 0
        )
    }
}
