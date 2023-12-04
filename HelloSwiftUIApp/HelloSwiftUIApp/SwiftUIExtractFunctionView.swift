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
            contentLayer
       
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            
            Button {
               buttonPressed()
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
    
    func buttonPressed() {
        self.background = .yellow
    }
}

struct SwiftUIExtractFunctionView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIExtractFunctionView()
    }
}
extension SwiftUIExtractFunctionView {
    func pressed(){
        
    }
}
