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
            Color.cyan.edgesIgnoringSafeArea(.all)
            contentLayer
        }
    }
    var contentLayer: some View {
        HStack {
            MYItem(title: "Apple", count: 2, color: .red)
            MYItem(title: "Oranges", count: 3, color: .orange)
            MYItem(title: "Bananas", count: 3, color: .yellow)
        }
    }
}


struct MYItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
            Text(title)
        }
        .font(.title2)
        .foregroundColor(Color.white)
        .padding()
        .background(color)
        .cornerRadius(15)
        .shadow(radius: 15)
    }
}

struct SwiftUIExtractSubviews_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIExtractSubviews()
    }
}
