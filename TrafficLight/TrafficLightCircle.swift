//
//  TrafficLightCircle.swift
//  TrafficLight
//
//  Created by Елизавета Медведева on 22.08.2023.
//

import SwiftUI

struct TrafficLightCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 150)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.black, lineWidth: 4))
    }
}

struct TrafficLightCircle_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightCircle(color: .gray, opacity: 1)
    }
}

