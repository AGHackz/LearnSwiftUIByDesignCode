//
//  CustomFontsExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 04/09/23.
//

import SwiftUI

struct CustomFontsExample: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Please visit this link for this tutorial:-")
            Text("https://designcode.io/swiftui-handbook-custom-fonts")
            Text("// Example:- \n<<Text View>>.font(.custom(\"OpenSans-Bold\", size: 34))")
        }
        
        // Using Custom Fonts
        // To use your custom font, use the font modifier with .custom.
        // The name should be the same as the font file, without the extension.
        // Example:- <<Text View>>.font(.custom("OpenSans-Bold", size: 34))
    }
}

struct CustomFontsExample_Previews: PreviewProvider {
    static var previews: some View {
        CustomFontsExample()
    }
}
