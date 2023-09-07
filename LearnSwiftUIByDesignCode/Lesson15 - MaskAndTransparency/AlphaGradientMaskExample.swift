//
//  AlphaGradientMaskExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 05/09/23.
//

import SwiftUI

struct AlphaGradientMaskExample: View {
    var body: some View {
        // Alpha Gradient Mask:-
        // A great strategy for dealing with content that gets clipped abrutly is to apply an opaque gradient mask.
        // In this example, we're masking the content using a gradient from top at 100% opacity, to bottom at 0% opacity.
        VStack {
            Text("Alpha Gradient Mask!")
                .font(.title3)
                .bold()
        }
        .padding()
        .background(Color.green)
        .cornerRadius(12)
        .mask {
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.black.opacity(0)]), startPoint: .top, endPoint: .bottom)
        }
    }
}

struct AlphaGradientMaskExample_Previews: PreviewProvider {
    static var previews: some View {
        AlphaGradientMaskExample()
    }
}
