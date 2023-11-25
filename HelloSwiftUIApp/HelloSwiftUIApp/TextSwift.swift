//
//  TextSwift.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 24/11/23.
//

import SwiftUI

struct TextSwift: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .strikethrough()
                .underline()
                //.kerning(50)
            Text("Hello!")
            .baselineOffset(-50)
            .multilineTextAlignment(.leading)
            .frame(width: 100, height: 100, alignment: .leading)
            .foregroundColor(.red)

            AppShapes()
        }
        .padding()
    }
}

struct TextSwift_Previews: PreviewProvider {
    static var previews: some View {
        TextSwift()
    }
}
