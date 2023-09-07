//
//  SafeAreaLayoutExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 04/09/23.
//

import SwiftUI

// SwiftUI automatically makes your content fit within the bounds of the safe area.
// For background elements and some layout cases, you can ignore those edges by using ignoreSafeArea.

struct SafeAreaLayoutExample: View {
    var body: some View {
        ZStack {
            // Ignore Safe Area:-
            // For a custom background, it is typical to apply ignoreSafeArea.
            // By default, it's going to apply to all sides: top, bottom, leading, trailing, all at once.
            Color.blue.ignoresSafeArea()
            
            // Safe Area Edges:-
            // If you want to ignore only a single edge, you can customize the edges value to .top, .bottom, .leading or .trailing.
            Color.yellow.ignoresSafeArea(.all, edges: .top)
        }
    }
}

struct SafeAreaLayoutExample_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaLayoutExample()
    }
}
