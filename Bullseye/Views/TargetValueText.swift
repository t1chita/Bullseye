//
//  TargetValueText.swift
//  Bullseye
//
//  Created by Temur Chitashvili on 15.01.24.
//

import SwiftUI

struct TargetValueText: View {
    @State private var game = Game()
    var body: some View {
        Text(String(game.target))
            .foregroundColor(Color("TextColor"))
            .font(.system(size: 36))
            .fontWeight(.black)
            .frame(width: 53.0, height: 43.0)
            .kerning(-1.0)
    }
}

#Preview {
    TargetValueText()
}
