//
//  SwiftUIFrameView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 26/11/23.
//

import SwiftUI

struct SwiftUIFrameView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.red)
            .cornerRadius(25)
            .frame(width: 200, height: 100)
            .background(Color.green)
            .cornerRadius(25)

            .frame(maxWidth: .infinity)
            .background(Color.orange)
            .cornerRadius(25)

            .frame(maxHeight: .infinity)
            .background(Color.blue)
            .cornerRadius(25)

    }
}

struct SwiftUIFrameView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIFrameView()
    }
}
