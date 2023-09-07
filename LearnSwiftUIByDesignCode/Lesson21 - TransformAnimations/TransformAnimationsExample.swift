//
//  TransformAnimationsExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 06/09/23.
//

import SwiftUI

// Transform Animations:-
// SwiftUI has a number of transform modifiers that you can use for animation, including offset, scaleEffect, rotationEffect and rotation3DEffect.

struct TransformAnimationsExample: View {
    
    @State var show = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 260, height: 200)
                .offset(y: 20)
            
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 300, height: 200)
                .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                .offset(y: show ? -200 : 0)
                .scaleEffect(show ? 1.2 : 1)
                .rotationEffect(Angle(degrees: show ? 30 : 0))
                .rotation3DEffect(
                    Angle(degrees: show ? 30 : 0),
                    axis: (x: 1, y: 0, z: 0),
                    anchor: .center,
                    anchorZ: 0.0,
                    perspective: 1
                )
                .onTapGesture {
                    withAnimation(.spring()) {
                        show.toggle()
                    }
                }
        }
        
        // Offset:-
        // The offset modifier allows you to move your element on the x and y axis.
        // <<some View>.offset(y: show ? -200 : 0)
        
        // Scale:-
        // You can scale your element using scaleEffect without changing its frame size.
        // This is great for animation since it keeps your original element intact.
        // <<some View>>.scaleEffect(show ? 1.2 : 1)
        
        // Rotate:-
        // Use rotationEffect to make a view rotate. You will need to set an Angle property with a degrees value.
        // <<some View>.rotationEffect(Angle(degrees: show ? 30 : 0))
        
        // 3D Animation:-
        // The 3D animation is the most complex since it combines angle, axis, anchor and perspective.
        // Mostly, you want to play with the degrees and axis.
        // <<some View>>.rotation3DEffect(
        //        Angle(degrees: show ? 30 : 0),
        //        axis: (x: 1, y: 0, z: 0),
        //        anchor: .center,
        //        anchorZ: 0.0,
        //        perspective: 1
        //    )
    }
}

struct TransformAnimationsExample_Previews: PreviewProvider {
    static var previews: some View {
        TransformAnimationsExample()
    }
}
