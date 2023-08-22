//
//  ContentView.swift
//  TrafficLight
//
//  Created by Елизавета Медведева on 22.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var labelButton = "NEXT"
    
    var body: some View {
        VStack{
            VStack {
                TrafficLightCircle(color: .red)
                TrafficLightCircle(color: .yellow)
                TrafficLightCircle(color: .green)
            }
            
            Spacer()
            
            Button(action: {}) {
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
