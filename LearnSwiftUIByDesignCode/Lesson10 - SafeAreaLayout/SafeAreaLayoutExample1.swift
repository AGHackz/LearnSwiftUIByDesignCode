//
//  SafeAreaLayoutExample1.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 04/09/23.
//

import SwiftUI

struct SafeAreaLayoutExample1: View {
    var body: some View {
        // Avoid Applying to Content:-
        // Safe Area helps you tremendously to deal with UI issues that come with notch and home indicator spaces.
        // It is recommended to avoid applying ignoreSafeArea to the content.
        // Instead, you should separate your elements that ignore the safe area, such as a background element.
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack {
                Text("SwiftUI for iOS 14")
                    .bold()
            }
            .frame(width: 300, height: 200)
            .background(Color.white)
            .cornerRadius(12)
        }
    }
}

struct SafeAreaLayoutExample1_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaLayoutExample1()
    }
}
