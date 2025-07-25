//
//  Notificationdemo.swift
//  pomodoro
//
//  Created by Luma on 24/07/25.
//

import SwiftUI

struct Notificationdemo: View {
    @State private var showWarning = false
    @Environment(\.scenePhase) var scenePhase
    var body: some View {
        VStack{
            Button("send not") {
                PomodoroNotification.scheduleNotification(seconds: 5, title: "Title", body: "Body")
            }
            
            if showWarning {
                VStack {
                    Text("Notifications are disabled")
                    Button("Enable"){
                        DispatchQueue.main.async {
                            UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!, options: [:],
                                completionHandler: nil
                            )
                        }
                    }
                }
            }
        }
        .onChange(of: scenePhase) {
            if(scenePhase == .active){
                PomodoroNotification.checkAuthorization {
                        authorized in showWarning = !authorized
                    }
                }
            }
        }
}

#Preview {
    Notificationdemo()
}
