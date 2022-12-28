//
//  CircleShape.swift
//  wheelOfBalance
//
//  Created by Oleksii Mykhalchuk on 12/23/22.
//

import SwiftUI

struct CircleShape: View {
    var width: CGFloat
    var body: some View {
        ZStack {
            ForEach(0..<10) { number in
                Circle()
                    .stroke(lineWidth: 1)
                    .frame(width: width - CGFloat(number)*width/10)
            }
        }
    }
}

struct CircleShape_Previews: PreviewProvider {
    static var previews: some View {
        CircleShape(width: 300)
    }
}
