//
//  SwiftUIColorsView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 24/11/23.
//

import SwiftUI

/// Checking out Colors in SwiftUI
struct SwiftUIColorsView: View {
    var color = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)
    var body: some View {
       RoundedRectangle(cornerRadius: 25)
            .fill(
               // Color.primary
               // Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))
                //Color(uiColor: .secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
           // .shadow(radius: 10)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: 20, y: -12)
    }
}

struct SwiftUIColorsView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIColorsView()
    }
}
