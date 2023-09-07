//
//  ColorLiteralExamples.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 25/08/23.
//

import SwiftUI

struct ColorLiteralExamples: View {
    var body: some View {
        VStack {
            Text("Color Literal")
                .font(.title)
                .bold()
                .foregroundColor(Color(#colorLiteral(red: 0.2, green: 0.5, blue: 0.3, alpha: 1)))
            
            Text("NOTE: - Color literals are great for static colors. For colors that adapts to dark mode, I suggest using colors in the Asset Catalog.")
                .bold()
                .foregroundColor(.red)
        }
        .frame(width: 300, height: 200)
    }
}

struct ColorLiteralExamples_Previews: PreviewProvider {
    static var previews: some View {
        ColorLiteralExamples()
    }
}
