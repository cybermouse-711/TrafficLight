//
//  TrafficLightCircle.swift
//  TrafficLight
//
//  Created by Елизавета Медведева on 22.08.2023.
//

import SwiftUI

struct TrafficLightCircle: View {
    var color: Color
    var opassity: Double
    
    var body: some View {
        Circle()
            .frame(width: 120)
            .foregroundColor(color)
            .opacity(opassity)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 10)
    }
}

struct TrafficLightCircle_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightCircle(color: .gray, opassity: 0.5)
    }
}
