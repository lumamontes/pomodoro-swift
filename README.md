# Pomodoro Swift

![Pomodoro notification demo](assets/app-preview.png)

A SwiftUI iOS app exploring the building blocks of a Pomodoro timer: timer state, local notifications, and audio cues.

> The current app entry point presents a notification demo. The timer model and audio helpers are included as reusable project code while the product UI is still being developed.

## Features

- SwiftUI application shell for iPhone and iPad
- Work and break modes represented by `PomodoroTimerMode`
- Idle, running, and paused timer states
- Local notification authorization and scheduling
- Bundled `tick.wav` and `bell.wav` audio resources
- Unit-test and UI-test targets included in the Xcode project

## Tech Stack

- Swift 5
- SwiftUI
- UserNotifications
- AVFoundation
- Xcode 16.3
- iOS 18.4 deployment target

## Requirements

- macOS with Xcode 16.3 or a compatible newer Xcode release
- An iOS 18.4 simulator or device

## Run Locally

1. Open `pomodoro.xcodeproj` in Xcode.
2. Select the `pomodoro` scheme.
3. Choose an iOS 18.4 simulator or connected device.
4. Run the app with `Cmd + R`.

To build from the command line:

```sh
xcodebuild \
  -project pomodoro.xcodeproj \
  -scheme pomodoro \
  -sdk iphonesimulator \
  -destination 'platform=iOS Simulator,name=iPhone 16 Pro,OS=18.4' \
  CODE_SIGNING_ALLOWED=NO \
  build
```

To run the test targets:

```sh
xcodebuild \
  -project pomodoro.xcodeproj \
  -scheme pomodoro \
  -destination 'platform=iOS Simulator,name=iPhone 16 Pro,OS=18.4' \
  CODE_SIGNING_ALLOWED=NO \
  test
```

## Project Structure

```text
pomodoro/
├── BusinessLogic 2/
│   ├── PomodoroAudio.swift
│   ├── PomodoroNotification.swift
│   └── PomodoroTimer.swift
├── Views/Demos/
│   ├── AudioPlayerDemo.swift
│   └── Notificationdemo.swift
├── ContentView.swift
└── pomodoroApp.swift
Sounds/
├── bell.wav
└── tick.wav
```

`PomodoroTimer` contains the timer state model. `PomodoroNotification` handles notification permissions and scheduling, and `PomodoroAudio` plays the bundled sounds.

## License

No license file is currently included in this repository.
