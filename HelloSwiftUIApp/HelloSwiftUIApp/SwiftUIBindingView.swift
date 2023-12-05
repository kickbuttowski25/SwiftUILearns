//
//  SwiftUIBindingView.swift
//  HelloSwiftUIApp
//
//  Created by Vishal Singh Bisht on 05/12/23.
//

import SwiftUI

struct SwiftUIBindingView: View {
    @State var backgroundColor: Color = .green
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                ButtonView(backgroundColor: $backgroundColor)
            }
        }
    }
}

struct ButtonView: View {
    @Binding var backgroundColor: Color
    
    var body: some View {
        Button {
            self.backgroundColor = .yellow
        } label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(Color.blue)
                .cornerRadius(10)
        }
    }
}

struct SwiftUIBindingView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIBindingView()
    }
}
