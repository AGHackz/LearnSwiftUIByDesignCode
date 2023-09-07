//
//  TextShadowExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 05/09/23.
//

import SwiftUI

struct TextShadowExample: View {
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .foregroundColor(.pink)
            .frame(width: 320, height: 400)
            .overlay {
                Text("App of the day")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .shadow(color: Color.blue, radius: 20)
            }
    }
    
}

struct TextShadowExample_Previews: PreviewProvider {
    static var previews: some View {
        TextShadowExample()
    }
}
