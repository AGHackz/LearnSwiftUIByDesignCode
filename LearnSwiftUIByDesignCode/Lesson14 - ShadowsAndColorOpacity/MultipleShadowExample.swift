//
//  MultipleShadowExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 05/09/23.
//

import SwiftUI

struct MultipleShadowExample: View {
    var body: some View {
        // Multiple Shadows:-
        // To add multiple shadows, you can use multiple shadow modifiers.
        // Make sure that the combined shadows are not too strong, with an opacity of less than 50% combined.
        // The lighter your background is, the lower this percentage should be.
        // I personally like to have my radius about double the y position.
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 200, height: 400)
            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
            .shadow(color: Color.pink.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

struct MultipleShadowExample_Previews: PreviewProvider {
    static var previews: some View {
        MultipleShadowExample()
    }
}
