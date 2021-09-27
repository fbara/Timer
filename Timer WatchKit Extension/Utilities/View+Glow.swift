//
//  View+Glow.swift
//  Timer WatchKit Extension
//
//  Created by Frank Bara on 9/25/21.
//

import SwiftUI

extension View {
    func glow(color: Color = .red, radius: CGFloat = 10) -> some View {
        self
            .shadow(color: color, radius: radius / 3)
            .shadow(color: color, radius: radius / 3)
            .shadow(color: color, radius: radius / 3)

    }
}
