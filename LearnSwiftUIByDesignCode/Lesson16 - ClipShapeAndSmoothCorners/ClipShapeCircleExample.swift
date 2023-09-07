//
//  ClipShapeCircleExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 05/09/23.
//

import SwiftUI

struct ClipShapeCircleExample: View {
    var body: some View {
        // Clip Shape Circle:-
        // You can use the clipShape to mask your content to any shape, like a Circle or Capsule.
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack {
                Text("SwiftUI for iOS 14")
                    .bold()
            }
            .frame(width: 300, height: 200)
            .background(Color.white)
            .clipShape(Circle())
        }
    }
}

struct ClipShapeCircleExample_Previews: PreviewProvider {
    static var previews: some View {
        ClipShapeCircleExample()
    }
}
