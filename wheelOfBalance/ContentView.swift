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
                        .padding()

                    ScrollView {
                        entryView
                    }
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
                career: CGFloat((dictionary[items[0]]! as NSString).floatValue),
                spiritual: CGFloat((dictionary[items[1]]! as NSString).floatValue),
                environment: CGFloat((dictionary[items[2]]! as NSString).floatValue),
                social: CGFloat((dictionary[items[3]]! as NSString).floatValue),
                family: CGFloat((dictionary[items[4]]! as NSString).floatValue),
                health: CGFloat((dictionary[items[5]]! as NSString).floatValue),
                growth: CGFloat((dictionary[items[6]]! as NSString).floatValue),
                finance: CGFloat((dictionary[items[7]]! as NSString).floatValue))
            LabelsView()
        }
    }
    @State var input: [CGFloat] = Array(repeating: 0, count: 8)
    @State var results: [String] = Array(repeating: "0", count: 8)
    @State var itemsPicker: String = ""
    @State var number: String = "" {
        didSet {
            print(number)
        }
    }
    let items: [String] = ["Career: ", "Spiritual: ", "Environment: ", "Social: ", "Family: ", "Health: ", "Growth: ", "Finance: "]
    @State var dictionary: [String: String] = ["Career: ": "0", "Spiritual: ": "0", "Environment: ": "0", "Social: ": "0", "Family: ": "0", "Health: ": "0", "Growth: ": "0", "Finance: ": "0"]
    var entryView: some View {
        VStack {
            VStack {
                Picker("Input", selection: $itemsPicker) {
                    ForEach(items, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)
                .onChange(of: itemsPicker) { newValue in
                    number = dictionary[newValue] ?? "0"
                }

                Picker("Result", selection: $number) {
                    ForEach(0..<11, id: \.self) {
                        Text("\($0)").tag("\($0)")
                    }
                }
                .pickerStyle(.menu)
                .tint(.black)
                .onChange(of: number) { newValue in
                    dictionary[itemsPicker] = newValue
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
