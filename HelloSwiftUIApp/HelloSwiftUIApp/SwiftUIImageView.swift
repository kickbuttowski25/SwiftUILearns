//
//  SwiftUIImageView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 25/11/23.
//

import SwiftUI

struct SwiftUIImageView: View {
    var body: some View {
        Image(systemName: "paperplane.fill")
            .font(.largeTitle)
            //.resizable()
            .font(.largeTitle)
            //.scaledToFill()
    }
}

struct SwiftUIImageView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIImageView()
    }
}
