//
//  StacksAndSpaceAlternatives.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 05/09/23.
//

import SwiftUI

// An alternative to stacks and spacer is to use frame max width and alignment to avoid the pyramid of doom

// A typical way to align elements is to use HStack + Spacer().
// However, this can necessitate too many containers, especially if you want to align to the top left.
// An alternative is to use the frame modifier with maxWidth and alignment.

struct StacksAndSpaceAlternatives: View {
    var body: some View {
        
        // Stacks and Spacer Alternatives:-
        // Let's take a common example of a floating close button that we want to align to the far top right of the screen.
        // This creates requires a VStack and an HStack, plus two Spacer().
        // When you have too many containers, you will likely create a pyramid of doom, which is not ideal for readability and maintenance.
        VStack {
            HStack {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .background(Circle().stroke())
                Spacer()
            }
            Spacer()
        }
        .padding()
    }
}

struct StacksAndSpaceAlternatives_Previews: PreviewProvider {
    static var previews: some View {
        StacksAndSpaceAlternatives()
    }
}


struct MaxWidthAndAlignmentExample: View {
    var body: some View {
        // By using a frame modifier with maxWidth and maxHeight set to infinity, and alignment set to topTrailing, you get the same result.
        Image(systemName: "xmark")
            .frame(width: 32, height: 32)
            .background(Circle().stroke())
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .padding()
    }
}

struct MaxWidthAndAlignmentExample_Previews: PreviewProvider {
    static var previews: some View {
        MaxWidthAndAlignmentExample()
    }
}


struct OverlayExample: View {
    var body: some View {
        // Overlay:-
        // The floating close button can be put in an overlay modifier which put the element above the content.
        Rectangle()
            .fill(Color.blue)
            .overlay {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .background(Circle().stroke())
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .padding()
            }
    }
}

struct OverlayExample_Previews: PreviewProvider {
    static var previews: some View {
        OverlayExample()
    }
}
