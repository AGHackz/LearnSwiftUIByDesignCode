//
//  CardWithRoundedCornersExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 05/09/23.
//

import SwiftUI

// SwiftUI lets you mask any view with a clipShape modifier.
// A popular technique is to apply the Super Ellipse, also known as continuous rounded corners.

struct CardWithRoundedCornersExample: View {
    var body: some View {
        // Card with Rounded Corners:-
        // Let's start with a simple layout with a card and a background.
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack {
                Text("SwiftUI for iOS 14")
                    .bold()
            }
            .frame(width: 300, height: 200)
            .background(Color.white)
        }
    }
}

struct CardWithRoundedCornersExample_Previews: PreviewProvider {
    static var previews: some View {
        CardWithRoundedCornersExample()
    }
}
