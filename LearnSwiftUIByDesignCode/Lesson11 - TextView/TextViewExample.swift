//
//  TextViewExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 04/09/23.
//

import SwiftUI

struct TextViewExample: View {
    var body: some View {
        VStack {
            // Text View:-
            // Text in SwiftUI is a view that lets you display one or more lines of text.
            // This is suitable for read-only information that's not editable.
            // To display a line of text, you initialize Text and set a String value.
            Text("Hello, World!")
            
            
            // Changing the Font:-
            // The font modifier allows you to customize the text style.
            // By default, it's going to use the SF font specific to its platform: SF Pro for iOS and Mac and SF Compact for Apple Watch.
            // System fonts come with dynamic type, which automatically adjust its size for accessibility.
            Text("San Francisco")
                .font(.title)
            
            // SYSTEM FONTS:-
            // You can use all system fonts: SF, SF Rounded, SF Mono or New York.
            Text("New York")
                .fontWeight(.bold)
                .font(.system(size: 24, weight: .light, design: .serif))
            
            // FONT WEIGHT:-
            Text("Text with font weight")
                .fontWeight(.bold)
            
            // ITALIC:-
            Text("Text with Italic style")
                .italic()
            
            // Change Font Color:-
            // Use the foregroundColor modifier with a Color value to set the text color.
            Text("London Calling")
                .foregroundColor(.secondary)
            
            // Dimension and alignment:-
            // You can add the frame modifier with size and alignment.
            // This is especially useful for multi-line texts.
            Text("This sans-serif typeface is the system font for iOS, macOS, and tvOS, and includes a rounded variant. It provides a consistent, legible, and friendly typographic voice.")
                .frame(width: 200, alignment: .leading)
            
            // Multiline Text Alignment:-
            // Use the multilineTextAlignment modifier to align multiple lines of text with leading, center or trailing.
            Text("This sans-serif typeface is the system font for iOS, macOS, and tvOS, and includes a rounded variant. It provides a consistent, legible, and friendly typographic voice.")
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
            
            // Line Limit:-
            // Limit the number of lines for your text with the lineLimit modifier.
            // Overflowing characters will have the ellipsis at the end.
            Text("This sans-serif typeface is the system font for iOS, macOS, and tvOS, and includes a rounded variant. It provides a consistent, legible, and friendly typographic voice.")
                .frame(width: 100)
                .lineLimit(1)
            
            // Line Spacing:-
            // Add more space between the lines with the lineSpacing modifier.
            Text("This sans-serif typeface is the system font for iOS, macOS, and tvOS, and includes a rounded variant. It provides a consistent, legible, and friendly typographic voice.")
                .lineSpacing(10)
                .foregroundColor(.blue)
        }
    }
}

struct TextViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TextViewExample()
    }
}
