//
//  TabViewWithPageStyleExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 05/09/23.
//

import SwiftUI

// In SwiftUI, you can create a user onboarding layout with horizontal pagination with a few lines of code using the TabView with the PageTabViewStyle.

struct TabViewWithPageStyleExample: View {
    var body: some View {
        // Tab View with Page Style:-
        // The TabView has a modifier called tabViewStyle that lets you create a horizontal scroll with pagination.
        // In this layout, we have 3 views.
        // Each of these RoundedRectangle can be replaced by a dedicated view.
        TabView {
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.red)
                .padding()
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.green)
                .padding()
            RoundedRectangle(cornerRadius: 30)
                .fill(Color.blue)
                .padding()
        }
        // Show or Hide Dots:-
        // You can set the indexDisplayMode for the PageTabViewStyle to always, automatic or never.
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

struct TabViewWithPageStyleExample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewWithPageStyleExample()
    }
}
