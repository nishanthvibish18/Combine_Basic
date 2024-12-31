//
//  DeviceOrientationNotificationPublisherApp.swift
//  DeviceOrientationNotificationPublisher
//
//  Created by Nishanth on 28/08/24.
//

import SwiftUI
import Combine

@main
struct DeviceOrientationNotificationPublisherApp: App {
    private var anyCancellable: Set<AnyCancellable> = []
    
    init(){
        NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification).sink { _ in
            let currentOrientation = UIDevice.current.orientation
            print("current device orientation::: \(currentOrientation)")
        }.store(in: &anyCancellable)
        
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
