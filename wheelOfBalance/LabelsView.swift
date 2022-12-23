//
//  LabelsView.swift
//  wheelOfBalance
//
//  Created by Oleksii Mykhalchuk on 12/23/22.
//

import SwiftUI

struct LabelsView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Text("Career")
                    .position(CGPoint(x: geometry.size.width/2,
                                      y: geometry.size.height/2 - 160))
                Text("Spiritual")
                    .rotationEffect(Angle(degrees: -45))
                    .position(CGPoint(x: geometry.size.width/2 - 160 / sqrt(2),
                                      y: geometry.size.height/2 - 160 / sqrt(2)))

                Text("Environment")
                    .rotationEffect(Angle(degrees: -90))
                    .position(CGPoint(x: geometry.size.width/2 - 160,
                                      y: geometry.size.height/2))
                Text("Social")
                    .rotationEffect(Angle(degrees: 45))
                    .position(CGPoint(x: geometry.size.width/2 - 160 / sqrt(2),
                                      y: geometry.size.height/2 + 160 / sqrt(2)))
                Text("Family")
                    .position(CGPoint(x: geometry.size.width/2,
                                      y: geometry.size.height/2 + 160))
                Text("Finance")
                    .rotationEffect(Angle(degrees: 45))
                    .position(CGPoint(x: geometry.size.width/2 + 160 / sqrt(2),
                                      y: geometry.size.height/2 - 160 / sqrt(2)))
                Text("Growth")
                    .rotationEffect(Angle(degrees: 90))
                    .position(CGPoint(x: geometry.size.width/2 + 160,
                                      y: geometry.size.height/2))
                Text("Health")
                    .rotationEffect(Angle(degrees: -45))
                    .position(CGPoint(x: geometry.size.width/2 + 160 / sqrt(2),
                                      y: geometry.size.height/2 + 160 / sqrt(2)))
            }
        }
    }
}

struct LabelsView_Previews: PreviewProvider {
    static var previews: some View {
        LabelsView()
    }
}
