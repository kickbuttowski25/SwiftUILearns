//
//  SwiftUIViewBackgroundAndOverlay.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 26/11/23.
//

import SwiftUI

struct SwiftUIViewBackgroundAndOverlay: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.largeTitle)
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .black, radius: 25)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 40, height: 40)
                            .overlay(
                            Text("5")
                                .foregroundColor(.white)
                                .font(.title3)
                            )
                        , alignment: .bottomTrailing
                    
                    )
            )
        
        //MARK: - RECTANGLE
        //       Rectangle()
        ////            .fill(Color.blue)
        //            .frame(width: 100, height: 100)
        //            .overlay(
        //                Rectangle()
        //                    .fill(Color.red)
        //                    .frame(width: 50, height: 50)
        //                , alignment: .topLeading
        //            )
        //            .background(
        //                Rectangle()
        //                    .fill(Color.green)
        //                    .frame(width: 150, height: 150)
        //                , alignment: .bottomTrailing
        //
        //            )
        
        //MARK: - CIRCLE
        //        Circle()
        //            .fill(Color.red)
        //            .frame(width: 100, height: 100, alignment: .center)
        //            .overlay(
        //            Text("1")
        //                .font(.largeTitle)
        //                .foregroundColor(.white)
        //            )
        //
        //            .background(
        //                Circle()
        //                    .fill(Color.blue)
        //                    .frame(width: 120, height: 120, alignment: .center)
        //
        //
        //            )
        
        // MARK: - BACKGROUND
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .background(
        //                //Color.red
        //                //LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing)
        //                Circle()
        //                    .fill(LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing))
        //                    .frame(width: 100, height: 100)
        //            )
        //            .background(
        //                Circle()
        //                    .fill(LinearGradient(colors: [Color.blue, Color.red], startPoint: .leading, endPoint: .trailing))
        //                    .frame(width: 120, height: 120)
        //            )
        //
    }
}

struct SwiftUIViewBackgroundAndOverlay_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewBackgroundAndOverlay()
    }
}
