//
//  TransparencyMaskExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 05/09/23.
//

import SwiftUI

// The mask modifier is even more versatile than the clipShape because you can use colors and even opacity to clip your content.

struct TransparencyMaskExample: View {
    var body: some View {
        // Transparency Mask:-
        // Clipping is especially great for masking content like text and images.
        // In this example, both the content and the background will be at 30% opacity.
        VStack {
            Text("Mask and Transparency")
                .font(.title3)
                .bold()
        }
        .padding()
        .background(Color.blue)
        .mask(Color.black.opacity(0.3))
    }
}

struct TransparencyMaskExample_Previews: PreviewProvider {
    static var previews: some View {
        TransparencyMaskExample()
    }
}
