//
//  ContentView.swift
//  DeviceOrientationNotificationPublisher
//
//  Created by Nishanth on 28/08/24.
//

import SwiftUI
import Combine

class ContentViewModel: ObservableObject{
    @Published var timerNumber: Int = 0
    var anyCancellable: AnyCancellable?
    init(){
        
        let publisherTimer = Timer.publish(every: 1.0, on: .main, in: .default).autoconnect()
        anyCancellable = publisherTimer.sink(receiveValue: { [self] _ in
            timerNumber += 1
        })
        
    
        
    }
}

struct ContentView: View {
    @StateObject private var contentVM = ContentViewModel()
    var body: some View {
        VStack {
            
            Text("Timer: \(contentVM.timerNumber)")
        }
//        MARK: After 10 seconds later cancelling the timer by this method
//        .onAppear(perform: {
//            DispatchQueue.main.asyncAfter(deadline: .now() + 10){
//                contentVM.anyCancellable?.cancel()
//            }
//        })
        .padding()
    }
}

#Preview {
    ContentView()
}
