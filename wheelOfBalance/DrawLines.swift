//
//  DrawLines.swift
//  wheelOfBalance
//
//  Created by Oleksii Mykhalchuk on 12/23/22.
//

import SwiftUI

struct DrawLines: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Path() { path in
                    path.move(to: CGPoint(
                        x: geometry.size.width/2,
                        y: geometry.size.height/2))
                    path.addLine(to: CGPoint(
                        x: geometry.size.width/2,
                        y: geometry.size.height/2 - 150))
                    path.move(to: CGPoint(
                        x: geometry.size.width/2,
                        y: geometry.size.height/2))
                    path.addLine(to: CGPoint(
                        x: geometry.size.width/2 - 150 / sqrt(2),
                        y: geometry.size.height/2 - 150 / sqrt(2)))
                    path.move(to: CGPoint(
                        x: geometry.size.width/2,
                        y: geometry.size.height/2))
                    path.addLine(to: CGPoint(
                        x: geometry.size.width/2 - 150,
                        y: geometry.size.height/2))
                    path.move(to: CGPoint(
                        x: geometry.size.width/2,
                        y: geometry.size.height/2))
                    path.addLine(to: CGPoint(
                        x: geometry.size.width/2 + 150 / sqrt(2),
                        y: geometry.size.height/2 + 150 / sqrt(2)))
                    path.move(to: CGPoint(
                        x: geometry.size.width/2,
                        y: geometry.size.height/2))
                    path.addLine(to: CGPoint(
                        x: geometry.size.width/2 + 150,
                        y: geometry.size.height/2))
                    path.move(to: CGPoint(
                        x: geometry.size.width/2,
                        y: geometry.size.height/2))
                    path.addLine(to: CGPoint(
                        x: geometry.size.width/2 - 150 / sqrt(2),
                        y: geometry.size.height/2 + 150 / sqrt(2)))
                    path.move(to: CGPoint(
                        x: geometry.size.width/2,
                        y: geometry.size.height/2))
                    path.addLine(to: CGPoint(
                        x: geometry.size.width/2 + 150 / sqrt(2),
                        y: geometry.size.height/2 - 150 / sqrt(2)))
                    path.move(to: CGPoint(
                        x: geometry.size.width/2,
                        y: geometry.size.height/2))
                    path.addLine(to: CGPoint(
                        x: geometry.size.width/2,
                        y: geometry.size.height/2 + 150))
                }
                .stroke(lineWidth: 3)
            }
        }
    }
}

struct DrawLines_Previews: PreviewProvider {
    static var previews: some View {
        DrawLines()
    }
}
