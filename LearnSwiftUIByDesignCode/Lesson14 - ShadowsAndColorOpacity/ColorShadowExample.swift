//
//  ColorShadowExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 05/09/23.
//

import SwiftUI

struct ColorShadowExample: View {
    var body: some View {
        // Color Shadow:-
        // Using the Color plus opacity technique, you can easily make your drop shadows using the same color as your card's color.
        VStack {
            Text("App of the day")
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .shadow(radius: 20)
        }
        .frame(width: 320, height: 400)
        .background(Color.pink)
        .cornerRadius(25)
        .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
        .shadow(color: Color.pink.opacity(0.3), radius: 20, x: 0, y: 10)
    }
}

struct ColorShadowExample_Previews: PreviewProvider {
    static var previews: some View {
        ColorShadowExample()
    }
}
