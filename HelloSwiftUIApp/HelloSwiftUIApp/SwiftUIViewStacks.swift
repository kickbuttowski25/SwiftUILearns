//
//  SwiftUIViewStacks.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 26/11/23.
//

import SwiftUI

struct SwiftUIViewStacks: View {
    //VStacks: Vertical
    //HStacks: Horizontal
    //ZStacks: ZIndex(Back to frot)
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.yellow)
                .frame(width: 350, height: 350)
            Circle()
                .fill(Color.clear)
                .frame(width: 200, height: 200)
                .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 50, height: 50)
                        , alignment: .topLeading
                )
                .overlay(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 50, height: 50)
                        , alignment: .topTrailing
                )
                .overlay(
                        Ellipse()
                            .fill(Color.red)
                            .frame(width: 100, height: 50)
                        , alignment: .bottom
                )
            Rectangle()
                .fill(Color.red)
                .frame(width: 20, height: 45)
        }
        
        
        
//        ZStack {
//            Circle()
//                .fill(Color.red)
//                .frame(width: 150, height: 150)
//
//            Circle()
//                .fill(Color.green)
//                .frame(width: 120, height: 120)
//
//
//            Circle()
//                .fill(Color.blue)
//                .frame(width: 100, height: 100)
//
//                .overlay(
//                    Text("Hi")
//                        .foregroundColor(.white)
//                        .font(.largeTitle)
//
//                )
//        }
        
//        HStack {
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//
//        }
        //        VStackLayout {
        //            Circle()
        //                .fill(Color.orange)
        //                .frame(width: 40, height: 40)
        //
        //        }
        //        VStack(alignment: .trailing, spacing: nil, content: {
        //            Rectangle()
        //                .fill(.green)
        //                .frame(width: 100, height: 100)
        //
        //            Rectangle()
        //                .fill(.blue)
        //                .frame(width: 100, height: 100)
        //
        //            Rectangle()
        //                .fill(.red)
        //                .frame(width: 100, height: 100)
        //        })
        
    }
}

struct SwiftUIViewStacks_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewStacks()
    }
}
