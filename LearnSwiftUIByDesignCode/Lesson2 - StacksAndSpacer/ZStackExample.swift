//
//  ZStackExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 25/08/23.
//

import SwiftUI

struct ZStackExample: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.blue)
            Text("Hello, World!")
                .font(.title)
            Spacer()
            Text("Second line")
        }
        .padding()
        .frame(width: 320)
    }
}

struct ZStackExample_Previews: PreviewProvider {
    static var previews: some View {
        ZStackExample()
    }
}
