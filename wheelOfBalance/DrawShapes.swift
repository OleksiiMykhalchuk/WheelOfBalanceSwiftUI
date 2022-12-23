//
//  DrawShapes.swift
//  wheelOfBalance
//
//  Created by Oleksii Mykhalchuk on 12/23/22.
//

import SwiftUI

struct DrawShapes: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Path() { path in
                    path.move(to: CGPoint(x: geometry.size.width/2, y: geometry.size.height/2))
                    path.addArc(
                        center: CGPoint(x: geometry.size.width/2,
                                        y: geometry.size.height/2),
                        radius: 150,
                        startAngle: Angle(degrees: 0.0),
                        endAngle: Angle(degrees: 315), clockwise: true)
                }
                .fill(.green)
                Path() { path in
                    path.move(to: CGPoint(x: geometry.size.width/2, y: geometry.size.height/2))
                    path.addArc(
                        center: CGPoint(x: geometry.size.width/2,
                                        y: geometry.size.height/2),
                        radius: 150,
                        startAngle: Angle(degrees: 315),
                        endAngle: Angle(degrees: 270), clockwise: true)
                }
                .fill(.red)
                Path() { path in
                    path.move(to: CGPoint(x: geometry.size.width/2, y: geometry.size.height/2))
                    path.addArc(
                        center: CGPoint(x: geometry.size.width/2,
                                        y: geometry.size.height/2),
                        radius: 150,
                        startAngle: Angle(degrees: 270),
                        endAngle: Angle(degrees: 225), clockwise: true)
                }
                .fill(.blue)
                Path() { path in
                    path.move(to: CGPoint(x: geometry.size.width/2, y: geometry.size.height/2))
                    path.addArc(
                        center: CGPoint(x: geometry.size.width/2,
                                        y: geometry.size.height/2),
                        radius: 150,
                        startAngle: Angle(degrees: 225),
                        endAngle: Angle(degrees: 180), clockwise: true)
                }
                .fill(.yellow)
                Path() { path in
                    path.move(to: CGPoint(x: geometry.size.width/2, y: geometry.size.height/2))
                    path.addArc(
                        center: CGPoint(x: geometry.size.width/2,
                                        y: geometry.size.height/2),
                        radius: 150,
                        startAngle: Angle(degrees: 180),
                        endAngle: Angle(degrees: 135), clockwise: true)
                }
                .fill(.cyan)
                Path() { path in
                    path.move(to: CGPoint(x: geometry.size.width/2, y: geometry.size.height/2))
                    path.addArc(
                        center: CGPoint(x: geometry.size.width/2,
                                        y: geometry.size.height/2),
                        radius: 150,
                        startAngle: Angle(degrees: 135),
                        endAngle: Angle(degrees: 90), clockwise: true)
                }
                .fill(.orange)
                Path() { path in
                    path.move(to: CGPoint(x: geometry.size.width/2, y: geometry.size.height/2))
                    path.addArc(
                        center: CGPoint(x: geometry.size.width/2,
                                        y: geometry.size.height/2),
                        radius: 150,
                        startAngle: Angle(degrees: 90),
                        endAngle: Angle(degrees: 45), clockwise: true)
                }
                .fill(.brown)
                Path() { path in
                    path.move(to: CGPoint(x: geometry.size.width/2, y: geometry.size.height/2))
                    path.addArc(
                        center: CGPoint(x: geometry.size.width/2,
                                        y: geometry.size.height/2),
                        radius: 150,
                        startAngle: Angle(degrees: 45),
                        endAngle: Angle(degrees: 0), clockwise: true)
                }
                .fill(.indigo)
            }
        }
    }
}

struct DrawShapes_Previews: PreviewProvider {
    static var previews: some View {
        DrawShapes()
    }
}
