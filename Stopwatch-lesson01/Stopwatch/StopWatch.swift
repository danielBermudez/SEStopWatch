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
    
    var isRunning = Bool()
    var elapsedTime : TimeInterval{
        if let startTime = self.startTime{
            return -startTime.timeIntervalSinceNow
        }else {
            return 0
        }
        
    }
    func start(){
        startTime = NSDate()
        isRunning =  startTime != nil
        
    }
    func stop(){
        startTime = nil
        isRunning =  startTime != nil
    }
    func getIsRunning()-> Bool{
        return isRunning
        
    }
}
