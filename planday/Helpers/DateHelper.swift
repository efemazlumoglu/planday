//
//  DateHelper.swift
//  planday
//
//  Created by Efe Mazlumoğlu on 18.09.2021.
//

import Foundation

class DateHelper {
    
    static var instance = DateHelper()
    
    func getDate (date: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        let date = dateFormatter.date(from: date)!
        return date
    }
}
