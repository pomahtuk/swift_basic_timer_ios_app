//
//  TimerResult.swift
//  navigation bar
//
//  Created by Lovriakov, Ilya on 01/07/16.
//  Copyright © 2016 Lovriakov, Ilya. All rights reserved.
//

import Foundation

class TimerResult {
    private var _seconds: Int = 0
    private var _minutes: Int = 0
    private var _hours: Int = 0
    
    var seconds: Int {
        set(newValue) {
            if newValue >= 60 {
                self._seconds = newValue - 60
                self.minutes += 1
            } else {
                self._seconds = newValue
            }
        }
        get { return self._seconds }
    }
    
    var minutes: Int {
        set(newValue) {
            if newValue >= 60 {
                self._minutes = newValue - 60
                hours += 1
            } else {
                self._minutes = newValue
            }
        }
        get { return self._minutes }
    }
    
    var hours = 0
    
    init(seconds sec: Int = 0, minutes min: Int = 0, hours hr: Int = 0) {
        _seconds = sec
        _minutes = min
        _hours = hr
    }
    
    func tick() {
        seconds += 1
    }
    
    func textRepresentation() -> String {
        var hoursText = String(_hours)
        var minutesText = String(_minutes)
        var secondsText = String(_seconds)
        
        if hoursText.characters.count == 1 {
            hoursText = "0" + hoursText
        }
        
        if minutesText.characters.count == 1 {
            minutesText = "0" + minutesText
        }
        
        if secondsText.characters.count == 1 {
            secondsText = "0" + secondsText
        }
        
        return "\(hoursText):\(minutesText):\(secondsText)"
    }
}
