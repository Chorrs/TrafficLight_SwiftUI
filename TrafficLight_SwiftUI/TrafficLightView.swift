//
//  TrafficLightsSettings.swift
//  TrafficLight_SwiftUI
//
//  Created by Chorrs on 13.12.23.
//

import SwiftUI

struct TrafficLightView: View {
    let color: Color
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 150, height: 150)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 20)
        }
    }
}


//#Preview {
//    TrafficLightsSettings()
//}
