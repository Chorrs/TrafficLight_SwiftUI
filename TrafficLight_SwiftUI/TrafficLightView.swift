//
//  TrafficLightsSettings.swift
//  TrafficLight_SwiftUI
//
//  Created by Chorrs on 13.12.23.
//

import SwiftUI

struct TrafficLightView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
            Circle()
                .foregroundStyle(color)
                .frame(width: 150)
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .opacity(opacity)
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(color: .red, opacity: 1)
    }
}


//#Preview {
//    TrafficLightsSettings()
//}
