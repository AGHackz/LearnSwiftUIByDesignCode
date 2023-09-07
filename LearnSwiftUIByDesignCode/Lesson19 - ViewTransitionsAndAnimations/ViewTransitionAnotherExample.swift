//
//  ViewTransitionAnotherExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 06/09/23.
//

import SwiftUI

struct ViewTransitionAnotherExample: View {
    
    // Note: the Preview won't show an accurate representation of the transition.
    // It is best to experience in iOS Simulator or on device.
    @State var show = false
    
    var body: some View {
        ZStack {
            if !show {
                Text("View Transition")
                    .padding()
                    .background(Capsule().stroke())
            } else {
                RoundedRectangle(cornerRadius: 30)
                    .fill(Color.blue)
                    .padding()
                    .transition(.move(edge: .trailing))
                
                // Uncomment any transition to give a try
//                    .transition(.opacity)
//                    .transition(.scale(scale: 0.1, anchor: .bottom))
//                    .transition(.slide)
//                    .transition(.move(edge: .bottom))
//                    .transition(.offset(x: 300, y: 300))
                    .zIndex(1)
            }
        }
        .onTapGesture {
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
    
}

struct ViewTransitionAnotherExample_Previews: PreviewProvider {
    static var previews: some View {
        ViewTransitionAnotherExample()
    }
}
