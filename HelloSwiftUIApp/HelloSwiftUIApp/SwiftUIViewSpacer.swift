//
//  SwiftUIViewSpacer.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 27/11/23.
//

import SwiftUI

struct SwiftUIViewSpacer: View {
    var body: some View {
        HStack(spacing: 0) {
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.yellow)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.yellow)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.yellow)
            
            Rectangle()
                .fill(Color.cyan)
                .frame(width: 50, height: 50)
            
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.yellow)
        }
        .background(Color.orange)
       // .padding(.horizontal, 200)
        .background(Color.blue)
    }
}

struct SwiftUIViewSpacer_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIViewSpacer()
    }
}
