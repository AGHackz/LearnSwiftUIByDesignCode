//
//  DefaultShadowExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 05/09/23.
//

import SwiftUI

// Drop shadows are perfect for adding depth to your user interface.
// When your text, buttons and cards blend too much with the background, you can use drop shadows to make them stand out.

struct DefaultShadowExample: View {
    var body: some View {
        // Default Shadow:-
        // Using the shadow modifier with a radius value will give you a default iOS drop shadow look.
        // Customize the radius to make it smaller or bigger.
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 200, height: 200)
            .shadow(radius: 10)
    }
}

struct DefaultShadowExample_Previews: PreviewProvider {
    static var previews: some View {
        DefaultShadowExample()
    }
}
