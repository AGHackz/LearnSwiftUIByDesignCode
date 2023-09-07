//
//  SFSymbolsExample.swift
//  LearnSwiftUIByDesignCode
//
//  Created by Ankit Gupta on 25/08/23.
//

import SwiftUI

struct SFSymbolsExample: View {
    var body: some View {
        VStack(spacing: 30) {
            HStack(alignment: .top, spacing: 30) {
                
                // SFSymbol Weights
                VStack(spacing: 12) {
                    Text("Weights")
                        .bold()
                    Image(systemName: "gear")
                        .fontWeight(.ultraLight)
                    Image(systemName: "gear")
                        .fontWeight(.thin)
                    Image(systemName: "gear")
                        .fontWeight(.light)
                    Image(systemName: "gear")
                        .fontWeight(.regular)
                    Image(systemName: "gear")
                        .fontWeight(.medium)
                    Image(systemName: "gear")
                        .fontWeight(.semibold)
                    Image(systemName: "gear")
                        .fontWeight(.bold)
                    Image(systemName: "gear")
                        .fontWeight(.heavy)
                    Image(systemName: "gear")
                        .fontWeight(.black)
                }
                
                // SFSymbol Image Scale
                VStack(spacing: 12) {
                    Text("ImageScale")
                        .bold()
                    Image(systemName: "gear")
                        .imageScale(.small)
                    Image(systemName: "gear")
                        .imageScale(.medium)
                    Image(systemName: "gear")
                        .imageScale(.large)
                }
                
                // SFSymbol Custom Styles
                VStack(spacing: 12) {
                    Text("Custom Styles")
                        .bold()
                    Image(systemName: "gear")
                        .font(.system(size: 32))
                    Image(systemName: "gear")
                        .font(.system(size: 32, weight: .heavy))
                    Image(systemName: "gear")
                        .font(.system(size: 32))
                        .foregroundColor(.red)
                }
            }
            
            VStack(spacing: 12) {
                Text("MultiColor SF Symbols")
                    .bold()
                // NOTE: The renderingMode modifier is necessary to show all the colors
                Image(systemName: "paperplane.circle.fill")
                    .renderingMode(.original)
                    .font(.system(size: 50))
            }
        }
    }
}

struct SFSymbolsExample_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolsExample()
    }
}
