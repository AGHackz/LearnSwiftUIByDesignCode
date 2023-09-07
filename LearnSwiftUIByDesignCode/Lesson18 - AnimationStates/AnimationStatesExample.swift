//
//  AnimationStatesExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 06/09/23.
//

import SwiftUI

// Animations are an amazing addition to any project.
// In this tutorial, we'll go through how animation works in SwiftUI.
// Animations in SwiftUI are automatically responsive, interruptible and automatic.
// There is virtually no set up — only customizations.
// Transitions are like Magic Move in Keynote.
// You only need to set the states and SwiftUI will figure out for you the transition between the two states.

struct AnimationStatesExample: View {
    
    // Animation State:-
    // Just like in React, you have animation states in SwiftUI as well.
    // In this case, let's declare a Boolean that will toggle from true and false and vice versa.
    @State var show = false
    
    var body: some View {
        
        VStack {
            Text("View more")
                .bold()
                .foregroundColor(.white)
        }
        
        // Change State:-
        // We can change the state on most values in our UI, such as position, size, color, etc — as long as the values remain the same type.
        // Using the condition asking, if show state is true, then apply 320, else apply 300.
        .frame(width: show ? 320 : 300, height: show ? 600 : 44)
        .background(Color.blue)
        .cornerRadius(30)
        .shadow(color: Color.blue.opacity(0.5), radius: 20)
        
        // Action with Toggle:-
        // Your animation can start with the tap of an event.
        // We'll need to add a Tap event to the front card.
        // You can use the toggle() function to switch a Bool from true to false, and vice versa.
        .onTapGesture {
            
            // Apply Animation:-
            // You can use one of the preset animation types: linear, easeIn, easeOut, easeInOut and spring.
            // If you want more options, you can look at the full documentation.
            withAnimation(.spring()) {
                show.toggle()
            }
        }
    }
}

struct AnimationStatesExample_Previews: PreviewProvider {
    static var previews: some View {
        AnimationStatesExample()
    }
}
