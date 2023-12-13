//
//  ContentView.swift
//  TrafficLight_SwiftUI
//
//  Created by Chorrs on 13.12.23.
//

import SwiftUI

struct ContentView: View {
   private let colorOff = 0.2
   private let colorOn = 1.0
    
    @State private var redLightOpacity = 0.2
    @State private var yellowLightOpacity = 0.2
    @State private var greenLightOpacity = 0.2
    
    @State private var buttonText = "Start"
    
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            
            VStack {
                TrafficLightView(color: .red).opacity(redLightOpacity)
                    .padding(.bottom, 18)
                TrafficLightView(color: .yellow).opacity(yellowLightOpacity)
                    .padding(.bottom, 18)
                TrafficLightView(color: .green).opacity(greenLightOpacity)
                
                Spacer()
                
             ButtonView(buttonText: buttonText, buttonAction: changeColor)
                
            }
            .padding()
        }
        .padding()
    }
}

extension ContentView {
    private func changeColor() {
        buttonText = "Next"
        
        if redLightOpacity == colorOn {
            redLightOpacity = colorOff
            yellowLightOpacity = colorOn
        } else if yellowLightOpacity == colorOn {
            yellowLightOpacity = colorOff
            greenLightOpacity = colorOn
        } else {
            greenLightOpacity = colorOff
            redLightOpacity = colorOn
        }
    }
}
//#Preview {
//    ContentView()
//}
