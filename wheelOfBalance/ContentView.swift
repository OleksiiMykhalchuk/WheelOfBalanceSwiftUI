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
            VStack {

                wheelView

                entryView
                Spacer()
            }
            .navigationTitle("Wheel of Balance")
            .background(.mint)
        }
    }

    var wheelView: some View {
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
            LabelsView()
        }
    }
    @State var input: String = ""
    var entryView: some View {
        VStack {
            Text("Career: ")
            TextField(text: $input) {
                Text("Career")
            }
            Text("Spiritual: ")
            Text("Environment: ")
            Text("Social: ")
            Text("Family: ")
            Text("Health: ")
            Text("Growth: ")
            Text("Finance: ")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
