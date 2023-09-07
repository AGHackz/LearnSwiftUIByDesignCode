//
//  VStackExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 25/08/23.
//

import SwiftUI

struct VStackExample: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0) {
            Text("Hello, World!")
                .font(.title)
            Spacer()
            Text("Second Line")
        }
    }
}

struct VStackExample_Previews: PreviewProvider {
    static var previews: some View {
        VStackExample()
    }
}
