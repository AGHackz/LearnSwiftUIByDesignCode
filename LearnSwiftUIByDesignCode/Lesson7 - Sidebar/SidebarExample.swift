//
//  SidebarExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 26/08/23.
//

import SwiftUI

// Sidebar:-
// The Sidebar is a List that is embeded inside a Navigation View.
// You can customize the title and the layout will automatically adapt to the iPhone and iPad in portrait and landscape modes.

struct SidebarExample: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: HomeView()) {
                    Label("Courses", systemImage: "book")
                }
                Label("Tutorials", systemImage: "square")
            }
            .navigationTitle("Learn")
        }
    }
}

struct HomeView: View {
    var body: some View {
        Text("Courses")
            .navigationTitle("Courses")
    }
}

struct SidebarExample_Previews: PreviewProvider {
    static var previews: some View {
        SidebarExample()
    }
}
