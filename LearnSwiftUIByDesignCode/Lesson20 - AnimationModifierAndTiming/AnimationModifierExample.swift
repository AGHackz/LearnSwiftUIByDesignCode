//
//  AnimationModifierExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 06/09/23.
//

import SwiftUI

// Animation Modifier and Timing:-
// SwiftUI also gives you the ability to set the animation timing to specific elements.
// Like this, during a state change, multiple elements can have different animation timing.
// Additionally, you can set a timing curve and duration for your animations.

struct AnimationModifierExample: View {
    
    // Animation Modifier:-
    // It is recommended to use the withAnimation during state change, but if you want more specific timing for different elements, the animation modifier is a great choice.

    // Note:- that the animation modifier will apply to all its children elements.
    // This can be challenging to manage, so my suggestion is to avoid applying to parent containers.
    
    @State var show = false

    var body: some View {
        VStack {
            
            VStack {}
            .animation(.easeOut, value: show) // Will apply animation to all children elements

            VStack {}
            .animation(nil, value: show) // Cancel animation

            Button(action: {
                
            }, label: {
                Text("Button")
            })
            .animation(.easeOut, value: show) // Recommended to apply to children elements
        }
        
        // Linear Animation:-
        // Linear animations are constant.
        // They don't accelerate or overshoot.
        // They're good for animations like blur, opacity and constant movements.
        // <<some View>.animation(.linear(duration: 0.8), value: show)
        
        // Ease Animations:-
        // The most popular type of animation timing is the easeIn, easeOut and easeInOut.
        // The animation will accelerate at beginning, end or both.
        // <<some View>.animation(.easeOut(duration: 0.8), value: show)
        
        // Timing Curve:-
        // The timing curve values exists in a lot of design tools, prototyping tools and in CSS.
        // This is great if you want more control and transfer the same animation timing from another platform.
        // <<some View>.animation(.timingCurve(0.2, 0.8, 0.2, 1, duration: 0.8), value: show)
        
        // Spring Animation:-
        // Spring animations will overshoot and bounce if set to the default values.
        // Values can be customized to give physics-based properties.
        // You can either not set any parameter to the spring animation and it'll add in defaults automatically but if you'd like to have more control over the animation, you can add any of the parameters that best suits your needs.
        // <<some View>.animation(.spring(response: 0.5, dampingFraction: 0.6), value: show)
    }
    
}

struct AnimationModifierExample_Previews: PreviewProvider {
    static var previews: some View {
        AnimationModifierExample()
    }
}
