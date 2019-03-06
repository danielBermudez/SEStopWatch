//
//  StopWatch.swift
//  Stopwatch
//
//  Created by Daniel Bermudez on 3/5/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation
class Stopwatch{
    private var startTime : NSDate?
    
    var isRunning: Bool{
        return startTime != nil
    }
    
    var elapsedTime : TimeInterval{
        if let startTime = self.startTime {
            return -startTime.timeIntervalSinceNow
        } else {
            return 0
        }
    }
    
    var elapsedTimeasString: String{
        return String(format: "%02d:%02d.%d", Int(elapsedTime / 60),Int (elapsedTime.truncatingRemainder(dividingBy: 60) ),Int(elapsedTime * 10.truncatingRemainder(dividingBy: 10))
)
    }
    
    func start(){
        startTime = NSDate()
    }
    
    func stop(){
        startTime = nil
    }
}
