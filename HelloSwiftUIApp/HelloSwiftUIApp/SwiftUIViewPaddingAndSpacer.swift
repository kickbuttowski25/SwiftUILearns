//
//  SwiftUIViewPaddingAndSpacer.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 27/11/23.
//

import SwiftUI

struct SwiftUIViewPaddingAndSpacer: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("Hello, Vishal")
                .font(.largeTitle)
                .foregroundColor(Color.red)
                .padding(.bottom, 20)
            
            Text("Hi i m vishal, here i m describing the padding on stacks and views.")
                .font(.title2)
                .foregroundColor(Color.green)
        }
        .padding()
        .padding(.vertical, 20)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0.0, y:  10.0)
        
        )
        
        
//        VStack {
//            Text("Hi world, hello")
//                .background(Color.yellow)
//               // .padding()
//                .padding(.all, 100)
//                //.frame(width: 100, height: 100)
//            .background(Color.red)
//        }
//        //.background(Color.blue)
//        .padding(.leading, 20)
//        .background(Color.brown)
//        .padding(.trailing, 30)
//        .background(Color.cyan)
    }

}

struct SwiftUIViewPaddingAndSpacer_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewPaddingAndSpacer()
    }
}
