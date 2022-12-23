//
//  ContentView.swift
//  wheelOfBalance
//
//  Created by Oleksii Mykhalchuk on 12/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                DrawShapes()
                CircleShape(width: 300)
                DrawLines()
                DrawWheel(
                    width: 150,
                    career: 9,
                    spiritual: 8,
                    environment: 7,
                    social: 6,
                    family: 5,
                    health: 4,
                    growth: 3,
                    finance: 2)
            }
            .navigationTitle("Wheel of Balance")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
