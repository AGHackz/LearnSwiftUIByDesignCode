//
//  ImageViewExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 04/09/23.
//

import SwiftUI

struct ImageViewExample: View {
    var body: some View {
        VStack {
            // Resizing the Image:-
            // By default, the Image will automatically take the original size of the image.
            // To make it resize to the container size, we'll use the resizable modifier.
            // It will resize the image to fill the screen.
            Image("swift-logo")
                .resizable()
            
            // Aspect Ratio:-
            // The aspectRatio modifier allows you to maintain the aspect ratio of the image.
            // You can change the contentMode to fill or fit.
            Image("swift-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            // Frame Alignment:-
            // You can also align your image within the bounds of a frame.
            Image("swift-logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .center)
            
            // Tile an Image:-
            // To tile the image, add the resizingMode parameter to tile. By default, it's set to stretch.
            Image("swift-logo")
                .resizable(resizingMode: .tile)
                .aspectRatio(contentMode: .fit)
        }
    }
}

struct ImageViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ImageViewExample()
    }
}
