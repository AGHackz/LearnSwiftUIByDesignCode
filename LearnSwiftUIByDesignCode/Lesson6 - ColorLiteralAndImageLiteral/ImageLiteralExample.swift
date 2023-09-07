//
//  ImageLiteralExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 25/08/23.
//

import SwiftUI

struct ImageLiteralExample: View {
    var body: some View {
        VStack {
            Text("Image Literal")
                .font(.title)
                .foregroundColor(.white)
            .bold()
        }
        .frame(width: 320, height: 200)
        .background(
            Image(uiImage: #imageLiteral(resourceName: "dummy_wallpaper"))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
                .cornerRadius(20)
        )
    }
}

struct ImageLiteralExample_Previews: PreviewProvider {
    static var previews: some View {
        ImageLiteralExample()
    }
}
