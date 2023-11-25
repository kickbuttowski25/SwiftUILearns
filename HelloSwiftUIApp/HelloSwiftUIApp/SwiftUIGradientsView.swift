//
//  SwiftUIGradientsView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 25/11/23.
//


import SwiftUI

struct SwiftUIGradientsView: View {
    var body: some View {
       RoundedRectangle(cornerRadius: 20)
            .fill(
                AngularGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1)), Color(#colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1))]), center: .topLeading, angle: .degrees(45 + 180))
                
               // RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .leading, startRadius: 10, endRadius: 500)
               // LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing)
                // Color.red
            )
           // .shadow(color: Color.blue, radius: 10)
            .frame(width: 300, height: 200, alignment: .center)
    }
}

struct SwiftUIGradientsView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIGradientsView()
    }
}
