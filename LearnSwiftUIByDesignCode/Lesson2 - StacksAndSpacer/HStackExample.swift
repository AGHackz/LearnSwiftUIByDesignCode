//
//  HStackExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 25/08/23.
//

import SwiftUI

struct HStackExample: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 16.0) {
            Text("Hello, World!")
                .font(.title)
            Spacer()
            Text("Second line")
        }
    }
}

struct HStackExample_Previews: PreviewProvider {
    static var previews: some View {
        HStackExample()
    }
}
