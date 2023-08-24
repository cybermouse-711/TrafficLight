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
    
    @State private var redColorState = 0.5
    @State private var yellowColorState = 0.5
    @State private var greenColorState = 0.5
    
    @State private var labelButton = "START"
    
    var body: some View {
        VStack{
            VStack {
                TrafficLightCircle(color: .red, opassity: redColorState)
                TrafficLightCircle(color: .yellow, opassity: yellowColorState)
                TrafficLightCircle(color: .green, opassity: greenColorState)
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
        let offState = 0.5
        let onState = 1.0
        
        if labelButton == "START" {
            labelButton = "NEXT"
        }
        
        
        switch stateColor {
        case .red:
            greenColorState = offState
            redColorState = onState
            stateColor = .yellow
        case .yellow:
            redColorState = offState
            yellowColorState = onState
            stateColor = .green
        case .green:
            yellowColorState = offState
            greenColorState = onState
            stateColor = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
