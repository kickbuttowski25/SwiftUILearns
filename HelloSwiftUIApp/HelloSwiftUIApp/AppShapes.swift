//
//  AppShapes.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 24/11/23.
//

import SwiftUI

struct AppShapes: View {
    var body: some View {
        VStack {
           // Circle()
           // Ellipse()
           // Capsule(style: .circular)
           // Rectangle()
            RoundedRectangle(cornerRadius: 10)
              //  .trim(from: 0.3, to: 1.0)
                .fill(Color.red)
            .frame(width: 300, height: 400)
              //  .strokeBorder(Color.red, style: StrokeStyle(lineWidth: 20, lineCap: .round, dash: [50]))
                //.stroke(Color.cyan, lineWidth: 20.0)
//                .stroke(Color.purple, lineWidth: 50)
//                .foregroundColor(Color.cyan)

             
        }
        .padding()
        .foregroundColor(Color.red)
    }
}

struct AppShapes_Previews: PreviewProvider {
    static var previews: some View {
        AppShapes()
    }
}
