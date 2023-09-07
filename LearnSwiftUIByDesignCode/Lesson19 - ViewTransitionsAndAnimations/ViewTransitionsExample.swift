//
//  ViewTransitionsExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 06/09/23.
//

import SwiftUI

// View Transitions and Animations:-
// Animate your screens using the transition modifier and preset animations
//
// SwiftUI provides a great way to show and animate a new view on top of your current view.
// You have access to preset transitions like opacity, scale and slide.
// You have even more control with move, scale and offset transitions.

struct ViewTransitionsExample: View {
    
    // View Transition:-
    // To show a new view with transition, you can use the if statement with a show boolean state.
    // On that new view, apply a transition modifier.
    // The zIndex modifier ensures that when dismissing, the new view stays on top.
    
    @State var show = false
    
    // Note: the Preview won't show an accurate representation of the transition.
    // It is best to experience in iOS Simulator or on device.
    var body: some View {
        ZStack {
            if !show {
                Text("View Transition")
            } else {
                VStack {
                    Text("New View")
                }
                .transition(.move(edge: .bottom))
                .zIndex(1)
            }
        }
        .onTapGesture {
            show.toggle()
        }
    }
    
    // Opacity Transition:-
    // The opacity transition makes the view fade in when inserted and fade out when removed.
    // <<New View>>.transition(.opacity)
    
    // Scale Transition:-
    // The scale transition enlarges a view when inserted and shrinks when removed.
    // <<New View>>.transition(.scale)
    // You can also customize the scale multiplier and position.
    // <<New View>>.transition(.scale(scale: 0.1, anchor: .bottom))
    
    // Slide Transition:-
    // The slide transition moves in a view from the left and dismisses to the right.
    // <<New View>>.transition(.slide)
    
    // Move Transition:-
    // When you use move, the view slides in and dismisses in the same direction specified.
    // <<New View>>.transition(.move(edge: .bottom))
    
    // Offset Transition:-
    // The offset transition is similar to the move transition, except you have more control on the x and y position.
    // <<New View>>.transition(.offset(x: 300, y: 300))
}

struct ViewTransitionsExample_Previews: PreviewProvider {
    static var previews: some View {
        ViewTransitionsExample()
    }
}
