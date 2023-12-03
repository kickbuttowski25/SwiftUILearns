//
//  SwiftUIExtractFunctionView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 03/12/23.
//

import SwiftUI

struct SwiftUIExtractFunctionView: View {
   @State var background: Color = .red
    var body: some View {
        ZStack {
            background.edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Title")
                    .font(.largeTitle)
                
                Button {
                    self.background = .yellow
                } label: {
                    Text("Press Me")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(Color.black)
                        .cornerRadius(10)
                }

                
            }
        }
    }
}

struct SwiftUIExtractFunctionView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIExtractFunctionView()
    }
}
