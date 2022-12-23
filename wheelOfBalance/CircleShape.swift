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
        Circle()
            .stroke(lineWidth: 1)
            .frame(width: width)
    }
}

struct CircleShape_Previews: PreviewProvider {
    static var previews: some View {
        CircleShape(width: 300)
    }
}
