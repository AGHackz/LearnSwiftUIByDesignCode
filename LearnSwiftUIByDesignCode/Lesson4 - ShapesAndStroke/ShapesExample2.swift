//
//  ShapesExample2.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 25/08/23.
//

import SwiftUI

// In this layout example, you can see that shapes are fantastic for clipping the content of a stack. On top of that, you can use them to set a border, use the maximum space and creat really nice buttons.

struct ShapesExample2: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.blue)
                .ignoresSafeArea()
            
            VStack(spacing: 8) {
                Circle()
                    .stroke(Color.black, lineWidth: 2)
                    .frame(width: 44, height: 44)
                Text("Ankit Gupta")
                    .bold()
                Text("Software Engineer")
                    .foregroundColor(.secondary)
                Capsule()
                    .foregroundColor(Color.green)
                    .frame(height: 44)
                    .overlay {
                        Text("Sign up")
                    }
            }
            .padding()
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
            .padding()
        }
    }
}

struct ShapesExample2_Previews: PreviewProvider {
    static var previews: some View {
        ShapesExample2()
    }
}
