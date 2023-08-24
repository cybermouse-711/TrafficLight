//
//  ContentView.swift
//  TrafficLight
//
//  Created by Елизавета Медведева on 22.08.2023.
//

import SwiftUI

enum StateOn {
    case off, red, yellow, green
}

struct ContentView: View {
    @State private var buttonTitle = "START"
    @State private var currentLight: StateOn = .off
    
    var body: some View {
        VStack{
            VStack {
                TrafficLightCircle(
                    color: .red,
                    opacity: currentLight == .red ? 1 : 0.5
                )
                TrafficLightCircle(
                    color: .yellow,
                    opacity: currentLight == .yellow ? 1 : 0.5
                )
                TrafficLightCircle(
                    color: .green,
                    opacity: currentLight == .green ? 1 : 0.5
                )
            }
            Spacer()
            
            StartButtonView(title: buttonTitle) {
                if buttonTitle == "START" {
                    buttonTitle = "NEXT"
                }
                nextColor()
            }
        }
        .padding()
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
