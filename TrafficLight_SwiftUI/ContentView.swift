//
//  ContentView.swift
//  TrafficLight_SwiftUI
//
//  Created by Chorrs on 13.12.23.
//

import SwiftUI

enum CurrentLight {
    case off, red, yellow, green
}

struct ContentView: View {
    @State private var currentLight: CurrentLight = .off
    @State private var buttonText = "START"
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                TrafficLightView(color: .red, opacity: currentLight == .red ? 1 : 0.2 )
                    .padding(.bottom, 18)
                TrafficLightView(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.2 )
                    .padding(.bottom, 18)
                TrafficLightView(color: .green, opacity: currentLight == .green ? 1 : 0.2)
                
                Spacer()
                
                ButtonView(buttonText: buttonText) {
                    if buttonText == "START" {
                        buttonText = "NEXT"
                    }
                    nextColor()
                    
                }
            }
            .padding()
        }
    }
    
    
    private func nextColor() {
        switch currentLight {
        case .off: 
            currentLight = .red
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//#Preview {
//    ContentView()
//}
