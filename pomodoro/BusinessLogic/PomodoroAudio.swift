//
//  PomodoroAudio.swift
//  pomodoro
//
//  Created by Luma on 23/07/25.
//


import Foundation
import AVFoundation

enum PomodoroAudioSounds {
    case done
    case ticket
    
    var resource: String {
        switch self {
            case.done:
                return "bell.wav"
            case .tick
                return "tick.wav"
        }
    }
}

class PomodoroAudio {
    private var audioPlayer: AVAudioPlayer?
    
    func play(_ sound: PomodoroAudioSounds){
        let path = Bundle.main.path(forResource: sound.resource, ofType: nil)!
        let url = URL(filePath: path)
        do {
            _audioPlayer = try AVAudioPlayer(contentsOf: <#T##URL#>)
            _audioPlayer?.play()
        }catch{
            print(error.localizedDescription)
        }
    }
}
w
