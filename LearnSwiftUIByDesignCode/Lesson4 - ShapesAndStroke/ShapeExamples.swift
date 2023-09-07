//
//  ShapeExamples.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 25/08/23.
//

import SwiftUI

// Shapes vs Stacks:
// Unlike stacks, shapes take the maximum space.
// To color them, you can use fill and foregroundColor instead of background.
// They're great for clipping content and setting a border style.
//
// In SwiftUI, we get access to five built-in shapes which are:-
// 1. Circle
// 2. Ellipse
// 3. Rectangle
// 4. Rounded Rectangle
// 5. Capsule

struct ShapeExamples: View {
    var body: some View {
        VStack {
            // 1. Circle
            Circle()
                .stroke(Color.black, lineWidth: 2)
                .frame(width: 44, height: 44)
            
            // 2. Ellipse (An Ellipse is like a circle, but without the perfect aspect ratio 1:1. When the width and height are different, it'll fill the space and distort itself.)
            Ellipse()
                .stroke(Color.black, lineWidth: 2)
                .frame(width: 44, height: 88)
            
            // 3. Rectagle (While most elements in SwiftUI such as stacks, colors, gradients start as rectangles, they're not shapes. The Rectangle has a shape property, allowing it to have a stroke or serve as a mask.
            Rectangle()
                .foregroundColor(.blue)
                .ignoresSafeArea()
            
            // 4. Rounded Rectangle (The Rounded Rectangle comes with useful cornerRadius and style properties. It's great for creating buttons and generating the smooth corners of iOS.)
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .fill(Color.green)
                .frame(height: 44)
                .overlay {
                    Text("Sign up")
                        .bold()
                }
            
            // 5. Capsule (Similar to the RoundedRectangle, the Capsule is pill-shaped. Each end of the capsule is made of a half-circle. You can use them for buttons.)
            Capsule()
                .fill(Color.green)
                .frame(height: 44)
                .overlay {
                    Text("Sign up")
                        .bold()
                }
        }
    }
}

struct ShapeExamples_Previews: PreviewProvider {
    static var previews: some View {
        ShapeExamples()
    }
}
