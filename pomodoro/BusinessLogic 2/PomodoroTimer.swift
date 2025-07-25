//
//  PomodoroTimer.swift
//  pomodoro
//
//  Created by Luma on 24/07/25.
//

import Foundation

enum PomodoroTimerState: String {
    case idle
    case running
    case paused
}

enum PomodoroTimerMode: String {
    case work
    case pause
}

class PomodoroTimer {
    private var _mode: PomodoroTimerMode = .work
    private var _state: PomodoroTimerState = .idle
    
    private var _durationWork: TimeInterval
    private var _durationBreak: TimeInterval
    
    private var _secondsPassed: Int = 0
    private var _fractionPassed: Double = 0
    private var _dateStarted: Date = Date.now
    private var _secondsPassedBeforePause: Int = 0
    private var _timer: Timer?

    init(workInSeconds: TimeInterval, breakInSeconds: TimeInterval){
        _durationWork = workInSeconds
        _durationBreak = breakInSeconds
    }
    
    func start(){
        _dateStarted = Date.now
        _secondsPassed = 0
        _fractionPassed = 0
        _state = .running
    }
    
    func resume() {
        _dateStarted = Date.now
    }
    
    func pause() {
        _secondsPassedBeforePause = _secondsPassed
        _state = .paused
    }
    
    func reset(){
        _secondsPassed = 0
        _fractionPassed = 0
        _secondsPassedBeforePause = 0
        _state = .idle
        
    }
    
    func skip(){
        if self._mode == .work {
            self._mode = .pause
        }else{
            self._mode = .work
        }
    }
    
}
