//
//  ButtonSettings.swift
//  TrafficLight_SwiftUI
//
//  Created by Chorrs on 13.12.23.
//

import SwiftUI

struct ButtonView: View {
    var buttonText: String
    var buttonAction: () -> Void
    
    var body: some View {
        Button(buttonText, action: buttonAction)
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

//#Preview {
//    ButtonSettings()
//}
