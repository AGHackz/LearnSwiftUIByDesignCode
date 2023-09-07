//
//  CornerRadiusStyleContinuousExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 05/09/23.
//

import SwiftUI

struct CornerRadiusStyleContinuousExample: View {
    var body: some View {
        // Corner Radius Style Continuous:-
        // To apply the continuous rounded corners that is used everywhere in iOS, use the RoundedRectangle shape.
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack {
                Text("SwiftUI for iOS 14")
                    .bold()
            }
            .frame(width: 300, height: 200)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 25, style: .continuous))
        }
    }
}

struct CornerRadiusStyleContinuousExample_Previews: PreviewProvider {
    static var previews: some View {
        CornerRadiusStyleContinuousExample()
    }
}
