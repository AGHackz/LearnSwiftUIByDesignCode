//
//  SpacerExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 25/08/23.
//

import SwiftUI

struct SpacerExample: View {
    var body: some View {
        HStack(alignment: .bottom, spacing: 16.0) {
            Text("Hello, World!")
                .font(.title)
            Spacer()
            Text("Second line")
        }
        .padding()
        .frame(width: 320.0)
    }
}

struct SpacerExample_Previews: PreviewProvider {
    static var previews: some View {
        SpacerExample()
    }
}
