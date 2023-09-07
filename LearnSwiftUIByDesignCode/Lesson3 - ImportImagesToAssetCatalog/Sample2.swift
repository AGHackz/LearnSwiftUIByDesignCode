//
//  Sample2.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 25/08/23.
//

import SwiftUI

struct Sample2: View {
    var body: some View {
        VStack(spacing: 30) {
            Image("dummy_wallpaper")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
        }
    }
}

struct Sample2_Previews: PreviewProvider {
    static var previews: some View {
        Sample2()
    }
}
