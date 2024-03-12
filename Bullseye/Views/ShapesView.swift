//
//  ShapesView.swift
//  Bullseye
//
//  Created by Temur Chitashvili on 15.01.24.
//

import SwiftUI

struct Shapes: View {
    @State private var wideShapes = true
    var body: some View {
    VStack{
        if !wideShapes{
            Circle()
                .strokeBorder(Color.blue,lineWidth: Constants.General.strokeWidth)
                .frame(width: 200,height: 100)
                .background(Color.green)
        }
        Capsule()
            .fill(Color.blue)
            .frame(width: wideShapes ? 200 : 100,height: 100)
          //  .animation(.easeInOut, value: wideShapes)
        Ellipse()
            .fill(Color.blue)
            .frame(width: wideShapes ? 200 : 100,height: 100)
        RoundedRectangle(cornerRadius: 20.0)
            .fill(Color.blue)
            .frame(width: wideShapes ? 200 : 100,height: 100)
        Button("Animate") {
            withAnimation {
                wideShapes.toggle()
             }
          }
       }
    }
}

struct ShapesView_Previews: PreviewProvider{
    static var previews: some View{
        Shapes()
    }
}
