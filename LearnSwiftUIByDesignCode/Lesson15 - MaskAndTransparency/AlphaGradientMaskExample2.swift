//
//  AlphaGradientMaskExample2.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 05/09/23.
//

import SwiftUI

struct AlphaGradientMaskExample2: View {
    var body: some View {
        // In this sample layout, we're apply a gradient mask to a clipped content that beautifully adapts to the backgound.
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack {
                ForEach(0..<5) { _ in
                    Text("Mask and Transparency!")
                        .font(.title3)
                        .bold()
                        .padding(.vertical)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Divider()
                }
            }
            .padding()
            .background(Color.white)
            .cornerRadius(20)
            .mask {
                LinearGradient(gradient: Gradient(colors: [.red, .red, .red, .blue.opacity(0)]), startPoint: .top, endPoint: .bottom)
            }
            .padding()
        }
    }
}

struct AlphaGradientMaskExample2_Previews: PreviewProvider {
    static var previews: some View {
        AlphaGradientMaskExample2()
    }
}
