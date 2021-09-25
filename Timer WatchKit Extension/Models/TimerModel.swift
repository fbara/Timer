//
//  TimerModel.swift
//  Timer WatchKit Extension
//
//  Created by Frank Bara on 9/25/21.
//
// Combination Model and ViewModel (because the project is small).

import Foundation

struct TimerModel {
    var time: Int
    var timeTitle: String {
        return "\(time)"
    }
    
    var unit: timerUnit
    var unitTitle: String {
        if time > 1 { return unit.plural() }
        return unit.rawValue
    }
    
    init(time: Int, unit: timerUnit) {
        if time >= 60 {
            self.time = time / 60
            self.unit = .hr
        } else {
            self.time = time
            self.unit = unit
        }
    }
    
    static func allTimerValues() -> [TimerModel] {
        return [
            TimerModel(time: 1, unit: .min),
            TimerModel(time: 3, unit: .min),
            TimerModel(time: 5, unit: .min),
            TimerModel(time: 10, unit: .min),
            TimerModel(time: 15, unit: .min),
            TimerModel(time: 30, unit: .min),
            TimerModel(time: 1, unit: .hr),
            TimerModel(time: 2, unit: .hr)
        ]
    }
    
    
    enum timerUnit: String {
        case min = "MIN"
        case hr = "HR"
        
        func plural() -> String {
            switch self {
            case .min:
                return "MINS"
            case .hr:
                return "HRS"
            }
        }
    }
}
