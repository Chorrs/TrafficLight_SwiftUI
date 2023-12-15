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
        Button(action: buttonAction) {
            Text(buttonText)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color(.blue))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/)
                .stroke(Color.white, lineWidth: 4)
        )
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonText: "START") {
            
        }
    }
}
//#Preview {
//    ButtonSettings()
//}
