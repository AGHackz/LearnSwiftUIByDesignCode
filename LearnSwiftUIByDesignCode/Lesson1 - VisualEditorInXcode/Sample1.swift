//
//  Sample1.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 25/08/23.
//

import SwiftUI

struct Sample1: View {
    var body: some View {
        VStack(alignment: .center, spacing: 8.0) {
            VStack {
                Circle()
                    .frame(width: 44.0, height: 44.0)
                    .foregroundColor(.white)
                Text(/*@START_MENU_TOKEN@*/"SwiftUI for iOS 14"/*@END_MENU_TOKEN@*/)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            }
            Text(/*@START_MENU_TOKEN@*/"20 Videos"/*@END_MENU_TOKEN@*/)
        }
        .padding(.all)
        .background(Color.blue)
        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
    }
}

struct Sample1_Previews: PreviewProvider {
    static var previews: some View {
        Sample1()
    }
}
