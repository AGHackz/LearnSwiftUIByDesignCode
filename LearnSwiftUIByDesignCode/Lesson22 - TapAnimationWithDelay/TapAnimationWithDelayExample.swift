//
//  TapAnimationWithDelayExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 06/09/23.
//

import SwiftUI

// In this tutorial, we'll learn how to create a button that expands and contract after a delay. This is a fun effect that can be seen on a lot of buttons and cards.

// Dispatch Queue AsyncAfter
// You can use the DispatchQueue.main.asyncAfter to create a delay of 0.1 second.

struct TapAnimationWithDelayExample: View {
    
    @State var tap = false
    
    var body: some View {
        VStack {
            Text("View More")
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 200)
        .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
        .mask(RoundedRectangle(cornerRadius: 30))
        .shadow(color: Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)).opacity(tap ? 0.6 : 0.3), radius: tap ? 20 : 10, x: 0, y: tap ? 10 : 20)
        
        // Add a Scale Animation:-
        // We'll add an animation that scales the card back and forth.
        .scaleEffect(tap ? 1.2 : 1)
        .animation(.spring(response: 0.4, dampingFraction: 0.6), value: tap)
        .onTapGesture {
            tap = true
            
            // Reset Animation after Delay:-
            // Instead of toggling between two animation states, we can use delay to reset the animation.
            // This creates a fun interaction with the card.
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                tap = false
            }
        }
    }
}

struct TapAnimationWithDelayExample_Previews: PreviewProvider {
    static var previews: some View {
        TapAnimationWithDelayExample()
    }
}
