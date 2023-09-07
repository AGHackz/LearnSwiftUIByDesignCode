//
//  ToolbarExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 26/08/23.
//

import SwiftUI

// Toolbar:-
// Using the Toolbar in SwiftUI, you have more control over the placement of your navigation buttons such as the navigation bar or bottom bar.
// Additionally, these action items will adapt accordingly to iOS, iPadOS, watchOS, macOS and tvOS.


// Navigation View Toolbar:-
// The toolbar modifier can only be placed inside a NavigationView.
// By default, it will act the same way as NavigationBarItems, but you get more options like placement and group.

struct ToolbarExample: View {
    var body: some View {
        NavigationView {
            Text("My app")
                .toolbar {
                    ToolbarItem {
                        Image(systemName: "person.crop.circle")
                    }
                }
        }
    }
}

struct ToolbarExample_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarExample()
    }
}

// ToolbarItem Placement:-
// By default, the toolbar will be placed in the navigation bar.
// But you also have other placements: bottomBar, cancellationAction, confirmationAction, destructionAction, navigation, navigationLeading, navigationTrailing.
// Each placement will adapt to its respective platform.

struct ToolbarPlacementExample: View {
    var body: some View {
        NavigationView {
            Text("My App ToolbarPlacement Example")
                .toolbar {
                    ToolbarItem(placement: .bottomBar) {
                        Button(action: {}) {
                            Image(systemName: "person.crop.circle")
                        }
                    }
                }
        }
    }
}

struct ToolbarPlacement_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarPlacementExample()
    }
}

// ToolbarItemGroup:-
// For all placements except navigation and automatic, you can insert multiple elements.
struct ToolbarItemGroupExample: View {
    var body: some View {
        NavigationView {
            Text("My App ToolbarItemGroup Example")
                .toolbar {
                    ToolbarItemGroup(placement: .confirmationAction) {
                        Image(systemName: "person")
                        Image(systemName: "ellipsis")
                        Image(systemName: "gear")
                    }
                }
        }
    }
}

struct ToolbarItemGroup_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarItemGroupExample()
    }
}

// ToolbarItemGroup:-
// If it's a bottomBar placement, you have even more control over the items. You can use Spacer to push the elements.
struct ToolbarItemGroup2Example: View {
    var body: some View {
        NavigationView {
            Text("My App ToolbarItemGroup Example 2")
                .toolbar {
                    ToolbarItemGroup(placement: .bottomBar) {
                        Image(systemName: "person")
                        Spacer()
                        Image(systemName: "ellipsis")
                        Spacer()
                        Image(systemName: "gear")
                    }
                }
        }
    }
}

struct ToolbarItemGroup2_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarItemGroup2Example()
    }
}

struct ToolbarExample2: View {
    var body: some View {
        NavigationView {
            Text("My App Toolbar Example 2")
                .toolbar {
                    ToolbarItemGroup(placement: .bottomBar) {
                        Image(systemName: "person")
                        HStack {
                            Image(systemName: "ellipsis")
                            Divider()
                            Image(systemName: "trash")
                                .frame(width: 32, height: 32)
                                .background(
                                    Color.gray.opacity(0.3)
                                )
                                .foregroundColor(Color.red)
                                .mask(Circle())
                        }
                    }
                }
        }
    }
}

struct ToolbarExample2_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarExample2()
    }
}

