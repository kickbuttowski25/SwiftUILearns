//
//  SwiftSystemIconsView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 25/11/23.
//

import SwiftUI

struct SwiftSystemIconsView: View {
    var body: some View {
       Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            // .font(.system(size: 200))
            .font(.largeTitle)
           // .resizable()
            //.aspectRatio(contentMode: .fill)
            //.scaledToFit()
           // .scaledToFill()
           // .foregroundColor(Color.red)
           // .frame(width: 200, height: 200)
           // .clipped()
    }
}

struct SwiftSystemIconsView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftSystemIconsView()
    }
}
