//
//  CustomShadowAndOpacityExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 05/09/23.
//

import SwiftUI

struct CustomShadowAndOpacityExample: View {
    var body: some View {
        // Custom Shadow and Opacity:-
        // If you want more options, you can change the color, radius, x and y values.
        // One trick that I love using is to apply an opacity to a full color.
        // This will give you the ultimate flexibility for styling and animation.
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 200, height: 200)
            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

struct CustomShadowAndOpacityExample_Previews: PreviewProvider {
    static var previews: some View {
        CustomShadowAndOpacityExample()
    }
}
