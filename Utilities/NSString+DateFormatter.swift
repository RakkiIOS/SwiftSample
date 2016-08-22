//
//  NSString+DateFormatter.swift
//  SwiftSample
//
//  Created by Pandyperumal on 8/9/16.
//  Copyright © 2016 BLT0003IMAC. All rights reserved.
//

import UIKit

class NSString_DateFormatter: NSString {
    
    func getUTCNowStringWithFormat(dateFormat:String) -> String {
        
        let date = NSDate()
        var utcDateTimeString = NSString()
        
        if let utcCalendar = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian) {
            if let utcTimeZone = NSTimeZone(abbreviation: "UTC") {
                
                utcCalendar.timeZone = utcTimeZone
                let ymdhmsUnitFlags: NSCalendarUnit = [NSCalendarUnit.Year , .Month ,.Day,.Hour , .Minute , .Second]
                let utcDateComponents = utcCalendar.components(ymdhmsUnitFlags, fromDate: date)
                
                // Create string of form "yyyy-mm-dd hh:mm:ss"
                utcDateTimeString = NSString(format: "%04u-%02u-%02u %02u:%02u:%02u",
                                             UInt(utcDateComponents.year),
                                             UInt(utcDateComponents.month),
                                             UInt(utcDateComponents.day),
                                             UInt(utcDateComponents.hour),
                                             UInt(utcDateComponents.minute),
                                             UInt(utcDateComponents.second))
            }
        }
        return utcDateTimeString as String
        
    }
    
}
