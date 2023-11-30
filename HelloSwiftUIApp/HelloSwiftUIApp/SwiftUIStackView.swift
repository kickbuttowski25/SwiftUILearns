//
//  SwiftUIStackView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 29/11/23.
//

import SwiftUI

struct SwiftUIStackView: View {
    var body: some View {
        VStack {
            HStack{
                ZStack{
                    Text("Hello")
                    Text("World!")
                    Text("HI")
                }
            }
        }
    }
}

struct SwiftUIStackView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIStackView()
    }
}
