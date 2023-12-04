//
//  SwiftUIExtractSubviews.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 04/12/23.
//

import SwiftUI

struct SwiftUIExtractSubviews: View {
    var body: some View {
        ZStack {
            MYItem()
        }
    }
}

struct SwiftUIExtractSubviews_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIExtractSubviews()
    }
}

struct MYItem: View {
    var body: some View {
        VStack{
            Text("1")
            Text("Apples")
        }
        .font(.largeTitle)
        .foregroundColor(Color.white)
        .padding()
        .background(Color.red)
        .cornerRadius(15)
        .shadow(radius: 15)
    }
}
