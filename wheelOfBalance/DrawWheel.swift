//
//  SwiftUIView.swift
//  wheelOfBalance
//
//  Created by Oleksii Mykhalchuk on 12/23/22.
//

import SwiftUI

struct DrawWheel: View {
    var width: CGFloat
    var career: CGFloat
    var spiritual: CGFloat
    var environment: CGFloat
    var social: CGFloat
    var family: CGFloat
    var health: CGFloat
    var growth: CGFloat
    var finance: CGFloat
    @State var percentage: CGFloat = 0
    @Binding var isChangedCategory: Bool
    @Binding var isChangedValue: Bool
    var body: some View {
        GeometryReader { geometry in
            
            Path() { path in
                path.move(to: CGPoint(x: geometry.size.width/2,
                                      y: geometry.size.height/2-width/10*career))
                path.addLine(to: CGPoint(x: geometry.size.width/2,
                                         y: geometry.size.height/2-width/10*career))
                path.addLine(to: CGPoint(x: geometry.size.width/2 - width/10*spiritual / sqrt(2),
                                         y: geometry.size.height/2 - width/10*spiritual / sqrt(2)))
                path.addLine(to: CGPoint(x: geometry.size.width/2 - width/10*environment,
                                         y: geometry.size.height/2))
                path.addLine(to: CGPoint(x: geometry.size.width/2 - width/10*social / sqrt(2),
                                         y: geometry.size.height/2 + width/10*social / sqrt(2)))
                path.addLine(to: CGPoint(x: geometry.size.width/2,
                                         y: geometry.size.height/2 + width/10*family))
                path.addLine(to: CGPoint(x: geometry.size.width/2 + width/10*health / sqrt(2),
                                         y: geometry.size.height/2 + width/10*health / sqrt(2)))
                path.addLine(to: CGPoint(x: geometry.size.width/2 + width/10*growth,
                                         y: geometry.size.height/2))
                path.addLine(to: CGPoint(x: geometry.size.width/2 + width/10*finance / sqrt(2),
                                         y: geometry.size.height/2 - width/10*finance / sqrt(2)))
                path.addLine(to: CGPoint(x: geometry.size.width/2,
                                         y: geometry.size.height/2 - width/10*career))
            }
            .trim(from: 0, to: percentage)
            .stroke(.green, lineWidth: 6)
            .animation(.easeIn(duration: 3), value: percentage)
            .onChange(of: isChangedValue) { newValue in
                if isChangedValue {
                    percentage = 0
                } else {
                    percentage = 1
                }
            }
        }
    }
}

//struct DrawWheel_Previews: PreviewProvider {
//    static var previews: some View {
//        DrawWheel(
//            width: 150,
//            career: 10,
//            spiritual: 10,
//            environment: 10,
//            social: 10,
//            family: 10,
//            health: 10,
//            growth: 10,
//            finance: 10,
//            percentage: Binding<CGFloat>(projectedValue: 1.0),
//            from: Binding<CGFloat>(projectedValue: 0.0))
//    }
//}
