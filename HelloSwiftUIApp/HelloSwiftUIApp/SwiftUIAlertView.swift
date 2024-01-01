//
//  SwiftUIAlertView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 30/12/23.
//

import SwiftUI

struct SwiftUIAlertView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Hello")
                Text("World!")
                Image(systemName: "heart.fill")
            }
        }
    }
}

struct SwiftUIAlertView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIAlertView()
    }
}
