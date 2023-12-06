//
//  SwiftUIConditionalView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 06/12/23.
//

import SwiftUI

struct SwiftUIConditionalView: View {
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = true
    
    var body: some View {
        
        VStack(spacing: 20) {
            if isLoading {
                ProgressView()
                    .frame(width: 100, height: 100)
                    .progressViewStyle(.circular)
                    .fixedSize()
            }
//            Button("Circle Button \(showCircle.description)") {
//                showCircle.toggle()
//            }
//
//            Button("Rectangle Button \(showRectangle.description)") {
//                showRectangle.toggle()
//            }
//
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            }
//            if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
//            if !showCircle && !showRectangle {
//                RoundedRectangle(cornerRadius: 15)
//                    .frame(width: 200, height: 100)
//            }
            Spacer()
        }
    }
}

struct SwiftUIConditionalView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIConditionalView()
    }
}
