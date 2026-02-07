//
//  Date+Ext.swift
//  Zaimer
//
//  Created by Никитин Артем on 7.02.26.
//

import Foundation
extension Date {
    static let dayMonthFormatter:
    DateFormatter = {
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat = "d MMMM YYYY"
        
        return formatter
        //var dayMonthear: s
    }()
}
