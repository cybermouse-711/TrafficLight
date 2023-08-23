//
//  ContentView.swift
//  TrafficLight
//
//  Created by Елизавета Медведева on 22.08.2023.
//

import SwiftUI

enum StateColor {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var stateColor = StateColor.red
    @State private var redColor = TrafficLightCircle(color: .red)
    @State private var yellowColor = TrafficLightCircle(color: .yellow)
    @State private var greenColor = TrafficLightCircle(color: .green)
    
    @State private var labelButton = "START"
    
    var body: some View {
        VStack{
            VStack {
                redColor
                yellowColor
                greenColor
            }
            
            Spacer()
            
            Button(action: changedColor) {
                Text("\(labelButton)")
                    .font(.title)
                    .foregroundColor(.white)
            }
            .frame(width: 150, height: 50)
            .background(Color.gray)
            .clipShape(Capsule())
            .overlay(Capsule().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 10)
        }
        .padding(EdgeInsets(top: 40, leading: 0, bottom: 40, trailing: 0))
    }

    private func changedColor() {
        if labelButton == "START" {
            labelButton = "NEXT"
        }
        
        switch stateColor {
        case .red:
            greenColor.color = .green
            redColor.color = .gray
            stateColor = .yellow
        case .yellow:
            redColor.color = .red
            yellowColor.color = .gray
            stateColor = .green
        case .green:
            yellowColor.color = .yellow
            greenColor.color = .gray
            stateColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
