//
//  StopWatch.swift
//  Stopwatch
//
//  Created by Daniel Bermudez on 3/5/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation
class Stopwatch: CustomStringConvertible{
    var description: String {
        
        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = TimeZone(abbreviation: "CET")!
        let date = Date(timeIntervalSinceReferenceDate :elapsedTime)
        let dateComponents = calendar.dateComponents([.second, .minute, .nanosecond,], from: date)
        let minutes = dateComponents.minute!
        let seconds = dateComponents.second!
        let thenthsOfSecond = dateComponents.nanosecond!
        
        return String(format: "%02d:%02d.%d ", minutes,seconds,thenthsOfSecond)
    }
    
    private var startTime : NSDate?
    
    var isRunning: Bool {
        return startTime != nil
    }
    
    var elapsedTime : TimeInterval {
        if let startTime = self.startTime {
            return startTime.timeIntervalSinceNow
        } else {
            return 0
        }
        
    }
    
    func start(){
        startTime = NSDate()
    }
    
    func stop(){
        startTime = nil
    }
}
